// Fiji Macro: Splitting Multi-Channel Images for Mask Creation
//
// Overview:
// - This macro splits a multi-channel image into separate images to create masks.
// - The mask acts as a reference for tracking objects in the raw channel.
//
// Workflow:
// 1. Select any channel to use as mask.
// 2. Process and merge all channels in their original positions.
//
// Special Features:
// - Works with any number of channels, not just 2-channel images.
// - For z-stack images, the macro performs a sum-projection before splitting the channels.
// - Converts the mask image to match the bit-depth of the original image.
//
// Output:
// - Saves the processed images in a chosen folder.
// - Adds "_mask" to the original image name for easy identification.

close("*");

// Create a unified dialog for all inputs
Dialog.create("Mask Generator Options");
Dialog.addMessage("Select the input image and processing options:");
Dialog.addFile("Input Image:", "");
Dialog.addDirectory("Output Directory:", getDirectory("home"));
Dialog.addMessage("Processing Parameters:");
Dialog.addNumber("Mask Channel (1-N):", 1);
Dialog.addCheckbox("Create sum projection for Z-stack (if applicable):", true);
Dialog.show();

// Get user inputs from the dialog
inputPath = Dialog.getString();
outputDir = Dialog.getString();
maskChannel = Dialog.getNumber();
doProjection = Dialog.getCheckbox();

// Open the selected image
open(inputPath);
originalImage = getTitle();

// Get image details
getDimensions(width, height, channels, slices, frames);
getPixelSize(unit, pixelWidth, pixelHeight);


// Handle z-stack images (if there are multiple slices)
if (slices > 1 && doProjection) {
    // Create sum projection
    run("Z Project...", "projection=[Sum Slices] all");  // Added 'all' to preserve time series
    projectedImage = getTitle();
    selectWindow(originalImage);
    close();
    selectWindow(projectedImage);
    rename(originalImage);
    
    // Update dimensions after projection
    getDimensions(width, height, channels, slices, frames);
	BitDepth = bitDepth();  // Note: Uppercase 'B' in bitDepth



}

// Split channels
run("Split Channels");

// Store all channel window names
channelWindows = newArray(channels);
for (i = 1; i <= channels; i++) {
    channelWindows[i-1] = "C" + i + "-" + originalImage;
}

// Process mask channel to match bit depth
maskWindow = channelWindows[maskChannel-1];
selectWindow(maskWindow);
run("Convert to Mask", "method=Otsu background=Dark calculate black");
run("Fill Holes", "stack");
run(BitDepth + "-bit");  // Using lowercase 'b' in bitDepth

// Save mask channel
saveAs("Tiff", outputDir + File.separator + originalImage + "_mask.tif");
maskSaved = getTitle();

// Create merge command string with all channels in their original positions
mergeCommand = "c" + maskChannel + "=[" + maskSaved + "] ";
for (i = 1; i <= channels; i++) {
    if (i != maskChannel) {
        selectWindow(channelWindows[i-1]);
        saveAs("Tiff", outputDir + File.separator + originalImage + "_ch" + i + ".tif");
        savedName = getTitle();
        mergeCommand = mergeCommand + "c" + i + "=[" + savedName + "] ";
    }
}
mergeCommand = mergeCommand + "create";

// Merge channels for visualization
run("Merge Channels...", mergeCommand);
saveAs("Tiff", outputDir + File.separator + originalImage + "_merged.tif");

// Show completion message
showMessage("Processing Complete", 
    "Images have been processed and saved to:\n" + 
    outputDir + "\n\n" +
    "Mask channel: " + originalImage + "_mask.tif\n" +
    "Merged image: " + originalImage + "_merged.tif");
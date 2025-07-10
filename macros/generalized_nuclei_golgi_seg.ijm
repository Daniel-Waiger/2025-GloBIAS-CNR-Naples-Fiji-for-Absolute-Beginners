/*
 * NUCLEI AND GOLGI SEGMENTATION MACRO
 * This macro segments nuclei (DAPI) and Golgi apparatus from fluorescence microscopy images.
 * It generates binary masks, performs particle analysis, and saves ROIs and measurements.
 */

// Close any previously open images to start fresh
run("Close All");

// Variables - these store the names we'll use throughout the macro
run("Open...");  // Open file dialog for user to select input image
outputDir = getDirectory("Choose output directory");  // Let user choose where to save results
originalImageName = getTitle();  // Get the name of the opened image
dapiMaskName = "DAPI_mask";      // Name for the nuclei mask image
golgiMaskName = "golgi_mask";    // Name for the Golgi mask image

// Set up measurement parameters - what properties to measure for each particle
// This includes area, mean intensity, standard deviation, etc.
run("Set Measurements...", "area mean standard modal min centroid integrated display redirect=None decimal=3");


//=== DAPI CHANNEL PROCESSING (NUCLEI) ===
// Select the original image to work with
selectImage(originalImageName);

// Create a copy of the image for DAPI processing
run("Duplicate...", "title=" + dapiMaskName);

// Enhance image contrast to make features more visible
//run("Brightness/Contrast...");  // Manual adjustment option (commented out)
run("Enhance Contrast", "saturated=0.35");  // Automatic contrast enhancement
run("Apply LUT");  // Apply the contrast changes permanently, to strech the dynamic range

// Convert image to binary (black and white) mask
setOption("BlackBackground", true);  // Set black as background color
run("Convert to Mask");  // Convert to binary image (0s and 255s)

// Clean up the binary mask
run("Fill Holes");  // Fill any holes inside particles
run("Median...", "radius=4");  // Smooth edges and remove noise

// Analyze particles (nuclei) and create measurements
// size=100-Infinity means only count particles larger than 100 pixels
run("Analyze Particles...", "size=100-Infinity display clear summarize add");

// Save the results
roiManager("Save", outputDir + "DAPI_RoiSet.zip");  // Save ROI outlines
selectWindow("Results");  // Select the measurements table
saveAs("Results", outputDir + "DAPI_Results.csv");  // Save detailed measurements
selectWindow("Summary");  // Select the summary table
saveAs("Results", outputDir + "DAPI_Summary.csv");  // Save summary statistics
selectImage(dapiMaskName);  // Select the binary mask image
saveAs("Tiff", outputDir + "DAPI_mask.tif");  // Save the mask as TIFF file

//=== GOLGI CHANNEL PROCESSING ===
// Go back to the original image for Golgi processing
selectImage(originalImageName);

// Create a copy for Golgi processing
run("Duplicate...", "title=" + golgiMaskName);

// Apply automatic thresholding to separate Golgi from background
setAutoThreshold("Otsu dark no-reset");  // Otsu method works well for Golgi

// Enhance contrast to improve visibility
run("Enhance Contrast", "saturated=0.35");
run("Apply LUT");  // Apply contrast changes

// Set manual threshold values (fine-tune if needed)
setThreshold(129, 255, "raw");  // Keep pixels with intensity 129-255

// Convert to binary mask
run("Convert to Mask");

// Analyze Golgi particles
// size=10-Infinity means count particles larger than 10 pixels (smaller than nuclei)
run("Analyze Particles...", "size=10-Infinity display clear summarize add");

// Save Golgi analysis results
roiManager("Save", outputDir + "Golgi_RoiSet.zip");  // Save ROI outlines
selectWindow("Results");  // Select measurements table
saveAs("Results", outputDir + "Golgi_Results.csv");  // Save detailed measurements
selectWindow("Summary");  // Select summary table
saveAs("Results", outputDir + "Golgi_Summary.csv");  // Save summary statistics
selectImage(golgiMaskName);  // Select the Golgi mask
saveAs("Tiff", outputDir + "Golgi_mask.tif");  // Save mask as TIFF file

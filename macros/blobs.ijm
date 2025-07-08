// Simple blob segmentation macro for Fiji
// This macro performs basic preprocessing and blob detection

// Get the active image or show an error if no image is open
if (nImages == 0) {
    showMessage("Error", "Please open an image first!");
    exit();

}

// Store the original image name
originalTitle = getTitle();

// Make a copy to work on
run("Duplicate...", "title=Segmentation");

// Convert to 8-bit if not already
if (bitDepth() != 8) {
    run("8-bit");
}

// Pre-processing steps
run("Gaussian Blur...", "sigma=2");
setAutoThreshold("Otsu dark");
setOption("BlackBackground", true);
run("Convert to Mask");

// Analyze particles
run("Set Measurements...", "area mean standard centroid perimeter shape feret's redirect=None decimal=3");
run("Analyze Particles...", "size=100-Infinity circularity=0.00-1.00 show=Overlay display clear summarize add");

// Overlay results on original image
selectWindow(originalTitle);
run("From ROI Manager");

// Clean up
selectWindow("Segmentation");
close();
// Open image with synthetic blobs
open("samples:ImageJ/blobs.tif");

// Draw rectangle ROI and add to manager
makeRectangle(30, 40, 40, 40);
roiManager("Add");

// Draw oval ROI and add to manager
makeOval(100, 100, 35, 35);
roiManager("Add");

// Set what to measure
run("Set Measurements...", "area mean perimeter redirect=None decimal=3");

// Measure all ROIs
roiManager("Measure");

// Save results as CSV
saveAs("Results", "/your/path/blobs_results.csv");

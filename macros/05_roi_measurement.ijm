run("Blobs (25K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Blobs_Copy");
makeRectangle(30, 40, 40, 40);
roiManager("Add");
makeOval(100, 100, 35, 35);
roiManager("Add");
run("Set Measurements...", "area mean perimeter redirect=None decimal=3");
roiManager("Measure");
saveAs("Results", "blobs_results.csv");

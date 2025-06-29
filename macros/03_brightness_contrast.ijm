run("Gel (105K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Gel_Copy");
run("Enhance Contrast", "saturated=0.35");
setMinAndMax(80, 200);
run("Apply LUT");
saveAs("Tiff", "gel_adjusted.tif");

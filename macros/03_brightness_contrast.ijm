run("Gel (105K)");
run("Enhance Contrast", "saturated=0.35");
setMinAndMax(80, 200);
run("Apply LUT");
saveAs("Tiff", "gel_adjusted.tif");

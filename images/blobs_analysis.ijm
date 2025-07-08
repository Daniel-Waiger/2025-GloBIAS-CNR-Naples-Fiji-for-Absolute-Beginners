run("Close All");
run("Set Measurements...", "area mean modal min centroid center perimeter bounding fit feret's display redirect=None decimal=3");

open("G:/My Drive/FACSI/Image Analysis/github-desktop-repos/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/images/blobs.tif");
run("Duplicate...", "title=blobs-copy.tif");
setAutoThreshold("Default no-reset");
//run("Threshold...");
setAutoThreshold("Otsu no-reset");
//setThreshold(126, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "display exclude clear summarize overlay add");
saveAs("Results", "G:/My Drive/FACSI/Image Analysis/github-desktop-repos/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/images/blobs.csv");




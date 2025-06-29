run("Fluorescent Cells (400K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Fluorescent_Cells_Copy");
run("Split Channels");
selectWindow("Fluorescent_Cells_Copy (green)");
run("8-bit");
setAutoThreshold("Otsu");
run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=50-Infinity circularity=0.20-1.00 display add");

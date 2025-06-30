run("Fluorescent Cells (400K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Fluorescent_Cells_Copy");
run("Split Channels");
selectWindow("Fluorescent_Cells_Copy (green)");
run("8-bit");
setAutoThreshold("Otsu");
run("Convert to Mask");
run("Create Selection");
run("Duplicate...", "title=Mask");
imageCalculator("AND create", "Fluorescent_Cells_Copy (green)", "Mask");
selectWindow("Result of Fluorescent_Cells_Copy (green)");
run("Analyze Particles...", "size=50-Infinity display add");

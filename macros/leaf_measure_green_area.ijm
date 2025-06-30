/* 
# Step 1: Opening and Preparing Image
*/
close("*");
run("Leaf");

/*
# Step 2: Setting Scale and Measurements
*/
makeLine(83, 55, 142, 55);
run("Set Scale...", "distance=59 known=10 unit=mm");
run("Set Measurements...", "area display redirect=None decimal=3");

// Step 3: Image Processing - Cropping and Colour Deconvolution
makeRectangle(6, 89, 496, 342);
run("Duplicate...", "title=leaf-crop.jpg");
run("Colour Deconvolution", "vectors=RGB hide");
run("Tile");

/*
#  Step 4: Image Processing and analysis - Thresholding and Analyzing Particles (Green Area)
*/
selectImage("leaf-crop.jpg-(Colour_2)");
setAutoThreshold("Mean no-reset");
selectImage("leaf-crop.jpg-(Colour_2)");
run("Duplicate...", "title=leaf-green_area.jpg");
setAutoThreshold("Mean no-reset");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "size=3-Infinity display summarize overlay add composite");

/*
# Step 5: Image Processing and analysis - Thresholding, Keep Largest Region, and Analyzing Particles (Total Area)
*/
selectImage("leaf-crop.jpg-(Colour_2)");
run("Duplicate...", "title=leaf-total_area.jpg");
setAutoThreshold("Percentile no-reset");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Keep Largest Region");
selectImage("leaf-total_area.jpg");
close();
run("Analyze Particles...", "size=3-Infinity display summarize overlay add composite");

/*
# Step 6: Image Difference Calculation and Tile
*/
imageCalculator("Difference create", "leaf-green_area.jpg","leaf-total_area-largest");
selectImage("Result of leaf-green_area.jpg");
run("Invert LUT");
run("Tile");

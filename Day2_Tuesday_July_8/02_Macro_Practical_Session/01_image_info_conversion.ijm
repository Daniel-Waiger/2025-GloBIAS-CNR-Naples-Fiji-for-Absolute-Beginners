run("M51 Galaxy (177K)");
run("Show Info...");

// Create first duplicate for scaled conversion
run("Duplicate...", "title=M51_Scaled_Copy");
setOption("ScaleConversions", true);
run("8-bit");
saveAs("Tiff", "M51_scaled.tif");

// Select original image and create second duplicate for unscaled conversion
selectWindow("m51.jpg");
run("Duplicate...", "title=M51_Unscaled_Copy");
setOption("ScaleConversions", false);
run("8-bit");
saveAs("Tiff", "M51_unscaled.tif");

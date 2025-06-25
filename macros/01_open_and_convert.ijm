// Open the sample image
open("samples:ImageJ/M51.tif");

// Show metadata about the image
run("Show Info...");

// Duplicate the image for safe editing
run("Duplicate...", "title=M51_Copy");

// Enable automatic scaling when converting to 8-bit
setOption("ScaleConversions", true);
run("8-bit");
saveAs("Tiff", "/your/path/M51_scaled.tif");

// Revert to original image
run("Revert");

// Disable scaling and convert again
setOption("ScaleConversions", false);
run("8-bit");
saveAs("Tiff", "/your/path/M51_unscaled.tif");

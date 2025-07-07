open("../images/m51.tif");
print("Opening M51 galaxy image...");
wait(1500);
run("Show Info...");
print("Showing image information...");
wait(1500);

// Create first duplicate for scaled conversion
run("Duplicate...", "title=M51_Scaled_Copy");
print("Creating first duplicate for scaled conversion...");
wait(1500);
setOption("ScaleConversions", true);
print("Setting scale conversions to true...");
wait(1500);
run("8-bit");
print("Converting to 8-bit with scaling...");
wait(1500);
saveAs("Tiff", "M51_scaled.tif");
print("Saving scaled version as M51_scaled.tif...");
wait(1500);

// Select original image and create second duplicate for unscaled conversion
selectWindow("m51.tif");
print("Selecting original image...");
wait(1500);
run("Duplicate...", "title=M51_Unscaled_Copy");
print("Creating second duplicate for unscaled conversion...");
wait(1500);
setOption("ScaleConversions", false);
print("Setting scale conversions to false...");
wait(1500);
run("8-bit");
print("Converting to 8-bit without scaling...");
wait(1500);
saveAs("Tiff", "M51_unscaled.tif");
print("Saving unscaled version as M51_unscaled.tif...");
wait(1500);
run("Tile");
print("Tiling windows for comparison...");
wait(1500);
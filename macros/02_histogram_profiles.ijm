open("../images/m51.tif");
print("Opening M51 galaxy image...");
wait(1500);

// Create first duplicate for scaled conversion
run("Duplicate...", "title=M51_Scaled_Copy");
print("Creating first duplicate for scaled conversion...");
wait(1500);
makeLine(7, 255, 308, 254);
print("Creating line selection for profile...");
wait(1500);
run("Plot Profile");
print("Plotting profile of original image...");
wait(1500);

setOption("ScaleConversions", true);
print("Setting scale conversions to true...");
wait(1500);
run("8-bit");
print("Converting to 8-bit with scaling...");
wait(1500);
makeLine(7, 255, 308, 254);
run("Plot Profile");
print("Plotting profile of scaled 8-bit image...");
wait(1500);

// Select original image and create second duplicate for unscaled conversion
selectWindow("m51.tif");
print("Selecting original image...");
wait(1500);
run("Duplicate...", "title=M51_Unscaled_Copy");
print("Creating second duplicate for unscaled conversion...");
wait(1500);
makeLine(7, 255, 308, 254);
print("Creating same line selection for unscaled image...");
wait(1500);
setOption("ScaleConversions", false);
print("Setting scale conversions to false...");
wait(1500);
run("8-bit");
print("Converting to 8-bit without scaling...");
makeLine(7, 255, 308, 254);
wait(1500);
run("Plot Profile");
print("Plotting profile of unscaled 8-bit image...");
wait(1500);

//run("Tile");
//print("Tiling windows for comparison...");
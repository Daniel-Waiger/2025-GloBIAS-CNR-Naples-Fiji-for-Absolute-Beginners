open("../images/gel_inv.tif");
print("Opening gel image...");
wait(1500);

// Create duplicate for working on copy
run("Duplicate...", "title=Gel_Copy");
print("Creating duplicate for working on copy...");
wait(1500);
run("Enhance Contrast", "saturated=0.35");
print("Enhancing contrast with 0.35% saturation...");
wait(1500);
setMinAndMax(80, 200);
print("Setting min and max display values...");
wait(1500);
run("Apply LUT");
print("Applying LUT changes...");
wait(1500);
saveAs("Tiff", "gel_adjusted.tif");
print("Saving adjusted gel image...");
wait(1500);
run("Tile");
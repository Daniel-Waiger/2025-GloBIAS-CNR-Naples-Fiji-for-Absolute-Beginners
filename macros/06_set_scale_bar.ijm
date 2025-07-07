open("../images/cells_ActinDNA.tif");
print("Opening cells image...");
wait(1500);

// Create duplicate for working on copy
run("Duplicate...", "title=Cell_Colony_Copy");
print("Creating duplicate for working on copy...");
wait(1500);
makeLine(25, 230, 125, 230);
print("Creating line for scale measurement...");
wait(1500);
run("Set Scale...", "distance=100 known=100 unit=um");
print("Setting scale to 100 pixels = 100 micrometers...");
wait(1500);
run("Add Scale Bar", "width=100 height=12 font=18 color=White location=[Lower Right] bold overlay");
print("Adding scale bar to image...");
wait(1500);
run("Flatten");
print("Flattening image with scale bar...");
wait(1500);
saveAs("Tiff", "Cell_Colony_scaled.tif");
print("Saving scaled image...");
wait(1500);
run("Tile");
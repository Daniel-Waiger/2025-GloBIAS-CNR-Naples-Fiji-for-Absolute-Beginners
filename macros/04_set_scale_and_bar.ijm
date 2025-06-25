// Open cell colony image with embedded scale bar
open("samples:ImageJ/Cell_Colony.tif");

// Draw a line over the visible scale bar (100 μm)
makeLine(25, 230, 125, 230);

// Set the scale for all measurements
run("Set Scale...", "distance=100 known=100 unit=um");

// Add a visible scale bar overlay
run("Add Scale Bar", "width=100 height=12 font=18 color=White location=[Lower Right] bold overlay");

// Flatten the image (burn the overlay into the pixels)
run("Flatten");

// Save the output
saveAs("Tiff", "/your/path/Cell_Colony_scaled.tif");

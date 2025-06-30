run("Cell Colony (31K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Cell_Colony_Copy");
makeLine(25, 230, 125, 230);
run("Set Scale...", "distance=100 known=100 unit=um");
run("Add Scale Bar", "width=100 height=12 font=18 color=White location=[Lower Right] bold overlay");
run("Flatten");
saveAs("Tiff", "Cell_Colony_scaled.tif");

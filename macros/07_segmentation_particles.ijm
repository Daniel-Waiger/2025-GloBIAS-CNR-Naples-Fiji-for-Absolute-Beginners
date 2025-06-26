run("Fluorescent Cells (400K)");
run("Split Channels");
selectWindow("RGB_Cell (green)");
run("8-bit");
setAutoThreshold("Otsu");
run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=50-Infinity circularity=0.20-1.00 display add");

run("M51 Galaxy (177K)");

// Create duplicate for working on copy
run("Duplicate...", "title=M51_Copy");
makeLine(90, 60, 160, 60);
run("Plot Profile");
setOption("ScaleConversions", true);
run("8-bit");
run("Plot Profile");

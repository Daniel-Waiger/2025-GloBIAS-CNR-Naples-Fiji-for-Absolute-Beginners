run("Fluorescent Cells (400K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Fluorescent_Cells_Copy");
run("Split Channels");
run("Merge Channels...", "c1=red c2=green c3=blue create");
run("Channels Tool...");
run("Add Calibration Bar", "location=[Lower Right]");

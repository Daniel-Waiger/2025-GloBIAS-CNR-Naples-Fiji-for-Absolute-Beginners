run("Fluorescent Cells (400K)");
run("Split Channels");
run("Merge Channels...", "c1=red c2=green c3=blue create");
run("Channels Tool...");
run("Add Calibration Bar", "location=[Lower Right]");

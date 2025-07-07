open("../images/FluorescentCells.tif");
print("Opening fluorescent cells image...");
wait(1500);

// Create duplicate for working on copy
run("Duplicate...", "title=Fluorescent_Cells_Copy");
print("Creating duplicate for working on copy...");
wait(1500);
run("Split Channels");
print("Splitting channels...");
wait(1500);
run("Merge Channels...", "c1=red c2=green c3=blue create");
print("Merging channels with new color assignments...");
wait(1500);
run("Channels Tool...");
print("Opening channels tool...");
wait(1500);
run("Add Calibration Bar", "location=[Lower Right]");
print("Adding calibration bar...");
wait(1500);
run("Tile");
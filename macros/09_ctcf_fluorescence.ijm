open("../images/leaf.jpg");

// Create duplicate for working on copy
run("Duplicate...", "title=Blobs_Copy");
print("Creating duplicate for working on copy...");
wait(1500);
makeOval(100, 100, 40, 40);
print("Creating oval ROI for measurement...");
wait(1500);
run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
print("Setting measurements to area, mean, min, and integrated density...");
wait(1500);
run("Measure");
print("Measuring oval ROI...");
wait(1500);
makeRectangle(10, 10, 30, 30);
print("Creating rectangular ROI for background measurement...");
wait(1500);
run("Measure");
print("Measuring rectangular ROI...");
wait(1500);
run("Tile");
print("Tiling windows for comparison...");
wait(1500);
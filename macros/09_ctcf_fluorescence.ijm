run("Blobs (25K)");

// Create duplicate for working on copy
run("Duplicate...", "title=Blobs_Copy");
makeOval(100, 100, 40, 40);
run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
run("Measure");
makeRectangle(10, 10, 30, 30);
run("Measure");

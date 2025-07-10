run("Set Measurements...", "area mean standard modal min centroid integrated display redirect=None decimal=3");
run("Select path", "inputfile=[C:\\Users\\dwaig\\Downloads\\nuclei\\merge ctr 3_Simple Segmentation.tiff]");



//DAPI
selectImage("merge ctr 3_Simple Segmentation.tiff");
run("Duplicate...", "title=DAPI_mask");
//run("Brightness/Contrast...");
run("Enhance Contrast", "saturated=0.35");
run("Apply LUT");
setOption("BlackBackground", true);
run("Convert to Mask");run("Fill Holes");
run("Median...", "radius=4");run("Analyze Particles...", "size=100-Infinity display clear summarize add");
roiManager("Save", "C:/Users/dwaig/Downloads/nuclei/DAPI_RoiSet.zip");
selectWindow("Results")
saveAs("Results", "C:/Users/dwaig/Downloads/nuclei/DAPI_Results.csv");
selectWindow("Suammary")
saveAs("Results", "C:/Users/dwaig/Downloads/nuclei/DAPI_Summary.csv");
selectImage("copy");
saveAs("Tiff", "C:/Users/dwaig/Downloads/nuclei/DAPI_mask.tif");


//Golgi
selectImage("merge ctr 3_Simple Segmentation.tiff");setAutoThreshold("Otsu dark no-reset");
run("Duplicate...", "title=golgi_mask");
run("Enhance Contrast", "saturated=0.35");
run("Apply LUT");
setThreshold(129, 255, "raw");
run("Convert to Mask");

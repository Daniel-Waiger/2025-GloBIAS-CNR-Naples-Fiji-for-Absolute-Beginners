// Open the image
open("samples:ImageJ/gel_inv.tif");

// Auto-enhance contrast (non-destructive)
run("Enhance Contrast", "saturated=0.35");

// Set manual min/max brightness (destructive when Apply is used)
setMinAndMax(80, 200);

// Apply contrast change permanently
run("Apply LUT");

// Save result
saveAs("Tiff", "/your/path/gel_inv_adjusted.tif");

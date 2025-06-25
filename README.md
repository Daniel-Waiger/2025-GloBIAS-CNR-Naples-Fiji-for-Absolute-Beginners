# 🧬 Fiji for Beginners


<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-CC--BY--SA%204.0-brightgreen"></a>
</p>


# Day 1 – Fiji Basics & Introduction  
**Fluorescence Image Analysis Course – GloBIAS & CNR Naples 2025**  
Trainer: Daniel Waiger

---

## 📅 Overview  
This module introduces the Fiji (ImageJ) platform through hands-on activities with built-in sample images. It includes guided practice, reproducible macros, and example workflows covering:

- Image inspection and bit-depth conversion  
- Contrast and LUT handling  
- ROI drawing and measurements  
- Calibration and scale bars  
- Saving results and overlays  
- BONUS: Basic macro automation

---

## 📁 Folder Structure

```markdown
Day1_Fiji_Basics/
│
├── tutorial_macros/
│   ├── 01_open_and_convert.ijm
│   ├── 02_brightness_contrast.ijm
│   ├── 03_roi_measurement.ijm
│   ├── 04_set_scale_and_bar.ijm
│   └── 05_batch_open_and_save.ijm
│
└── README.md ← you are here
```

---


### `01_open_and_convert.ijm`  
📌 Opens the M51 sample image, displays metadata, and converts it to 8-bit with and without scaling.

**Fiji Sample Image:**  
`File → Open Samples → M51`

```javascript
// Open the sample image
open("samples:ImageJ/M51.tif");

// Show metadata about the image
run("Show Info...");

// Duplicate the image for safe editing
run("Duplicate...", "title=M51_Copy");

// Enable automatic scaling when converting to 8-bit
setOption("ScaleConversions", true);
run("8-bit");
saveAs("Tiff", "/your/path/M51_scaled.tif");

// Revert to original image
run("Revert");

// Disable scaling and convert again
setOption("ScaleConversions", false);
run("8-bit");
saveAs("Tiff", "/your/path/M51_unscaled.tif");
```

---

### `02_brightness_contrast.ijm`  
📌 Loads `gel_inv.tif`, adjusts brightness/contrast manually and applies the LUT.

**Fiji Sample Image:**  
`File → Open Samples → gel_inv`

```javascript
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
```

---

### `03_roi_measurement.ijm`  
📌 Uses the `blobs` image to add ROIs, set measurements, and extract area/perimeter data.

**Fiji Sample Image:**  
`File → Open Samples → blobs`

```javascript
// Open image with synthetic blobs
open("samples:ImageJ/blobs.tif");

// Draw rectangle ROI and add to manager
makeRectangle(30, 40, 40, 40);
roiManager("Add");

// Draw oval ROI and add to manager
makeOval(100, 100, 35, 35);
roiManager("Add");

// Set what to measure
run("Set Measurements...", "area mean perimeter redirect=None decimal=3");

// Measure all ROIs
roiManager("Measure");

// Save results as CSV
saveAs("Results", "/your/path/blobs_results.csv");
```

---

### `04_set_scale_and_bar.ijm`  
📌 Sets a spatial scale using the scale bar in `Cell_Colony.tif`, adds a visible scale bar overlay, and flattens it.

**Fiji Sample Image:**  
`File → Open Samples → Cell_Colony`

```javascript
// Open cell colony image with embedded scale bar
open("samples:ImageJ/Cell_Colony.tif");

// Draw a line over the visible scale bar (100 μm)
makeLine(25, 230, 125, 230);

// Set the scale for all measurements
run("Set Scale...", "distance=100 known=100 unit=um");

// Add a visible scale bar overlay
run("Add Scale Bar", "width=100 height=12 font=18 color=White location=[Lower Right] bold overlay");

// Flatten the image (burn the overlay into the pixels)
run("Flatten");

// Save the output
saveAs("Tiff", "/your/path/Cell_Colony_scaled.tif");
```

---

### `05_batch_open_and_save.ijm`  
📌 BONUS: Opens all `.tif` images in a folder, converts them to 8-bit, and saves new versions.  
Great teaser for Day 2 automation.

```javascript
// Ask user to select a folder
input = getDirectory("Choose a Folder");

// Get all files in the folder
list = getFileList(input);

// Loop through each file
for (i=0; i<list.length; i++) {

   // Check if it's a .tif file
   if (endsWith(list[i], ".tif")) {

       // Open image
       open(input + list[i]);

       // Convert to 8-bit
       run("8-bit");

       // Save with new name
       saveAs("Tiff", input + "converted_" + list[i]);

       // Close current image
       close();
   }
}
```

---
## 🔧 Setup Instructions

1. Open Fiji.
2. Drag `.ijm` files into the main window or use `Plugins → Macros → Run`.
3. Modify file paths in save lines if needed.
4. Use built-in sample images to follow along.

---

## 🧑‍🏫 Teaching Note

These macros align directly with the live demo sequence in the 13:00–14:00 session on Day 1. They are designed for beginner-level participants with minimal scripting experience.

Enjoy exploring Fiji!
```

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
├── macros/
│   ├── 01_open_and_convert.ijm
│   ├── 02_brightness_contrast.ijm
│   ├── 03_roi_measurement.ijm
│   ├── 04_set_scale_and_bar.ijm
│   └── 05_batch_open_and_save.ijm
│
└── README.md ← you are here
```

---
## 🧾 Day 1 – Sample Macros Overview

| Macro File                   | What It Does                                                                 | Teaches                              |
|-----------------------------|------------------------------------------------------------------------------|--------------------------------------|
| `01_open_and_convert.ijm`   | Opens the M51 image, inspects info, converts to 8-bit with and without scaling | Bit depth, metadata, conversion      |
| `02_brightness_contrast.ijm`| Opens `gel_inv`, adjusts contrast manually, applies LUT, saves output        | Non-destructive display vs “Apply”   |
| `03_roi_measurement.ijm`    | Opens `blobs`, adds ROIs, sets measurements, measures area/perimeter         | ROI tools, results table             |
| `04_set_scale_and_bar.ijm`  | Opens `Cell_Colony`, sets scale from line ROI, adds scale bar, flattens overlay | Calibration + overlays               |
| `05_batch_open_and_save.ijm` *(bonus)* | Opens all `.tif` files in a folder, converts to 8-bit, saves copies     | Automation teaser                    |

📦 **Download all macros as a ZIP file:**  
👉 Right-click and “Save link as…”  
[📥 Download Day1_Fiji_Basics_macros.zip](sandbox:/mnt/data/Day1_Fiji_Basics_macros.zip)


## 📜 Macro Descriptions

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

## 🧠 Good to Know

- Use `Image → Show Info` to inspect metadata.
- Bit-depth conversions affect quantification — always check scaling.
- Avoid using “Apply” on brightness/contrast unless you're saving for display.
- Save ROIs and results tables for reproducibility.

---


# FIJI Training – Questions & Answers (Beginner Friendly, with Shortcuts)

## 1. Loading and Characterizing an Image

### How do I load and check image properties in FIJI?
Open via `File → Open` or EMBL plugin. Then use `Image → Show Info` (`Ctrl+I`) to see image type, resolution, and dimensions.

### How can I visualize pixel intensity distribution?
Use `Analyze → Histogram` (`Ctrl+H`) to see how pixel intensities are distributed. Press “Live” in the histogram window to update dynamically.

### How do I convert 16-bit to 8-bit properly?
Use `Image → Type → 8-bit`. Ensure “Scale When Converting” is enabled (`Edit → Options → Conversion`) if you want to rescale values to the 0–255 range.

---

## 2. Bit-Depth and Scaling

### What does “Scale When Converting” do?
When checked, it rescales your 16-bit image’s intensity range to 8-bit (0–255). When unchecked, intensities may be clipped or appear dark.

### How to compare scaled vs unscaled conversion?
Draw a line ROI using the line tool (`L`), then use `Analyze → Plot Profile` (`K`). Convert with and without scaling, then re-plot using the saved ROI for comparison.

### Where to enable/disable scaling?
Go to `Edit → Options → Conversion`, and check or uncheck “Scale When Converting”.

---

## 3. Intensity and Contrast Enhancement

### How do I adjust contrast without changing image data?
Use `Image → Adjust → Brightness/Contrast` (`Ctrl+Shift+C`). Adjust sliders to enhance visibility. Only click “Apply” if you want permanent changes.

### Why is min=80 and max=200 problematic?
It clips the image data, hiding pixel values outside that range. This may affect quantitative analysis like intensity measurements.

---

## 4. Color Display

### What are LUTs used for?
LUTs visually colorize grayscale images to improve interpretation. They don’t alter pixel values. Apply them via `Image → Lookup Tables`.

### How to add a scale bar to an image?
Use `Analyze → Tools → Calibration Bar` for LUTs, or `Tools → Scale Bar` to add spatial measurement. These are useful for figures and reports.

### How do I split and merge channels?
Use `Image → Color → Split Channels` and `Merge Channels`. You can use `Shift+Z` to open the Channels Tool to manage Composite and Grayscale modes.

### What does “Create Composite” do?
It combines individual grayscale channels into a multi-channel composite where each can be toggled on/off and adjusted independently.

---

## 5. Geometrical Measurements and Manual Cell Counts

### Which tools can I use for geometric measurements?
Use the Line Tool (`L`), Angle Tool (`Shift+M`), Polygon (`F`), or Oval (`O`). Select the region, then press `Ctrl+M` or `Analyze → Measure`.

### How do I count cells manually?
Use the Point Tool (`.`), then Shift+Click to mark each cell/nucleus. Each click adds a point; `Alt+Click` removes it.

### How to auto-measure with each point click?
Double-click the Point Tool to open its settings and enable “Auto-Measure” and “Add to ROI Manager”.

---

## 6. ROI, Calibration, and More Measurements

### How do I measure fluorescence in selected ROIs?
Draw a shape (e.g., oval `O`), press `T` to add to ROI Manager. Then press `Ctrl+M` to measure intensity and area. Repeat for multiple ROIs.

### How to switch channels and reuse ROI?
Split channels (`Image → Color → Split Channels`), select another channel, and apply saved ROIs from ROI Manager to measure across all channels.

### How to export results?
Click `File → Save As` in the Results window or press `Ctrl+S`. Save as `.xls` or `.csv` for spreadsheets.

### How to set image scale using a scale bar?
Draw a line with the Line Tool (`L`) over the known scale. Go to `Analyze → Set Scale` (`Ctrl+K`), input known length and unit (e.g., µm).

### How to add a visible scale bar to the image?
Use `Analyze → Tools → Scale Bar`. Set position, color, and size. Ensure scale calibration is correct beforehand.

### Can calibration override image metadata?
Yes. Manually set scale overrides Bio-Formats metadata. Click “Remove Scale” in the Set Scale dialog to revert.

---

## 7. Automatic Segmentation

### How to segment an image automatically?
Use `Image → Adjust → Threshold` (`Ctrl+Shift+T`), select a method like Otsu, and apply. Use `Process → Binary → Watershed` to separate touching objects.

### How to count objects post-segmentation?
Use `Analyze → Analyze Particles` (`Shift+Ctrl+A`). Set size and circularity. Enable “Display Results” and “Add to Manager” to inspect and measure each object.

### How to overlay segmentation results?
From the ROI Manager, click “Show All” then “More → Flatten” to overlay outlines on the original image. Save this version for presentations.

---

## 8. Masking

### How to apply a mask to restrict analysis area?
Use ROI Manager to define a region. Create a binary mask via `Edit → Selection → Create Mask`. Then use `Process → Image Calculator → AND` to mask segmentation.

### What’s better: masking or duplicating?
Masking restricts analysis while keeping full context. Duplicating isolates a region but removes surroundings. Masking is usually more flexible for image analysis workflows.

---

## Exercise: Measuring Cell Fluorescence

### How do I calculate corrected fluorescence (CTCF)?
Draw a cell ROI, measure using `Ctrl+M`. Select a background area similarly. Then use:  
**CTCF = Integrated Density – (Area × Mean Background)**  
See: [Martin Fitzpatrick’s Guide](https://blog.martinfitzpatrick.com/measuring-cell-fluorescence-using-imagej/)

### Why normalize CTCF?
Brighter signals may result from larger or more compact cells. CTCF normalization removes size and background biases, giving a more reliable comparison.


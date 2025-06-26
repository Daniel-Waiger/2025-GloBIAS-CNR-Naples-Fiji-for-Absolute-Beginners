# 🧬 Fiji for Beginners

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-CC--BY--SA%204.0-brightgreen"></a>
</p>

# Day 1 – Fiji Basics & Introduction  
**Fluorescence Image Analysis Course – GloBIAS & CNR Naples 2025**  
Trainer: Daniel Waiger

---

## 📅 Overview  
This module introduces Fiji (ImageJ) through hands-on sample image exercises, supported by beginner-friendly macros and structured learning goals:

- Image loading and bit-depth conversion  
- Intensity histograms and scaling effects  
- Contrast adjustment and LUTs  
- ROI tools and intensity measurements  
- Spatial calibration and scale bars  
- Automatic segmentation and particle analysis  
- BONUS: Region masking and batch processing

---

## 🧾 Day 1 – Sample Macros Overview (for quick review of the tasks)

| Macro File                       | What It Does                                                               | Teaches                                  |
|----------------------------------|----------------------------------------------------------------------------|------------------------------------------|
| `01_image_info_conversion.ijm`   | Loads `M51`, shows metadata, converts to 8-bit with/without scaling       | Bit-depth, profiles, scaling             |
| `02_histogram_profiles.ijm`      | Draws a line ROI, shows intensity profiles pre/post scaling               | Line ROI, Plot Profile, scaling effects  |
| `03_brightness_contrast.ijm`     | Loads `gel_inv`, adjusts contrast, applies LUT                            | Display vs destructive changes           |
| `04_channels_LUTs.ijm`           | Opens RGB image, splits/merges channels, applies LUTs                     | Multichannel handling, color tools       |
| `05_roi_measurement.ijm`         | Opens `blobs`, draws ROIs, measures area/perimeter                        | ROI tools, Point tool, measurements      |
| `06_set_scale_bar.ijm`           | Sets spatial scale using a known bar, adds and flattens scale bar         | Calibration + overlays                   |
| `07_segmentation_particles.ijm`  | Segments objects using threshold/watershed, analyzes particles            | Segmentation, object counting            |
| `08_masking_regions.ijm`         | Creates and applies a binary mask to restrict analysis                    | Masking via image calculator             |
| `09_ctcf_fluorescence.ijm`       | Measures fluorescence, calculates corrected total cell fluorescence (CTCF)| Integrated density, background correction|

📦 **Download all macros as a ZIP file:**  
👉 Right-click and “Save link as…”  
[📥 Download Day1_Fiji_Basics_macros.zip](sandbox:/mnt/data/Day1_Fiji_Basics_macros.zip)

---

## 🔧 Setup Instructions

1. Open Fiji.
2. Drag `.ijm` macro files into Fiji, or use `Plugins → Macros → Run`.
3. Make sure to adjust save paths in the macros before running.
4. Use built-in sample images: `File → Open Samples`.

---

## 🧠 Good to Know

- Use `Ctrl+I` (`Image → Show Info`) to inspect metadata and format.
- Use `Ctrl+H` (`Analyze → Histogram`) to understand pixel distributions.
- Toggle scaling via `Edit → Options → Conversion` before converting to 8-bit.
- Press `T` to add any selection to the ROI Manager.
- Use `Ctrl+M` to measure selections, `Ctrl+Shift+T` to threshold, `Shift+Ctrl+A` to analyze particles.
- Save results from the Results window (`Ctrl+S`), or use macros for automation.
- Avoid using “Apply” in contrast unless you're finalizing the image for export.
- Use the ROI Manager and consistent naming (e.g., nuc1, nuc2) to organize your data.

---

## 💬 Macro Code Blocks

### `01_image_info_conversion.ijm`
```javascript
run("M51 Galaxy (177K)");
run("Show Info...");
run("Duplicate...", "title=M51_Copy");
setOption("ScaleConversions", true);
run("8-bit");
saveAs("Tiff", "M51_scaled.tif");
run("Revert");
setOption("ScaleConversions", false);
run("8-bit");
saveAs("Tiff", "M51_unscaled.tif");
```

### `02_histogram_profiles.ijm`
```javascript
run("M51 Galaxy (177K)");
makeLine(90, 60, 160, 60);
run("Plot Profile");
setOption("ScaleConversions", true);
run("8-bit");
run("Plot Profile");

```

### `03_brightness_contrast.ijm`
```javascript
run("Gel (105K)");
run("Enhance Contrast", "saturated=0.35");
setMinAndMax(80, 200);
run("Apply LUT");
saveAs("Tiff", "gel_adjusted.tif");

```

### `04_channels_LUTs.ijm`
```javascript
run("Fluorescent Cells (400K)");
run("Split Channels");
run("Merge Channels...", "c1=red c2=green c3=blue create");
run("Channels Tool...");
run("Add Calibration Bar", "location=[Lower Right]");

```

### `05_roi_measurement.ijm`
```javascript
run("Blobs (25K)");
makeRectangle(30, 40, 40, 40);
roiManager("Add");
makeOval(100, 100, 35, 35);
roiManager("Add");
run("Set Measurements...", "area mean perimeter redirect=None decimal=3");
roiManager("Measure");
saveAs("Results", "blobs_results.csv");

```

### `06_set_scale_bar.ijm`
```javascript
run("Cell Colony (31K)");
makeLine(25, 230, 125, 230);
run("Set Scale...", "distance=100 known=100 unit=um");
run("Add Scale Bar", "width=100 height=12 font=18 color=White location=[Lower Right] bold overlay");
run("Flatten");
saveAs("Tiff", "Cell_Colony_scaled.tif");

```

### `07_segmentation_particles.ijm`
```javascript
run("Fluorescent Cells (400K)");
run("Split Channels");
selectWindow("RGB_Cell (green)");
run("8-bit");
setAutoThreshold("Otsu");
run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=50-Infinity circularity=0.20-1.00 display add");

```

### `08_masking_regions.ijm`
```javascript
run("Fluorescent Cells (400K)");
run("Split Channels");
selectWindow("RGB_Cell (green)");
run("8-bit");
setAutoThreshold("Otsu");
run("Convert to Mask");
run("Create Selection");
run("Duplicate...", "title=Mask");
imageCalculator("AND create", "RGB_Cell (green)", "Mask");
selectWindow("Result of RGB_Cell (green)");
run("Analyze Particles...", "size=50-Infinity display add");

```

### `09_ctcf_fluorescence.ijm`
```javascript
run("Blobs (25K)");
makeOval(100, 100, 40, 40);
run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
run("Measure");
makeRectangle(10, 10, 30, 30);
run("Measure");

```
```

# 🧬 Fiji, Ilastik, and Automation for Beginners - Fluorescence Image Analysis Course – GloBIAS & CNR Naples 2025

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-CC--BY--SA%204.0-brightgreen"></a>
</p>

**Trainers**: Daniel Waiger | Rocco D'Antuono | Ana Stojilijkovic | Sebastian Gonzalez Tirado

## 📁 Session Structure

- **[Day 1 Materials](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/slides/Day1)** - Introduction, Plugin Showcase, ilastik
- **[Day 2 Materials](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/slides/Day2)** - AI Automation, Practical Session, Projects
- **[Sample Images](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/images)** - Practice datasets for exercises
- **[Macro Scripts](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/macros)** - Ready-to-use ImageJ macros
- **[Training Manuals](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/manuals)** - Reference documentation

## 📊 Direct Links to Key Materials

- [Introduction Slides](slides/Day1/01_Introduction_to_Image_Analysis.pptx) - Day 1 Opening
- [ilastik Tutorial](slides/Day1/Ilastik – The Interactive Learning And Segmentation Toolkit.pptx) - Interactive Segmentation
- [ChatGPT Enhancement Materials](slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx) - Day 2 Morning - Using AI Tools for Image Analysis
- [AI Macro Programming](slides/Day2/2020418_ImageJMacro.pdf) - A Brief Overview on ImageJ Macro (With Ana Stojilijkovic)
- [Interactive Workflows](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/slides/Day2) - Advanced analysis examples
- [All Macro Scripts](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/macros) - Complete macro library

**Event**: GloBIAS & CNR Naples 2025  
**Dates**: July 7-11, 2025

[Workshop Website: Fluorescence image analysis workshop - GloBIAS and CNR Naples - 2025](https://globias-bioimageanalysts.github.io/Fluorescence_image_analysis_workshop-GloBIAS_CNR_Naples_2025/)

## 🔗 Quick Navigation

- [📅 Course Schedule](#-course-schedule)
- [🎯 Learning Objectives](#-learning-objectives)
- [📁 Day 1 Materials](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/slides/Day1) - Introduction, Plugins, ilastik
- [📁 Day 2 Materials](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/slides/Day2) - AI Macros, Practical Session, Projects
- [📚 Sample Images](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/images) - Practice datasets for exercises
- [⚡ Macro Scripts](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/macros) - Ready-to-use ImageJ macros
- [📖 Training Manuals](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/manuals) - Reference documentation
- [🔧 Setup Instructions](#-setup-instructions)
- [💡 Tips & Shortcuts](#-good-to-know)
- [❓ Q&A Section](#questions--answers---hands-on)

<p align="center">
  <a href="https://imagej.net/software/fiji/">
    <img src="assets/logos/fiji-logo.png" alt="Fiji" height="50">
  </a>
  &nbsp;&nbsp;
  <a href="https://www.ilastik.org/">
    <img src="assets/logos/ilastik-logo.png" alt="ilastik" height="50">
  </a>
  &nbsp;&nbsp;
  <a href="https://chat.openai.com/">
    <img src="assets/logos/chatgpt-logo.webp" alt="ChatGPT" height="50">
  </a>
</p>

## 📅 Course Schedule

### Day 1 – Monday, 7th July 2025

- **13:00–14:00**: Introduction to FIJI 📊 [Slides](slides/Day1/01_Introduction_to_Image_Analysis.pptx)
- **14:00–15:00**: Showcase of FIJI plugins for bioimage analysis (with Ana Stojilkovic)
- **15:30–16:30**: ilastik for interactive segmentation 📊 [Materials](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/slides/Day1)

### Day 2 – Tuesday, 8th July 2025

- **09:30–10:30**: Automatisation of bioimage analysis with ImageJ macro powered by large language models 📊 [Slides](slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx)
- **11:00–12:00**: ImageJ macro practical session (with Ana Stojiljkovic) 📄 [Macros](https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/tree/main/macros) • 📊 [Programming Guide](slides/Day2/2020418_ImageJMacro.pdf)
- **15:30–17:00**: Project working groups (with Sebastian Gonzalez Tirado)

---

## 🎯 Learning Objectives

This course introduces Fiji (ImageJ) through hands-on sample image exercises, supported by beginner-friendly macros and structured learning goals:

- Image loading and bit-depth conversion
- Intensity histograms and scaling effects
- Contrast adjustment and LUTs
- ROI tools and intensity measurements
- Spatial calibration and scale bars
- Automatic segmentation and particle analysis
- BONUS: Region masking and batch processing

---

## 💬 ImageJ Macro Scripts & Code

### [📄 `01_image_info_conversion.ijm`](macros/01_image_info_conversion.ijm)

**What it does**: Loads `M51`, shows metadata, converts to 8-bit with/without scaling  
**Teaches**: Bit-depth, profiles, scaling

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

### [📄 `02_histogram_profiles.ijm`](macros/02_histogram_profiles.ijm)

**What it does**: Draws a line ROI, shows intensity profiles pre/post scaling  
**Teaches**: Line ROI, Plot Profile, scaling effects

```javascript
run("M51 Galaxy (177K)");
makeLine(90, 60, 160, 60);
run("Plot Profile");
setOption("ScaleConversions", true);
run("8-bit");
run("Plot Profile");
```

### [📄 `03_brightness_contrast.ijm`](macros/03_brightness_contrast.ijm)

**What it does**: Loads `gel_inv`, adjusts contrast, applies LUT  
**Teaches**: Display vs destructive changes

```javascript
run("Gel (105K)");
run("Enhance Contrast", "saturated=0.35");
setMinAndMax(80, 200);
run("Apply LUT");
saveAs("Tiff", "gel_adjusted.tif");
```

### [📄 `04_channels_LUTs.ijm`](macros/04_channels_LUTs.ijm)

**What it does**: Opens RGB image, splits/merges channels, applies LUTs  
**Teaches**: Multichannel handling, color tools

```javascript
run("Fluorescent Cells (400K)");
run("Split Channels");
run("Merge Channels...", "c1=red c2=green c3=blue create");
run("Channels Tool...");
run("Add Calibration Bar", "location=[Lower Right]");
```

### [📄 `05_roi_measurement.ijm`](macros/05_roi_measurement.ijm)

**What it does**: Opens `blobs`, draws ROIs, measures area/perimeter  
**Teaches**: ROI tools, Point tool, measurements

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

### [📄 `06_set_scale_bar.ijm`](macros/06_set_scale_bar.ijm)

**What it does**: Sets spatial scale using a known bar, adds and flattens scale bar  
**Teaches**: Calibration + overlays

```javascript
run("Cell Colony (31K)");
makeLine(25, 230, 125, 230);
run("Set Scale...", "distance=100 known=100 unit=um");
run("Add Scale Bar", "width=100 height=12 font=18 color=White location=[Lower Right] bold overlay");
run("Flatten");
saveAs("Tiff", "Cell_Colony_scaled.tif");
```

### [📄 `07_segmentation_particles.ijm`](macros/07_segmentation_particles.ijm)

**What it does**: Segments objects using threshold/watershed, analyzes particles  
**Teaches**: Segmentation, object counting

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

### [📄 `08_masking_regions.ijm`](macros/08_masking_regions.ijm)

**What it does**: Creates and applies a binary mask to restrict analysis  
**Teaches**: Masking via image calculator

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

### [📄 `09_ctcf_fluorescence.ijm`](macros/09_ctcf_fluorescence.ijm)

**What it does**: Measures fluorescence, calculates corrected total cell fluorescence (CTCF)  
**Teaches**: Integrated density, background correction

```javascript
run("Blobs (25K)");
makeOval(100, 100, 40, 40);
run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
run("Measure");
makeRectangle(10, 10, 30, 30);
run("Measure");
```

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
- Avoid using "Apply" in contrast unless you're finalizing the image for export.
- Use the ROI Manager and consistent naming (e.g., nuc1, nuc2) to organize your data.

---

## Questions & Answers - Hands-On

## 1. Loading and Characterizing an Image

### How do I load and check image properties in FIJI?

Open via `File → Open` or EMBL plugin. Then use `Image → Show Info` (`Ctrl+I`) to see image type, resolution, and dimensions.

### How can I visualize pixel intensity distribution?

Use `Analyze → Histogram` (`Ctrl+H`) to see how pixel intensities are distributed. Press "Live" in the histogram window to update dynamically.

### How do I convert 16-bit to 8-bit properly?

Use `Image → Type → 8-bit`. Ensure "Scale When Converting" is enabled (`Edit → Options → Conversion`) if you want to rescale values to the 0–255 range.

---

## 2. Bit-Depth and Scaling

### What does "Scale When Converting" do?

When checked, it rescales a 16-bit (0-65535 )image's intensity range to 8-bit (0–255), for example. When unchecked, intensities may be clipped (very bright) or appear dark.

### How to compare scaled vs unscaled conversion?

Draw a line ROI using the line tool (`L`), then use `Analyze → Plot Profile` (`K`). Convert with and without scaling, then re-plot using the saved ROI for comparison.

### Where to enable/disable scaling?

Go to `Edit → Options → Conversion`, and check or uncheck "Scale When Converting".

---

## 3. Intensity and Contrast Enhancement

### How do I adjust contrast without changing image data?

Use `Image → Adjust → Brightness/Contrast` (`Ctrl+Shift+C`). Adjust sliders to enhance visibility. Only click "Apply" if you want permanent changes.

### Why is min=80 and max=200 problematic?

It clips the image data, hiding pixel values outside that range. This may affect quantitative analysis like intensity measurements.

---

## 4. Color Display

### What are LUTs used for?

LUTs visually colorize grayscale images to improve interpretation. They don't alter pixel values. Apply them via `Image → Lookup Tables`.

### How to add a scale bar to an image?

Use `Analyze → Tools → Calibration Bar` for LUTs, or `Tools → Scale Bar` to add spatial measurement. These are useful for figures and reports.

### How do I split and merge channels?

Use `Image → Color → Split Channels` and `Merge Channels`. You can use `Shift+Z` to open the Channels Tool to manage Composite and Grayscale modes.

### What does "Create Composite" do?

It combines individual grayscale channels into a multi-channel composite where each can be toggled on/off and adjusted independently.

---

## 5. Geometrical Measurements and Manual Cell Counts

### Which tools can I use for geometric measurements?

Use the Line Tool (`L`), Angle Tool (`Shift+M`), Polygon (`F`), or Oval (`O`). Select the region, then press `Ctrl+M` or `Analyze → Measure`.

### How do I count cells manually?

Use the Point Tool (`.`), then Shift+Click to mark each cell/nucleus. Each click adds a point; `Alt+Click` removes it.

### How to auto-measure with each point click?

Double-click the Point Tool to open its settings and enable "Auto-Measure" and "Add to ROI Manager".

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

Yes. Manually set scale overrides Bio-Formats metadata. Click "Remove Scale" in the Set Scale dialog to revert.

---

## 7. Automatic Segmentation

### How to segment an image automatically?

Use `Image → Adjust → Threshold` (`Ctrl+Shift+T`), select a method like Otsu, and apply. Use `Process → Binary → Watershed` to separate touching objects.

### How to count objects post-segmentation?

Use `Analyze → Analyze Particles` (`Shift+Ctrl+A`). Set size and circularity. Enable "Display Results" and "Add to Manager" to inspect and measure each object.

### How to overlay segmentation results?

From the ROI Manager, click "Show All" then "More → Flatten" to overlay outlines on the original image. Save this version for presentations.

---

## 8. Masking

### How to apply a mask to restrict analysis area?

Use ROI Manager to define a region. Create a binary mask via `Edit → Selection → Create Mask`. Then use `Process → Image Calculator → AND` to mask segmentation.

### What's better: masking or duplicating?

Masking restricts analysis while keeping full context. Duplicating isolates a region but removes surroundings. Masking is usually more flexible for image analysis workflows.

---

## Exercise: Measuring Cell Fluorescence

### How do I calculate corrected fluorescence (CTCF)?

Draw a cell ROI, measure using `Ctrl+M`. Select a background area similarly. Then use:  
**CTCF = Integrated Density – (Area × Mean Background)**  
See: [Martin Fitzpatrick's Guide](https://blog.martinfitzpatrick.com/measuring-cell-fluorescence-using-imagej/)

### Why normalize CTCF?

Brighter signals may result from larger or more compact cells. CTCF normalization removes size and background biases, giving a more reliable comparison.

---

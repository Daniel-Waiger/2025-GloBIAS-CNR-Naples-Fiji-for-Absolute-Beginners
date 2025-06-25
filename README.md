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

## 📜 Macro Descriptions

### `01_open_and_convert.ijm`  
📌 Opens the M51 sample image, displays metadata, and converts it to 8-bit with and without scaling.

**Fiji Sample Image:**  
`File → Open Samples → M51`

---

### `02_brightness_contrast.ijm`  
📌 Loads `gel_inv.tif`, adjusts brightness/contrast manually and applies the LUT.

**Fiji Sample Image:**  
`File → Open Samples → gel_inv`

---

### `03_roi_measurement.ijm`  
📌 Uses the `blobs` image to add ROIs, set measurements, and extract area/perimeter data.

**Fiji Sample Image:**  
`File → Open Samples → blobs`

---

### `04_set_scale_and_bar.ijm`  
📌 Sets a spatial scale using the scale bar in `Cell_Colony.tif`, adds a visible scale bar overlay, and flattens it.

**Fiji Sample Image:**  
`File → Open Samples → Cell_Colony`

---

### `05_batch_open_and_save.ijm`  
📌 BONUS: Opens all `.tif` images in a folder, converts them to 8-bit, and saves new versions.  
Great teaser for Day 2 automation.

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

## 🧑‍🏫 Teaching Note

These macros align directly with the live demo sequence in the 13:00–14:00 session on Day 1. They are designed for beginner-level participants with minimal scripting experience.

Enjoy exploring Fiji!
```

# 🧬 Fiji for Absolute Beginners

**GloBIAS & CNR Naples 2025 Workshop** • 🗓️ July 7-11, 2025

![Fiji Logo](assets/logos/fiji-logo.png) ![ilastik Logo](assets/logos/ilastik-logo.png) ![ChatGPT Logo](assets/logos/chatgpt-logo.webp)

> Intensive fluorescence image analysis workshop with hands-on sessions, interactive segmentation, and AI-enhanced macro development.

🌐 **[Main Workshop Website](https://globias-bioimageanalysts.github.io/Fluorescence_image_analysis_workshop-GloBIAS_CNR_Naples_2025/)** - For the full programme

---

## 📅 Workshop Schedule

### Day 1 – Monday, July 7th, 2025
- **13:00–14:00** Introduction to FIJI • [📊 Slides](slides/Day1/01_Introduction_to_Image_Analysis.pptx)
- **14:00–15:00** Showcase of FIJI plugins for bioimage analysis *with Ana Stojiljković*
- **15:30–16:30** ilastik for interactive segmentation • [📁 Day 1 Materials](slides/Day1/)

### Day 2 – Tuesday, July 8th, 2025
- **09:30–10:30** Automatisation of bioimage analysis with ImageJ macro powered by large language models • [📊 Slides](slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx)
- **11:00–12:00** ImageJ macro practical session *with Daniel Waiger and Ana Stojiljković* • [📊 Programming Guide](slides/Day2/2020418_ImageJMacro.pdf) • [📄 Macros](macros/)

---

## 🎯 Learning Objectives

- 🖼️ **ImageJ/Fiji Fundamentals** - Master image loading, bit-depth conversion, and format effects
- 📊 **Intensity Analysis** - Interpret histograms and understand scaling effects on measurements
- 🎨 **Visualization** - Apply contrast adjustments and LUTs for enhanced image interpretation
- 📏 **ROI Tools** - Use region of interest tools for precise intensity measurements
- 📐 **Spatial Calibration** - Set proper calibrations and add professional scale bars
- 🔍 **Segmentation** - Perform automatic segmentation and particle analysis
- 🎭 **Region Masking** - BONUS: Advanced masking and batch processing workflows
- 🤖 **AI Integration** - Leverage AI tools to enhance macro development

---

## 🔧 Pre-Workshop Setup

Install these tools before the workshop:

1. **🔬 Fiji (ImageJ)** - Download from [fiji.sc](https://fiji.sc/)
2. **🧩 Plugin Update Sites** - In Fiji: Help → Update → Manage Update Sites (Enable: CLIJ, StarDist, CSBDeep, TrackMate, PT-BIOP)
3. **🤖 ilastik** - Download from [ilastik.org](https://www.ilastik.org/download.html)
4. **🧠 ChatGPT Account** - Sign up at [chat.openai.com](https://chat.openai.com/)
5. **📝 Text Editor** - VS Code or use Fiji's built-in Script Editor
6. **📁 Workshop Materials** - Clone or download this repository

---

## 📚 Workshop Materials

### 📊 Presentation Slides
**Day 1:**
- [Introduction to Image Analysis](slides/Day1/01_Introduction_to_Image_Analysis.pptx)
- [ilastik Interactive Segmentation](slides/Day1/Ilastik%20%E2%80%93%20The%20Interactive%20Learning%20And%20Segmentation%20Toolkit.pptx)
- [Mitocheck Dataset](slides/Day1/mitocheck/) - Cell tracking examples

**Day 2:**
- [ChatGPT for Image Analysis](slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx)
- [ImageJ Macro Programming Guide](slides/Day2/2020418_ImageJMacro.pdf)
- [FDA vs PI Analysis](slides/Day2/FDA_vs_PI_Scatter_Plot_Combined.html) - Interactive visualization
- [Tuna Analysis Protocol](slides/Day2/Tuna_Analysis_Protocol_Modern.html) - Complete workflow

### 🖼️ Sample Images (`images/` folder)
- `1703.tif` - Multi-channel fluorescence
- `blobs.tif` & `blobs_noise.tif` - Segmentation practice
- `cells_ActinDNA.tif` - Cellular structures
- `FluorescentCells.tif` - Cell analysis
- `H&E.tif` - Histology sample
- `RGB_cell.tif` - Color image processing
- `m51.tif` - Advanced analysis
- `gel_inv.tif` - Gel electrophoresis

### 📖 Training Manuals
- [FIJI Training Manual (PDF)](manuals/FIJI%20training.pdf)
- [FIJI Training Manual (DOCX)](manuals/FIJI%20training.docx)

### 🐍 Python Scripts
- [Bit Depth Examples](python%20library/Script%201%20-%20Bit%20Depth%20Examples.py)
- [Image Overlay Script](python%20library/Script%202%20-%20Overlay%20on%20Original%20Image.py)
- [Multi-bit Depth Overlay](python%20library/Script%202%20-%20Overlay%20on%20Original%20Image%20-%20all%20bit%20depths.py)

---

## ⚡ ImageJ Macro Library

Ready-to-use macros for common bioimage analysis tasks:

| Macro | Purpose | Key Functions |
|-------|---------|---------------|
| [01_image_info_conversion.ijm](macros/01_image_info_conversion.ijm) | Image Basics | Image properties, bit-depth conversion |
| [02_histogram_profiles.ijm](macros/02_histogram_profiles.ijm) | Intensity Analysis | Histograms, profile plots, scaling effects |
| [03_brightness_contrast.ijm](macros/03_brightness_contrast.ijm) | Image Enhancement | Brightness/contrast, auto-contrast |
| [04_channels_LUTs.ijm](macros/04_channels_LUTs.ijm) | Multi-channel Imaging | Channel splitting, LUTs, composites |
| [05_roi_measurement.ijm](macros/05_roi_measurement.ijm) | Region Analysis | ROI creation, measurements, ROI sets |
| [06_set_scale_bar.ijm](macros/06_set_scale_bar.ijm) | Spatial Calibration | Pixel size, scale bars, unit conversion |
| [07_segmentation_particles.ijm](macros/07_segmentation_particles.ijm) | Automated Analysis | Thresholding, particle analysis |
| [08_masking_regions.ijm](macros/08_masking_regions.ijm) | Advanced Masking | Binary masks, boolean operations |
| [09_ctcf_fluorescence.ijm](macros/09_ctcf_fluorescence.ijm) | Fluorescence Quantification | CTCF calculation, background correction |

---

## 💡 Tips & Shortcuts

### ⌨️ Essential Shortcuts
- `Ctrl+O` - Open Image
- `Ctrl+Shift+C` - Brightness and Contrast
- `Ctrl+Shift+T` - Threshold
- `M` - Measure

### 🎯 Best Practices
- Always duplicate original images before processing
- Use meaningful file naming conventions
- Save ROI sets for reproducible analysis
- Document your analysis pipeline
- Start with simple workflows
- Test parameters on sample images

---

## ❓ FAQ

**Do I need programming experience?**  
No! This workshop is designed for absolute beginners with AI assistance for macro development.

**What operating systems are supported?**  
Fiji and ilastik run on Windows, Mac, and Linux. All materials are OS-independent.

**Can I use my own images?**  
Absolutely! Bring your own fluorescence images for practical sessions.

**Will materials be available after the workshop?**  
Yes! This repository will remain available indefinitely.

**Is there ongoing support?**  
Post questions on [image.sc](https://forum.image.sc/) or create GitHub issues on this repository.

---

## 🚀 Ready to Begin?

Everything you need is in this repository:
- 📅 [Workshop Schedule](#-workshop-schedule)
- 📚 [Download Materials](#-workshop-materials)
- ⚡ [Get Macros](#-imagej-macro-library)
- 🔧 [Setup Guide](#-pre-workshop-setup)
- 💡 [Tips & FAQ](#-tips--shortcuts)

**Note:** Original organized folders have been moved to the `archive/` directory for reference.

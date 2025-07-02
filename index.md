---
layout: default
title: Fiji, Ilastik, and Automation for Beginners - GloBIAS & CNR Naples 2025
---

<style>
/* Hero Section */
.hero {
    background: linear-gradient(135deg, var(--background-color), var(--navbar-bg));
    text-align: center;
    padding: 4rem 2rem;
    margin-bottom: 3rem;
    border-radius: 20px;
}

.hero h1 {
    font-size: clamp(2.5rem, 5vw, 4rem);
    margin-bottom: 1rem;
    background: linear-gradient(45deg, var(--text-color), var(--link-color));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.hero .subtitle {
    font-size: 1.2rem;
    color: var(--text-color);
    margin-bottom: 2rem;
}

.hero .trainers {
    font-size: 1rem;
    color: var(--navbar-text);
    margin-bottom: 2rem;
}

.logos {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin: 2rem 0;
    flex-wrap: wrap;
}

.logos img {
    height: 50px;
    width: auto;
    opacity: 0.8;
    transition: opacity 0.3s ease;
}

.logos img:hover {
    opacity: 1;
}

/* Quick Navigation */
.quick-nav {
    position: sticky;
    top: 0;
    background: var(--navbar-bg);
    padding: 1rem 2rem;
    z-index: 1000;
    box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.quick-nav ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
    gap: 2rem;
    flex: 1;
    justify-content: center;
}

.quick-nav li {
    margin: 0;
}

.quick-nav a {
    color: var(--navbar-text);
    text-decoration: none;
    padding: 0.5rem 1rem;
    border-radius: 25px;
    transition: all 0.3s ease;
    font-size: 0.9rem;
    font-weight: 500;
}

.quick-nav a:hover {
    background: var(--navbar-hover-bg);
    color: var(--navbar-hover-text);
    transform: translateY(-2px);
}

.theme-toggle {
    background: var(--button-bg);
    color: var(--button-text);
    border: none;
    padding: 0.5rem 1rem;
    border-radius: 25px;
    cursor: pointer;
    transition: all 0.3s ease;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    font-size: 0.9rem;
}

.theme-toggle:hover {
    background: var(--button-hover-bg);
    transform: translateY(-2px);
}

/* GitHub Button */
.github-btn {
    position: fixed;
    bottom: 2rem;
    right: 2rem;
    background: var(--link-color);
    color: var(--background-color);
    padding: 0.8rem 1.5rem;
    border-radius: 30px;
    text-decoration: none;
    font-weight: bold;
    transition: all 0.3s ease;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    z-index: 1000;
}

.github-btn:hover {
    background: var(--text-color);
    transform: translateY(-3px);
    box-shadow: 0 6px 20px rgba(0,0,0,0.3);
}

/* Sections */
section {
    padding: 3rem 2rem;
    max-width: 1200px;
    margin: 0 auto;
}

section h2 {
    font-size: 2.5rem;
    margin-bottom: 2rem;
    text-align: center;
    color: var(--text-color);
}

section h3 {
    color: var(--text-color);
    margin-bottom: 1rem;
}

/* Schedule Cards */
.schedule-day {
    background: var(--navbar-bg);
    padding: 2rem;
    border-radius: 15px;
    margin-bottom: 2rem;
    border-left: 5px solid var(--link-color);
}

.schedule-day h3 {
    color: var(--link-color);
    font-size: 1.3rem;
    margin-bottom: 1rem;
}

.schedule-item {
    background: var(--button-bg);
    padding: 1rem;
    margin: 0.8rem 0;
    border-radius: 10px;
    border-left: 3px solid var(--text-color);
}

/* Materials Grid */
.materials-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    margin: 2rem 0;
}

.material-card {
    background: var(--navbar-bg);
    padding: 2rem;
    border-radius: 15px;
    border-left: 4px solid var(--link-color);
}

.material-card h3 {
    color: var(--link-color);
    margin-bottom: 1rem;
}

.material-card ul {
    list-style: none;
    padding: 0;
}

.material-card li {
    margin: 0.5rem 0;
}

.material-card a {
    color: var(--text-color);
    text-decoration: none;
    transition: color 0.3s ease;
}

.material-card a:hover {
    color: var(--link-color);
}

/* Macro Table */
.macro-table {
    width: 100%;
    border-collapse: collapse;
    margin: 2rem 0;
    background: var(--navbar-bg);
    border-radius: 15px;
    overflow: hidden;
}

.macro-table th,
.macro-table td {
    padding: 1rem;
    text-align: left;
    border-bottom: 1px solid var(--section-border-color);
}

.macro-table th {
    background: var(--button-bg);
    color: var(--button-text);
    font-weight: bold;
}

.macro-table tr:hover {
    background: rgba(255,255,255,0.05);
}

.macro-table a {
    color: var(--link-color);
    text-decoration: none;
}

.macro-table a:hover {
    text-decoration: underline;
}

/* Code blocks */
pre {
    background: var(--navbar-bg);
    padding: 1rem;
    border-radius: 10px;
    overflow-x: auto;
    border-left: 4px solid var(--link-color);
}

code {
    background: var(--button-bg);
    padding: 0.2rem 0.4rem;
    border-radius: 4px;
    font-family: 'Courier New', monospace;
}

/* FAQ Section */
.faq-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 2rem;
    margin: 2rem 0;
}

.faq-section {
    background: var(--navbar-bg);
    padding: 2rem;
    border-radius: 15px;
}

.faq-section h3 {
    color: var(--link-color);
    margin-bottom: 1rem;
}

/* Responsive Design */
@media (max-width: 768px) {
    .hero {
        padding: 2rem 1rem;
    }
    
    .quick-nav {
        flex-direction: column;
        gap: 1rem;
        padding: 1rem;
    }
    
    .quick-nav ul {
        justify-content: center;
        flex-wrap: wrap;
        gap: 1rem;
    }
    
    .theme-toggle {
        order: -1;
    }
    
    section {
        padding: 2rem 1rem;
    }
    
    .materials-grid,
    .faq-grid {
        grid-template-columns: 1fr;
    }
    
    .github-btn {
        bottom: 1rem;
        right: 1rem;
        padding: 0.6rem 1rem;
    }
}
</style>

<!-- Hero Section -->
<div class="hero" id="hero">
    <h1>🧬 Fiji, Ilastik, and Automation for Beginners</h1>
    <div class="subtitle">Fluorescence Image Analysis Course – GloBIAS & CNR Naples 2025</div>
    <div class="trainers"><strong>Trainers:</strong> Daniel Waiger | Rocco D'Antuono | Ana Stojilijkovic | Sebastian Gonzalez Tirado</div>
    
    <div class="logos">
        <img src="assets/logos/fiji-logo.png" alt="Fiji Logo">
        <img src="assets/logos/ilastik-logo.png" alt="ilastik Logo">
        <img src="assets/logos/chatgpt-logo.webp" alt="ChatGPT Logo">
    </div>
    
    <p><strong>Event:</strong> GloBIAS & CNR Naples 2025 | <strong>Dates:</strong> July 7-11, 2025</p>
    <p><a href="https://globias-bioimageanalysts.github.io/Fluorescence_image_analysis_workshop-GloBIAS_CNR_Naples_2025/" target="_blank">🌐 Workshop Website: Fluorescence image analysis workshop - GloBIAS and CNR Naples - 2025</a></p>
</div>

<!-- Quick Navigation -->
<nav class="quick-nav">
    <ul>
        <li><a href="#schedule">📅 Schedule</a></li>
        <li><a href="#objectives">🎯 Objectives</a></li>
        <li><a href="#materials">📚 Materials</a></li>
        <li><a href="#macros">⚡ Macros</a></li>
        <li><a href="#setup">🔧 Setup</a></li>
        <li><a href="#tips">💡 Tips</a></li>
        <li><a href="#faq">❓ FAQ</a></li>
    </ul>
    <button class="theme-toggle" id="themeToggle">
        <span id="themeIcon">🌙</span>
        <span id="themeText">Dark</span>
    </button>
</nav>
}

<!-- Course Schedule -->
<section id="schedule">
    <h2>📅 Course Schedule</h2>
    
    <div class="schedule-day">
        <h3>Day 1 – Monday, 7th July 2025</h3>
        <div class="schedule-item">
            <strong>13:00–14:00:</strong> Introduction to FIJI 📊 <a href="slides/Day1/01_Introduction_to_Image_Analysis.pptx">Slides</a>
        </div>
        <div class="schedule-item">
            <strong>14:00–15:00:</strong> Showcase of FIJI plugins for bioimage analysis (with Ana Stojilkovic)
        </div>
        <div class="schedule-item">
            <strong>15:30–16:30:</strong> ilastik for interactive segmentation 📊 <a href="slides/Day1/">Materials</a>
        </div>
    </div>

    <div class="schedule-day">
        <h3>Day 2 – Tuesday, 8th July 2025</h3>
        <div class="schedule-item">
            <strong>09:30–10:30:</strong> Automatisation of bioimage analysis with ImageJ macro powered by large language models 📊 <a href="slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx">Slides</a>
        </div>
        <div class="schedule-item">
            <strong>11:00–12:00:</strong> ImageJ macro practical session (with Ana Stojiljkovic) 📄 <a href="macros/">Macros</a> • 📊 <a href="slides/Day2/2020418_ImageJMacro.pdf">Programming Guide</a>
        </div>
        <div class="schedule-item">
            <strong>15:30–17:00:</strong> Project working groups (with Sebastian Gonzalez Tirado)
        </div>
    </div>
</section>

<!-- Learning Objectives -->
<section id="objectives">
    <h2>🎯 Learning Objectives</h2>
    <p>This course introduces Fiji (ImageJ) through hands-on sample image exercises, supported by beginner-friendly macros and structured learning goals:</p>
    
    <div class="materials-grid">
        <div class="material-card">
            <ul>
                <li>🖼️ Image loading and bit-depth conversion</li>
                <li>📊 Intensity histograms and scaling effects</li>
                <li>🎨 Contrast adjustment and LUTs</li>
                <li>📏 ROI tools and intensity measurements</li>
            </ul>
        </div>
        <div class="material-card">
            <ul>
                <li>📐 Spatial calibration and scale bars</li>
                <li>🔍 Automatic segmentation and particle analysis</li>
                <li>🎭 BONUS: Region masking and batch processing</li>
            </ul>
        </div>
    </div>
</section>

<!-- Workshop Materials -->
<section id="materials">
    <h2>📚 Workshop Materials & Resources</h2>
    
    <div class="materials-grid">
        <div class="material-card">
            <h3>📁 Session Structure</h3>
            <ul>
                <li><a href="slides/Day1/">📅 Day 1 Materials</a> - Introduction, Plugin Showcase, ilastik</li>
                <li><a href="slides/Day2/">📅 Day 2 Materials</a> - AI Automation, Practical Session, Projects</li>
                <li><a href="images/">🖼️ Sample Images</a> - Practice datasets for exercises</li>
                <li><a href="macros/">⚡ Macro Scripts</a> - Ready-to-use ImageJ macros</li>
                <li><a href="manuals/">📖 Training Manuals</a> - Reference documentation</li>
            </ul>
        </div>
        
        <div class="material-card">
            <h3>📊 Direct Links to Key Materials</h3>
            <ul>
                <li><a href="slides/Day1/01_Introduction_to_Image_Analysis.pptx">Introduction Slides</a> - Day 1 Opening</li>
                <li><a href="slides/Day1/Ilastik%20%E2%80%93%20The%20Interactive%20Learning%20And%20Segmentation%20Toolkit.pptx">ilastik Tutorial</a> - Interactive Segmentation</li>
                <li><a href="slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx">ChatGPT Enhancement Materials</a> - Day 2 Morning</li>
                <li><a href="slides/Day2/2020418_ImageJMacro.pdf">AI Macro Programming</a> - Brief Overview on ImageJ Macro</li>
                <li><a href="slides/Day2/">Interactive Workflows</a> - Advanced analysis examples</li>
                <li><a href="manuals/FIJI%20training.pdf">Training Manual</a> - Complete reference guide</li>
            </ul>
        </div>
        
        <div class="material-card">
            <h3>🐍 Python Scripts</h3>
            <ul>
                <li><a href="python%20library/Script%201%20-%20Bit%20Depth%20Examples.py">Bit Depth Examples</a></li>
                <li><a href="python%20library/Script%202%20-%20Overlay%20on%20Original%20Image.py">Image Overlay Script</a></li>
                <li><a href="python%20library/Script%202%20-%20Overlay%20on%20Original%20Image%20-%20all%20bit%20depths.py">Multi-bit Depth Overlay</a></li>
            </ul>
        </div>
    </div>
</section>

<!-- ImageJ Macro Scripts -->
<section id="macros">
    <h2>🧾 ImageJ Macro Scripts Overview</h2>
    
    <table class="macro-table">
        <thead>
            <tr>
                <th>Macro File</th>
                <th>What It Does</th>
                <th>Teaches</th>
                <th>Link</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><code>01_image_info_conversion.ijm</code></td>
                <td>Loads M51, shows metadata, converts to 8-bit with/without scaling</td>
                <td>Bit-depth, profiles, scaling</td>
                <td><a href="macros/01_image_info_conversion.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>02_histogram_profiles.ijm</code></td>
                <td>Draws a line ROI, shows intensity profiles pre/post scaling</td>
                <td>Line ROI, Plot Profile, scaling effects</td>
                <td><a href="macros/02_histogram_profiles.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>03_brightness_contrast.ijm</code></td>
                <td>Loads gel_inv, adjusts contrast, applies LUT</td>
                <td>Display vs destructive changes</td>
                <td><a href="macros/03_brightness_contrast.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>04_channels_LUTs.ijm</code></td>
                <td>Opens RGB image, splits/merges channels, applies LUTs</td>
                <td>Multichannel handling, color tools</td>
                <td><a href="macros/04_channels_LUTs.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>05_roi_measurement.ijm</code></td>
                <td>Opens blobs, draws ROIs, measures area/perimeter</td>
                <td>ROI tools, Point tool, measurements</td>
                <td><a href="macros/05_roi_measurement.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>06_set_scale_bar.ijm</code></td>
                <td>Sets spatial scale using a known bar, adds and flattens scale bar</td>
                <td>Calibration + overlays</td>
                <td><a href="macros/06_set_scale_bar.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>07_segmentation_particles.ijm</code></td>
                <td>Segments objects using threshold/watershed, analyzes particles</td>
                <td>Segmentation, object counting</td>
                <td><a href="macros/07_segmentation_particles.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>08_masking_regions.ijm</code></td>
                <td>Creates and applies a binary mask to restrict analysis</td>
                <td>Masking via image calculator</td>
                <td><a href="macros/08_masking_regions.ijm">📄 Script</a></td>
            </tr>
            <tr>
                <td><code>09_ctcf_fluorescence.ijm</code></td>
                <td>Measures fluorescence, calculates corrected total cell fluorescence (CTCF)</td>
                <td>Integrated density, background correction</td>
                <td><a href="macros/09_ctcf_fluorescence.ijm">📄 Script</a></td>
            </tr>
        </tbody>
    </table>
</section>

<!-- Setup Instructions -->
<section id="setup">
    <h2>🔧 Setup Instructions</h2>
    
    <div class="materials-grid">
        <div class="material-card">
            <h3>Basic Setup</h3>
            <ol>
                <li>Open Fiji.</li>
                <li>Drag <code>.ijm</code> macro files into Fiji, or use <code>Plugins → Macros → Run</code>.</li>
                <li>Make sure to adjust save paths in the macros before running.</li>
                <li>Use built-in sample images: <code>File → Open Samples</code>.</li>
            </ol>
        </div>
    </div>
</section>

<!-- Tips & Good to Know -->
<section id="tips">
    <h2>🧠 Good to Know</h2>
    
    <div class="materials-grid">
        <div class="material-card">
            <h3>Essential Tips</h3>
            <ul>
                <li>Use <code>Ctrl+I</code> (<code>Image → Show Info</code>) to inspect metadata and format.</li>
                <li>Use <code>Ctrl+H</code> (<code>Analyze → Histogram</code>) to understand pixel distributions.</li>
                <li>Toggle scaling via <code>Edit → Options → Conversion</code> before converting to 8-bit.</li>
                <li>Press <code>T</code> to add any selection to the ROI Manager.</li>
                <li>Use <code>Ctrl+M</code> to measure selections, <code>Ctrl+Shift+T</code> to threshold, <code>Shift+Ctrl+A</code> to analyze particles.</li>
            </ul>
        </div>
        
        <div class="material-card">
            <h3>Best Practices</h3>
            <ul>
                <li>Save results from the Results window (<code>Ctrl+S</code>), or use macros for automation.</li>
                <li>Avoid using "Apply" in contrast unless you're finalizing the image for export.</li>
                <li>Use the ROI Manager and consistent naming (e.g., nuc1, nuc2) to organize your data.</li>
            </ul>
        </div>
    </div>
</section>

<!-- FAQ Section -->
<section id="faq">
    <h2>❓ Questions & Answers - Hands-On</h2>
    
    <div class="faq-grid">
        <div class="faq-section">
            <h3>1. Loading and Characterizing an Image</h3>
            <p><strong>How do I load and check image properties in FIJI?</strong><br>
            Open via <code>File → Open</code> or EMBL plugin. Then use <code>Image → Show Info</code> (<code>Ctrl+I</code>) to see image type, resolution, and dimensions.</p>
            
            <p><strong>How can I visualize pixel intensity distribution?</strong><br>
            Use <code>Analyze → Histogram</code> (<code>Ctrl+H</code>) to see how pixel intensities are distributed. Press "Live" in the histogram window to update dynamically.</p>
        </div>
        
        <div class="faq-section">
            <h3>2. Bit-Depth and Scaling</h3>
            <p><strong>What does "Scale When Converting" do?</strong><br>
            When checked, it rescales a 16-bit (0-65535) image's intensity range to 8-bit (0–255). When unchecked, intensities may be clipped or appear dark.</p>
            
            <p><strong>Where to enable/disable scaling?</strong><br>
            Go to <code>Edit → Options → Conversion</code>, and check or uncheck "Scale When Converting".</p>
        </div>
        
        <div class="faq-section">
            <h3>3. Intensity and Contrast Enhancement</h3>
            <p><strong>How do I adjust contrast without changing image data?</strong><br>
            Use <code>Image → Adjust → Brightness/Contrast</code> (<code>Ctrl+Shift+C</code>). Adjust sliders to enhance visibility. Only click "Apply" if you want permanent changes.</p>
        </div>
        
        <div class="faq-section">
            <h3>4. Color Display</h3>
            <p><strong>What are LUTs used for?</strong><br>
            LUTs visually colorize grayscale images to improve interpretation. They don't alter pixel values. Apply them via <code>Image → Lookup Tables</code>.</p>
            
            <p><strong>How to split and merge channels?</strong><br>
            Use <code>Image → Color → Split Channels</code> and <code>Merge Channels</code>. You can use <code>Shift+Z</code> to open the Channels Tool.</p>
        </div>
        
        <div class="faq-section">
            <h3>5. Geometrical Measurements</h3>
            <p><strong>Which tools can I use for geometric measurements?</strong><br>
            Use the Line Tool (<code>L</code>), Angle Tool (<code>Shift+M</code>), Polygon (<code>F</code>), or Oval (<code>O</code>). Select the region, then press <code>Ctrl+M</code>.</p>
            
            <p><strong>How do I count cells manually?</strong><br>
            Use the Point Tool (<code>.</code>), then Shift+Click to mark each cell/nucleus. Each click adds a point; <code>Alt+Click</code> removes it.</p>
        </div>
        
        <div class="faq-section">
            <h3>6. ROI, Calibration, and Measurements</h3>
            <p><strong>How do I measure fluorescence in selected ROIs?</strong><br>
            Draw a shape (e.g., oval <code>O</code>), press <code>T</code> to add to ROI Manager. Then press <code>Ctrl+M</code> to measure intensity and area.</p>
            
            <p><strong>How to set image scale using a scale bar?</strong><br>
            Draw a line with the Line Tool (<code>L</code>) over the known scale. Go to <code>Analyze → Set Scale</code> (<code>Ctrl+K</code>), input known length and unit.</p>
        </div>
        
        <div class="faq-section">
            <h3>7. Automatic Segmentation</h3>
            <p><strong>How to segment an image automatically?</strong><br>
            Use <code>Image → Adjust → Threshold</code> (<code>Ctrl+Shift+T</code>), select a method like Otsu, and apply. Use <code>Process → Binary → Watershed</code> to separate touching objects.</p>
            
            <p><strong>How to count objects post-segmentation?</strong><br>
            Use <code>Analyze → Analyze Particles</code> (<code>Shift+Ctrl+A</code>). Set size and circularity. Enable "Display Results" and "Add to Manager".</p>
        </div>
        
        <div class="faq-section">
            <h3>8. Masking</h3>
            <p><strong>How to apply a mask to restrict analysis area?</strong><br>
            Use ROI Manager to define a region. Create a binary mask via <code>Edit → Selection → Create Mask</code>. Then use <code>Process → Image Calculator → AND</code>.</p>
        </div>
        
        <div class="faq-section">
            <h3>Exercise: Measuring Cell Fluorescence</h3>
            <p><strong>How do I calculate corrected fluorescence (CTCF)?</strong><br>
            Draw a cell ROI, measure using <code>Ctrl+M</code>. Select a background area similarly. Then use:<br>
            <strong>CTCF = Integrated Density – (Area × Mean Background)</strong></p>
        </div>
    </div>
</section>

<!-- Macro Code Examples -->
<section id="code">
    <h2>💬 Macro Code Blocks</h2>
    
    <h3>01_image_info_conversion.ijm</h3>
    <pre><code>run("M51 Galaxy (177K)");
run("Show Info...");
run("Duplicate...", "title=M51_Copy");
setOption("ScaleConversions", true);
run("8-bit");
saveAs("Tiff", "M51_scaled.tif");</code></pre>

    <h3>02_histogram_profiles.ijm</h3>
    <pre><code>run("M51 Galaxy (177K)");
makeLine(90, 60, 160, 60);
run("Plot Profile");
setOption("ScaleConversions", true);
run("8-bit");
run("Plot Profile");</code></pre>

    <h3>05_roi_measurement.ijm</h3>
    <pre><code>run("Blobs (25K)");
makeRectangle(30, 40, 40, 40);
roiManager("Add");
makeOval(100, 100, 35, 35);
roiManager("Add");
run("Set Measurements...", "area mean perimeter redirect=None decimal=3");
roiManager("Measure");
saveAs("Results", "blobs_results.csv");</code></pre>

    <h3>09_ctcf_fluorescence.ijm</h3>
    <pre><code>run("Blobs (25K)");
makeOval(100, 100, 40, 40);
run("Set Measurements...", "area mean min integrated redirect=None decimal=3");
run("Measure");
makeRectangle(10, 10, 30, 30);
run("Measure");</code></pre>
</section>

<!-- GitHub Button -->
<a href="https://github.com/daniel-waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners" target="_blank" class="github-btn">📄 Show on GitHub</a>

<!-- JavaScript -->
<script>
// Theme Toggle Functionality
function initializeTheme() {
    const themeToggle = document.getElementById('themeToggle');
    const themeIcon = document.getElementById('themeIcon');
    const themeText = document.getElementById('themeText');
    
    if (!themeToggle) return;
    
    // Get saved theme or default to dark
    const savedTheme = localStorage.getItem('theme') || 'dark';
    document.documentElement.setAttribute('data-theme', savedTheme);
    updateThemeButton(savedTheme, themeIcon, themeText);
    
    // Theme toggle event listener
    themeToggle.addEventListener('click', function() {
        const currentTheme = document.documentElement.getAttribute('data-theme') || 'dark';
        const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
        
        document.documentElement.setAttribute('data-theme', newTheme);
        localStorage.setItem('theme', newTheme);
        updateThemeButton(newTheme, themeIcon, themeText);
    });
}

function updateThemeButton(theme, iconElement, textElement) {
    if (theme === 'dark') {
        iconElement.textContent = '☀️';
        textElement.textContent = 'Light';
    } else {
        iconElement.textContent = '🌙';
        textElement.textContent = 'Dark';
    }
}

// Smooth Scrolling for Navigation Links
document.addEventListener('DOMContentLoaded', function() {
    initializeTheme();
    
    // Smooth scrolling for anchor links
    const navLinks = document.querySelectorAll('a[href^="#"]');
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
});
</script>

<!-- Workshop Schedule -->
<section id="schedule">
    <h2>📅 Workshop Schedule</h2>
    
    <div class="schedule-day">
        <h3>Day 1 – Monday, July 7th, 2025</h3>
        <div class="schedule-item">
            <strong>13:00–14:00</strong> Introduction to FIJI<br>
            <a href="slides/Day1/01_Introduction_to_Image_Analysis.pptx" class="btn">📊 Slides</a>
        </div>
        <div class="schedule-item">
            <strong>14:00–15:00</strong> Showcase of FIJI plugins for bioimage analysis<br>
            <em>with Ana Stojiljković</em>
        </div>
        <div class="schedule-item">
            <strong>15:30–16:30</strong> ilastik for interactive segmentation<br>
            <a href="slides/Day1/" class="btn">📁 Day 1 Materials</a>
        </div>
    </div>

    <div class="schedule-day">
        <h3>Day 2 – Tuesday, July 8th, 2025</h3>
        <div class="schedule-item">
            <strong>09:30–10:30</strong> Automatisation of bioimage analysis with ImageJ macro powered by large language models<br>
            <a href="slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx" class="btn">📊 Slides</a>
        </div>
        <div class="schedule-item">
            <strong>11:00–12:00</strong> ImageJ macro practical session<br>
            <em>with Daniel Waiger and Ana Stojiljković</em><br>
            <a href="slides/Day2/2020418_ImageJMacro.pdf" class="btn">📊 Programming Guide</a>
            <a href="macros/" class="btn">📄 Macros</a>
        </div>
    </div>
</section>

<!-- Learning Objectives -->
<section id="objectives">
    <h2>🎯 Learning Objectives</h2>
    <div class="objectives-grid">
        <div class="objective-card">
            <h3>🖼️ ImageJ/Fiji Fundamentals</h3>
            <p>Master image loading, bit-depth conversion, and format effects</p>
        </div>
        <div class="objective-card">
            <h3>📊 Intensity Analysis</h3>
            <p>Interpret histograms and understand scaling effects on measurements</p>
        </div>
        <div class="objective-card">
            <h3>🎨 Visualization</h3>
            <p>Apply contrast adjustments and LUTs for enhanced image interpretation</p>
        </div>
        <div class="objective-card">
            <h3>📏 ROI Tools</h3>
            <p>Use region of interest tools for precise intensity measurements</p>
        </div>
        <div class="objective-card">
            <h3>📐 Spatial Calibration</h3>
            <p>Set proper calibrations and add professional scale bars</p>
        </div>
        <div class="objective-card">
            <h3>🔍 Segmentation</h3>
            <p>Perform automatic segmentation and particle analysis</p>
        </div>
        <div class="objective-card">
            <h3>🎭 Region Masking</h3>
            <p>BONUS: Advanced masking and batch processing workflows</p>
        </div>
        <div class="objective-card">
            <h3>🤖 AI Integration</h3>
            <p>Leverage AI tools to enhance macro development</p>
        </div>
    </div>
</section>

<!-- Pre-Workshop Setup -->
<section id="installation">
    <h2>🔧 Pre-Workshop Setup</h2>
    <p>Install these tools before the workshop:</p>
    
    <div class="materials-grid">
        <div class="material-section">
            <h3>🔬 Fiji (ImageJ)</h3>
            <p>Download from <a href="https://fiji.sc/">fiji.sc</a></p>
            <a href="https://fiji.sc/" class="btn btn-primary">Download Fiji</a>
        </div>
        <div class="material-section">
            <h3>🤖 ilastik</h3>
            <p>Download from <a href="https://www.ilastik.org/download.html">ilastik.org</a></p>
            <a href="https://www.ilastik.org/download.html" class="btn btn-primary">Download ilastik</a>
        </div>
        <div class="material-section">
            <h3>🧠 ChatGPT Account</h3>
            <p>Sign up at <a href="https://chat.openai.com/">chat.openai.com</a></p>
            <a href="https://chat.openai.com/" class="btn btn-primary">Sign Up</a>
        </div>
    </div>
</section>

<!-- Workshop Materials -->
<section id="materials">
    <h2>📚 Workshop Materials</h2>
    
    <div class="materials-grid">
        <div class="material-section">
            <h3>📊 Day 1 Slides</h3>
            <ul>
                <li><a href="slides/Day1/01_Introduction_to_Image_Analysis.pptx">Introduction to Image Analysis</a></li>
                <li><a href="slides/Day1/Ilastik%20%E2%80%93%20The%20Interactive%20Learning%20And%20Segmentation%20Toolkit.pptx">ilastik Interactive Segmentation</a></li>
                <li><a href="slides/Day1/mitocheck/">Mitocheck Dataset</a> - Cell tracking examples</li>
            </ul>
        </div>
        
        <div class="material-section">
            <h3>📊 Day 2 Slides</h3>
            <ul>
                <li><a href="slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx">ChatGPT for Image Analysis</a></li>
                <li><a href="slides/Day2/2020418_ImageJMacro.pdf">ImageJ Macro Programming Guide</a></li>
                <li><a href="slides/Day2/FDA_vs_PI_Scatter_Plot_Combined.html">FDA vs PI Analysis</a> - Interactive visualization</li>
                <li><a href="slides/Day2/Tuna_Analysis_Protocol_Modern.html">Tuna Analysis Protocol</a> - Complete workflow</li>
            </ul>
        </div>
        
        <div class="material-section">
            <h3>🖼️ Sample Images</h3>
            <p>Practice datasets in the <code>images/</code> folder:</p>
            <ul>
                <li><code>1703.tif</code> - Multi-channel fluorescence</li>
                <li><code>blobs.tif</code> & <code>blobs_noise.tif</code> - Segmentation practice</li>
                <li><code>cells_ActinDNA.tif</code> - Cellular structures</li>
                <li><code>FluorescentCells.tif</code> - Cell analysis</li>
                <li>And more...</li>
            </ul>
        </div>
        
        <div class="material-section">
            <h3>📖 Training Manuals</h3>
            <ul>
                <li><a href="manuals/FIJI%20training.pdf">FIJI Training Manual (PDF)</a></li>
                <li><a href="manuals/FIJI%20training.docx">FIJI Training Manual (DOCX)</a></li>
            </ul>
        </div>
        
        <div class="material-section">
            <h3>🐍 Python Scripts</h3>
            <ul>
                <li><a href="python%20library/Script%201%20-%20Bit%20Depth%20Examples.py">Bit Depth Examples</a></li>
                <li><a href="python%20library/Script%202%20-%20Overlay%20on%20Original%20Image.py">Image Overlay Script</a></li>
                <li><a href="python%20library/Script%202%20-%20Overlay%20on%20Original%20Image%20-%20all%20bit%20depths.py">Multi-bit Depth Overlay</a></li>
            </ul>
        </div>
    </div>
</section>

<!-- ImageJ Macro Library -->
<section id="macros">
    <h2>⚡ ImageJ Macro Library</h2>
    <p>Ready-to-use macros for common bioimage analysis tasks:</p>
    
    <table class="macro-table">
        <thead>
            <tr>
                <th>Macro</th>
                <th>Purpose</th>
                <th>Key Functions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href="macros/01_image_info_conversion.ijm">01_image_info_conversion.ijm</a></td>
                <td>Image Basics</td>
                <td>Image properties, bit-depth conversion</td>
            </tr>
            <tr>
                <td><a href="macros/02_histogram_profiles.ijm">02_histogram_profiles.ijm</a></td>
                <td>Intensity Analysis</td>
                <td>Histograms, profile plots, scaling effects</td>
            </tr>
            <tr>
                <td><a href="macros/03_brightness_contrast.ijm">03_brightness_contrast.ijm</a></td>
                <td>Image Enhancement</td>
                <td>Brightness/contrast, auto-contrast</td>
            </tr>
            <tr>
                <td><a href="macros/04_channels_LUTs.ijm">04_channels_LUTs.ijm</a></td>
                <td>Multi-channel Imaging</td>
                <td>Channel splitting, LUTs, composites</td>
            </tr>
            <tr>
                <td><a href="macros/05_roi_measurement.ijm">05_roi_measurement.ijm</a></td>
                <td>Region Analysis</td>
                <td>ROI creation, measurements, ROI sets</td>
            </tr>
            <tr>
                <td><a href="macros/06_set_scale_bar.ijm">06_set_scale_bar.ijm</a></td>
                <td>Spatial Calibration</td>
                <td>Pixel size, scale bars, unit conversion</td>
            </tr>
            <tr>
                <td><a href="macros/07_segmentation_particles.ijm">07_segmentation_particles.ijm</a></td>
                <td>Automated Analysis</td>
                <td>Thresholding, particle analysis</td>
            </tr>
            <tr>
                <td><a href="macros/08_masking_regions.ijm">08_masking_regions.ijm</a></td>
                <td>Advanced Masking</td>
                <td>Binary masks, boolean operations</td>
            </tr>
            <tr>
                <td><a href="macros/09_ctcf_fluorescence.ijm">09_ctcf_fluorescence.ijm</a></td>
                <td>Fluorescence Quantification</td>
                <td>CTCF calculation, background correction</td>
            </tr>
        </tbody>
    </table>
</section>

<!-- Tips & Shortcuts -->
<section id="tips">
    <h2>💡 Tips & Shortcuts</h2>
    
    <div class="materials-grid">
        <div class="material-section">
            <h3>⌨️ Essential Shortcuts</h3>
            <ul>
                <li><code>Ctrl+O</code> - Open Image</li>
                <li><code>Ctrl+Shift+C</code> - Brightness and Contrast</li>
                <li><code>Ctrl+Shift+T</code> - Threshold</li>
                <li><code>M</code> - Measure</li>
            </ul>
        </div>
        
        <div class="material-section">
            <h3>🎯 Best Practices</h3>
            <ul>
                <li>Always duplicate original images before processing</li>
                <li>Use meaningful file naming conventions</li>
                <li>Save ROI sets for reproducible analysis</li>
                <li>Document your analysis pipeline</li>
                <li>Start with simple workflows</li>
                <li>Test parameters on sample images</li>
            </ul>
        </div>
    </div>
</section>

<!-- FAQ -->
<section id="faq">
    <h2>❓ FAQ</h2>
    
    <div class="faq-item">
        <div class="faq-question" onclick="toggleFAQ(this)">
            <strong>Do I need programming experience?</strong>
        </div>
        <div class="faq-answer">
            No! This workshop is designed for absolute beginners with AI assistance for macro development.
        </div>
    </div>
    
    <div class="faq-item">
        <div class="faq-question" onclick="toggleFAQ(this)">
            <strong>What operating systems are supported?</strong>
        </div>
        <div class="faq-answer">
            Fiji and ilastik run on Windows, Mac, and Linux. All materials are OS-independent.
        </div>
    </div>
    
    <div class="faq-item">
        <div class="faq-question" onclick="toggleFAQ(this)">
            <strong>Can I use my own images?</strong>
        </div>
        <div class="faq-answer">
            Absolutely! Bring your own fluorescence images for practical sessions.
        </div>
    </div>
    
    <div class="faq-item">
        <div class="faq-question" onclick="toggleFAQ(this)">
            <strong>Will materials be available after the workshop?</strong>
        </div>
        <div class="faq-answer">
            Yes! This repository will remain available indefinitely.
        </div>
    </div>
    
    <div class="faq-item">
        <div class="faq-question" onclick="toggleFAQ(this)">
            <strong>Is there ongoing support?</strong>
        </div>
        <div class="faq-answer">
            Post questions on <a href="https://forum.image.sc/">image.sc</a> or create GitHub issues on this repository.
        </div>
    </div>
</section>

<!-- Contact & Support -->
<section id="contact">
    <h2>📞 Contact & Support</h2>
    <div class="materials-grid">
        <div class="material-section">
            <h3>🌐 Workshop Website</h3>
            <p>For the complete programme and updates:</p>
            <a href="https://globias-bioimageanalysts.github.io/Fluorescence_image_analysis_workshop-GloBIAS_CNR_Naples_2025/" class="btn btn-primary">Visit Main Site</a>
        </div>
        
        <div class="material-section">
            <h3>💬 Community Support</h3>
            <p>Get help from the image analysis community:</p>
            <a href="https://forum.image.sc/" class="btn">image.sc Forum</a>
            <a href="https://github.com/GloBIAS-bioimage-analysts" class="btn">GloBIAS GitHub</a>
        </div>
    </div>
</section>

<!-- JavaScript -->
<script>
// Theme Toggle Functionality
function initializeTheme() {
    const themeToggle = document.getElementById('themeToggle');
    const themeIcon = document.getElementById('themeIcon');
    const themeText = document.getElementById('themeText');
    
    if (!themeToggle) return;
    
    // Get saved theme or default to dark
    const savedTheme = localStorage.getItem('theme') || 'dark';
    document.documentElement.setAttribute('data-theme', savedTheme);
    updateThemeButton(savedTheme, themeIcon, themeText);
    
    // Theme toggle event listener
    themeToggle.addEventListener('click', function() {
        const currentTheme = document.documentElement.getAttribute('data-theme') || 'dark';
        const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
        
        document.documentElement.setAttribute('data-theme', newTheme);
        localStorage.setItem('theme', newTheme);
        updateThemeButton(newTheme, themeIcon, themeText);
    });
}

function updateThemeButton(theme, iconElement, textElement) {
    if (theme === 'dark') {
        iconElement.textContent = '☀️';
        textElement.textContent = 'Light';
    } else {
        iconElement.textContent = '🌙';
        textElement.textContent = 'Dark';
    }
}

// FAQ Toggle Functionality
function toggleFAQ(element) {
    const answer = element.nextElementSibling;
    answer.classList.toggle('active');
}

// Smooth Scrolling for Navigation Links
document.addEventListener('DOMContentLoaded', function() {
    initializeTheme();
    
    // Smooth scrolling for anchor links
    const navLinks = document.querySelectorAll('a[href^="#"]');
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            const targetElement = document.querySelector(targetId);
            if

---
layout: default
title: Fiji for Absolute Beginners - GloBIAS & CNR Naples 2025
---

<style>
/* Hero Section */
.hero {
    background: linear-gradient(135deg, var(--background-color), var(--navbar-bg));
    text-align: center;
    padding: 80px 20px 60px;
    margin-bottom: 0;
    border-radius: 0 0 30px 30px;
}

.hero h1 {
    font-size: 3.5rem;
    margin-bottom: 1rem;
    background: linear-gradient(45deg, var(--text-color), var(--link-color));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.hero .subtitle {
    font-size: 1.5rem;
    color: var(--navbar-text);
    margin-bottom: 2rem;
}

.hero .badges {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
    margin-bottom: 2rem;
}

.badge {
    padding: 0.5rem 1.5rem;
    border-radius: 25px;
    background: var(--button-bg);
    color: var(--button-text);
    font-weight: bold;
    font-size: 0.9rem;
}

.logos {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin-top: 2rem;
    flex-wrap: wrap;
}

.logos img {
    height: 60px;
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
    border-radius: 0 0 20px 20px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.quick-nav ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
    gap: 1rem;
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
    border-radius: 20px;
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

/* Schedule Cards */
.schedule-day {
    background: var(--navbar-bg);
    padding: 2rem;
    border-radius: 15px;
    margin-bottom: 2rem;
    border-left: 5px solid var(--text-color);
}

.schedule-day h3 {
    color: var(--text-color);
    font-size: 1.5rem;
    margin-bottom: 1rem;
}

.schedule-item {
    background: var(--background-color);
    padding: 1rem;
    margin: 0.5rem 0;
    border-radius: 10px;
    border-left: 3px solid var(--link-color);
}

/* Learning Objectives Grid */
.objectives-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 1.5rem;
    margin-top: 2rem;
}

.objective-card {
    background: var(--navbar-bg);
    padding: 1.5rem;
    border-radius: 15px;
    transition: transform 0.3s ease;
}

.objective-card:hover {
    transform: translateY(-5px);
}

/* Materials Grid */
.materials-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 2rem;
    margin-top: 2rem;
}

.material-section {
    background: var(--navbar-bg);
    padding: 2rem;
    border-radius: 15px;
}

.material-section h3 {
    color: var(--text-color);
    margin-bottom: 1rem;
}

/* Macro Table */
.macro-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 2rem;
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

/* Buttons */
.btn {
    display: inline-block;
    padding: 0.8rem 2rem;
    background: var(--button-bg);
    color: var(--button-text);
    text-decoration: none;
    border-radius: 25px;
    transition: all 0.3s ease;
    border: none;
    cursor: pointer;
    font-size: 1rem;
    margin: 0.5rem;
}

.btn:hover {
    background: var(--button-hover-bg);
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

.btn-primary {
    background: var(--text-color);
    color: var(--background-color);
}

/* FAQ Section */
.faq-item {
    background: var(--navbar-bg);
    margin: 1rem 0;
    border-radius: 10px;
    overflow: hidden;
}

.faq-question {
    background: var(--button-bg);
    color: var(--button-text);
    padding: 1rem;
    cursor: pointer;
    transition: background 0.3s ease;
}

.faq-question:hover {
    background: var(--button-hover-bg);
}

.faq-answer {
    padding: 1rem;
    display: none;
}

.faq-answer.active {
    display: block;
}

/* Responsive Design */
@media (max-width: 768px) {
    .hero h1 {
        font-size: 2.5rem;
    }
    
    .quick-nav {
        flex-direction: column;
        gap: 1rem;
        padding: 1rem;
    }
    
    .quick-nav ul {
        justify-content: center;
        flex-wrap: wrap;
    }
    
    .theme-toggle {
        order: -1;
    }
    
    section {
        padding: 2rem 1rem;
    }
    
    .materials-grid,
    .objectives-grid {
        grid-template-columns: 1fr;
    }
}
</style>

<!-- Hero Section -->
<div class="hero" id="hero">
    <h1>🧬 Fiji for Absolute Beginners</h1>
    <div class="subtitle">GloBIAS & CNR Naples 2025 Workshop</div>
    <div class="badges">
        <span class="badge">📅 July 7-11, 2025</span>
        <span class="badge">✍️ Hands-on Training</span>
        <span class="badge">🧠 AI-Enhanced</span>
        <span class="badge">📊 Interactive</span>
    </div>
    <div class="logos">
        <img src="assets/logos/fiji-logo.png" alt="Fiji Logo">
        <img src="assets/logos/ilastik-logo.png" alt="ilastik Logo">
        <img src="assets/logos/chatgpt-logo.webp" alt="ChatGPT Logo">
    </div>
</div>

<!-- Quick Navigation -->
<nav class="quick-nav">
    <ul>
        <li><a href="#schedule">Schedule</a></li>
        <li><a href="#objectives">Objectives</a></li>
        <li><a href="#installation">Setup</a></li>
        <li><a href="#materials">Materials</a></li>
        <li><a href="#macros">Macros</a></li>
        <li><a href="#tips">Tips</a></li>
        <li><a href="#faq">FAQ</a></li>
        <li><a href="#contact">Contact</a></li>
    </ul>
    <button class="theme-toggle" id="themeToggle">
        <span id="themeIcon">🌙</span>
        <span id="themeText">Dark</span>
    </button>
</nav>

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

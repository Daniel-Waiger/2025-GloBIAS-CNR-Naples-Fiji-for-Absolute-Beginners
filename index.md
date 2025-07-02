---
layout: default
title: Fiji and Friends for Beginners Workshop - GloBIAS & CNR Naples 2025
description: Fluorescence Image Analysis Workshop Materials
---

<style>
/* Single Page Website Enhancements */
html {
  scroll-behavior: smooth;
}

.hero-section {
  text-align: center;
  padding: 4rem 2rem;
  background: linear-gradient(135deg, var(--navbar-bg) 0%, var(--background-color) 100%);
  border-radius: 20px;
  margin-bottom: 3rem;
  position: relative;
  overflow: hidden;
}

.hero-section::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grid" width="10" height="10" patternUnits="userSpaceOnUse"><path d="M 10 0 L 0 0 0 10" fill="none" stroke="rgba(255,255,255,0.03)" stroke-width="0.5"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
  pointer-events: none;
}

.hero-content {
  position: relative;
  z-index: 1;
}

.hero-title {
  font-size: clamp(2rem, 5vw, 4rem);
  margin-bottom: 1rem;
  background: linear-gradient(45deg, var(--text-color), var(--link-color));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: fadeInUp 1s ease-out;
}

.hero-subtitle {
  font-size: clamp(1.2rem, 3vw, 2rem);
  margin-bottom: 2rem;
  opacity: 0.8;
  animation: fadeInUp 1s ease-out 0.2s both;
}

.hero-description {
  font-size: 1.2rem;
  margin: 2rem 0;
  opacity: 0.9;
  animation: fadeInUp 1s ease-out 0.4s both;
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.logo-container {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin: 3rem 0;
  flex-wrap: wrap;
  animation: fadeInUp 1s ease-out 0.6s both;
}

.logo-container img {
  height: 80px;
  transition: transform 0.3s ease, filter 0.3s ease;
  filter: brightness(0.8);
  border-radius: 10px;
}

.logo-container img:hover {
  transform: scale(1.1) rotate(5deg);
  filter: brightness(1.2);
}

.workshop-badges {
  display: flex;
  justify-content: center;
  gap: 1rem;
  margin: 2rem 0;
  flex-wrap: wrap;
}

.badge {
  background: var(--link-color);
  color: var(--background-color);
  padding: 0.5rem 1rem;
  border-radius: 25px;
  font-size: 0.9rem;
  font-weight: bold;
}

.quick-nav {
  position: sticky;
  top: 0;
  background: var(--navbar-bg);
  padding: 1rem;
  border-radius: 0 0 15px 15px;
  margin: 0 -2rem 2rem -2rem;
  z-index: 100;
  box-shadow: 0 2px 10px rgba(0,0,0,0.2);
}

.quick-nav ul {
  list-style: none;
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin: 0;
  padding: 0;
  flex-wrap: wrap;
}

.quick-nav a {
  color: var(--text-color);
  text-decoration: none;
  padding: 0.5rem 1rem;
  border-radius: 25px;
  transition: all 0.3s ease;
}

.quick-nav a:hover {
  background: var(--button-hover-bg);
  transform: translateY(-2px);
}

.navigation-cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 3rem 0;
}

.nav-card {
  background: var(--button-bg);
  padding: 2rem;
  border-radius: 15px;
  text-align: center;
  transition: all 0.3s ease;
  border: 2px solid transparent;
  position: relative;
  overflow: hidden;
}

.nav-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.1), transparent);
  transition: left 0.5s;
}

.nav-card:hover::before {
  left: 100%;
}

.nav-card:hover {
  transform: translateY(-10px);
  background: var(--button-hover-bg);
  border-color: var(--link-color);
  box-shadow: 0 20px 40px rgba(0,0,0,0.2);
}

.nav-card h3 {
  color: var(--text-color);
  margin-bottom: 1rem;
  font-size: 1.5rem;
}

.nav-card p {
  color: var(--button-text);
  margin-bottom: 1.5rem;
}

.btn {
  display: inline-block;
  padding: 1rem 2rem;
  background: var(--link-color);
  color: var(--background-color);
  text-decoration: none;
  border-radius: 50px;
  font-weight: bold;
  transition: all 0.3s ease;
  border: none;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}

.btn::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
  transition: left 0.5s;
}

.btn:hover::before {
  left: 100%;
}

.btn:hover {
  background: var(--text-color);
  transform: translateY(-2px);
  box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}

.schedule-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
  gap: 2rem;
  margin: 3rem 0;
}

.day-card {
  background: var(--navbar-bg);
  padding: 2rem;
  border-radius: 15px;
  border-left: 5px solid var(--link-color);
  transition: all 0.3s ease;
}

.day-card:hover {
  transform: translateX(5px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.2);
}

.day-card h3 {
  color: var(--link-color);
  margin-bottom: 1.5rem;
  font-size: 1.4rem;
}

.session {
  background: var(--button-bg);
  padding: 1rem;
  margin: 1rem 0;
  border-radius: 10px;
  border-left: 3px solid var(--text-color);
  transition: all 0.3s ease;
}

.session:hover {
  transform: translateX(5px);
  background: var(--button-hover-bg);
}

.session-time {
  font-weight: bold;
  color: var(--link-color);
}

.session-title {
  margin: 0.5rem 0;
  color: var(--text-color);
}

.session-instructor {
  font-style: italic;
  opacity: 0.8;
  font-size: 0.9rem;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
  margin: 3rem 0;
}

.feature-card {
  background: var(--button-bg);
  padding: 2rem;
  border-radius: 15px;
  text-align: center;
  transition: all 0.3s ease;
  border: 2px solid transparent;
}

.feature-card:hover {
  transform: translateY(-5px);
  background: var(--button-hover-bg);
  border-color: var(--link-color);
}

.feature-icon {
  font-size: 3rem;
  margin-bottom: 1rem;
  transition: transform 0.3s ease;
}

.feature-card:hover .feature-icon {
  transform: scale(1.1) rotate(10deg);
}

.installation-steps {
  background: var(--navbar-bg);
  padding: 2rem;
  border-radius: 15px;
  margin: 2rem 0;
}

.step {
  display: flex;
  align-items: flex-start;
  margin: 1.5rem 0;
  padding: 1rem;
  background: var(--button-bg);
  border-radius: 10px;
  transition: all 0.3s ease;
}

.step:hover {
  transform: translateX(10px);
  background: var(--button-hover-bg);
}

.step-number {
  background: var(--link-color);
  color: var(--background-color);
  width: 30px;
  height: 30px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: bold;
  margin-right: 1rem;
  flex-shrink: 0;
}

.step-content h4 {
  margin: 0 0 0.5rem 0;
  color: var(--text-color);
}

.step-content p {
  margin: 0;
  color: var(--button-text);
}

.trainers-section {
  background: var(--navbar-bg);
  padding: 3rem 2rem;
  border-radius: 20px;
  text-align: center;
  margin: 3rem 0;
}

.trainers-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.trainer-card {
  background: var(--button-bg);
  padding: 1.5rem;
  border-radius: 15px;
  text-align: center;
}

.workshop-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  margin: 3rem 0;
}

.stat-card {
  background: var(--button-bg);
  padding: 2rem 1rem;
  border-radius: 15px;
  text-align: center;
}

.stat-number {
  font-size: 2.5rem;
  font-weight: bold;
  color: var(--link-color);
  margin-bottom: 0.5rem;
}

.stat-label {
  color: var(--text-color);
  font-size: 0.9rem;
}

.objectives-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 3rem 0;
}

.objective-card {
  background: var(--button-bg);
  padding: 1.5rem;
  border-radius: 15px;
  border-left: 4px solid var(--link-color);
  transition: all 0.3s ease;
}

.objective-card:hover {
  transform: translateX(10px);
  background: var(--button-hover-bg);
}

.faq-section {
  background: var(--navbar-bg);
  padding: 2rem;
  border-radius: 15px;
  margin: 3rem 0;
}

.faq-item {
  background: var(--button-bg);
  margin: 1rem 0;
  border-radius: 10px;
  overflow: hidden;
  transition: all 0.3s ease;
}

.faq-question {
  padding: 1rem;
  cursor: pointer;
  font-weight: bold;
  color: var(--text-color);
  background: var(--button-bg);
  border: none;
  width: 100%;
  text-align: left;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.faq-question:hover {
  background: var(--button-hover-bg);
}

.faq-answer {
  padding: 0 1rem 1rem 1rem;
  color: var(--button-text);
  display: none;
}

.faq-item.active .faq-answer {
  display: block;
}

.tips-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.tip-card {
  background: var(--button-bg);
  padding: 1.5rem;
  border-radius: 10px;
  border-left: 3px solid var(--link-color);
  transition: all 0.3s ease;
}

.tip-card:hover {
  transform: translateX(5px);
  background: var(--button-hover-bg);
}

.contact-section {
  background: var(--navbar-bg);
  padding: 3rem 2rem;
  border-radius: 20px;
  text-align: center;
  margin: 3rem 0;
}

.back-to-top {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  background: var(--link-color);
  color: var(--background-color);
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  text-decoration: none;
  font-size: 1.5rem;
  transition: all 0.3s ease;
  opacity: 0;
  visibility: hidden;
  z-index: 1000;
}

.back-to-top.visible {
  opacity: 1;
  visibility: visible;
}

.back-to-top:hover {
  transform: translateY(-5px);
  background: var(--text-color);
}

@media (max-width: 768px) {
  .hero-section {
    padding: 2rem 1rem;
  }
  
  .navigation-cards,
  .schedule-grid,
  .features-grid {
    grid-template-columns: 1fr;
  }
  
  .logo-container {
    gap: 1rem;
  }
  
  .logo-container img {
    height: 60px;
  }
  
  .quick-nav {
    margin: 0 -1rem 2rem -1rem;
  }
  
  .quick-nav ul {
    gap: 1rem;
  }
  
  .quick-nav a {
    padding: 0.3rem 0.8rem;
    font-size: 0.8rem;
  }
}
</style>

<!-- Hero Section -->
<div id="hero" class="hero-section">
  <div class="hero-content">
    <h1 class="hero-title">🧬 Fiji for Absolute Beginners</h1>
    <h2 class="hero-subtitle">GloBIAS & CNR Naples 2025 Workshop</h2>
    
    <div class="workshop-badges">
      <span class="badge">🗓️ July 7-11, 2025</span>
      <span class="badge">🧪 Hands-on Training</span>
      <span class="badge">🤖 AI-Enhanced</span>
      <span class="badge">📊 Interactive</span>
    </div>
    
    <div class="logo-container">
      <a href="https://imagej.net/software/fiji/" target="_blank">
        <img src="assets/logos/fiji-logo.png" alt="Fiji" title="ImageJ/Fiji">
      </a>
      <a href="https://www.ilastik.org/" target="_blank">
        <img src="assets/logos/ilastik-logo.png" alt="ilastik" title="ilastik Interactive Segmentation">
      </a>
      <a href="https://chat.openai.com/" target="_blank">
        <img src="assets/logos/chatgpt-logo.webp" alt="ChatGPT" title="AI-Enhanced Analysis">
      </a>
    </div>

    <p class="hero-description">
      Intensive fluorescence image analysis workshop with hands-on sessions, interactive segmentation, and AI-enhanced macro development.
    </p>
    
    <a href="https://globias-bioimageanalysts.github.io/Fluorescence_image_analysis_workshop-GloBIAS_CNR_Naples_2025/" target="_blank" class="btn">
      🌐 Main Workshop Website - For the full programme
    </a>
  </div>
</div>

<!-- Quick Navigation -->
<nav class="quick-nav">
  <ul>
    <li><a href="#schedule">📅 Schedule</a></li>
    <li><a href="#objectives">🎯 Objectives</a></li>
    <li><a href="#installation">🔧 Setup</a></li>
    <li><a href="#materials">📚 Materials</a></li>
    <li><a href="#macros">⚡ Macros</a></li>
    <li><a href="#tips">💡 Tips</a></li>
    <li><a href="#faq">❓ FAQ</a></li>
  </ul>
  <button class="theme-toggle" id="themeToggle">
    <span id="themeIcon">🌙</span>
    <span id="themeText">Dark</span>
  </button>
</nav>

## 📅 Detailed Schedule

<div id="schedule" class="schedule-grid">
  <div class="day-card">
    <h3>📅 Day 1 – Monday, July 7th, 2025</h3>
    <div class="session">
      <div class="session-time">13:00–14:00</div>
      <div class="session-title">Introduction to FIJI</div>
      <div class="session-instructor">📊 <a href="slides/Day1/01_Introduction_to_Image_Analysis.pptx">Slides Available</a></div>
    </div>
    <div class="session">
      <div class="session-time">14:00–15:00</div>
      <div class="session-title">Showcase of FIJI plugins for bioimage analysis</div>
      <div class="session-instructor">with Ana Stojiljković</div>
    </div>
    <div class="session">
      <div class="session-time">15:30–16:30</div>
      <div class="session-title">ilastik for interactive segmentation</div>
      <div class="session-instructor">📁 <a href="slides/Day1/">Day 1 Materials Available</a></div>
    </div>
  </div>
  
  <div class="day-card">
    <h3>📅 Day 2 – Tuesday, July 8th, 2025</h3>
    <div class="session">
      <div class="session-time">09:30–10:30</div>
      <div class="session-title">Automatisation of bioimage analysis with ImageJ macro powered by large language models</div>
      <div class="session-instructor">📊 <a href="slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx">Slides Available</a></div>
    </div>
    <div class="session">
      <div class="session-time">11:00–12:00</div>
      <div class="session-title">ImageJ macro practical session</div>
      <div class="session-instructor">with Daniel Waiger and Ana Stojiljković • 📊 <a href="slides/Day2/2020418_ImageJMacro.pdf">Programming Guide</a> • 📄 <a href="macros/">Macros Available</a></div>
    </div>
    </div>
    <div class="session">
      <div class="session-time">15:30–17:00</div>
      <div class="session-title">Project working groups</div>
      <div class="session-instructor">with Sebastian Gonzalez Tirado</div>
    </div>
  </div>
</div>

## 🎯 Learning Objectives

<div id="objectives" class="objectives-grid">
  <div class="objective-card">
    <h4>🖼️ ImageJ/Fiji Fundamentals</h4>
    <p>Master image loading, bit-depth conversion, and understand how different formats affect analysis</p>
  </div>
  <div class="objective-card">
    <h4>📊 Intensity Analysis</h4>
    <p>Learn to interpret intensity histograms and understand scaling effects on measurements</p>
  </div>
  <div class="objective-card">
    <h4>🎨 Visualization</h4>
    <p>Apply contrast adjustments and LUTs to enhance image visualization and interpretation</p>
  </div>
  <div class="objective-card">
    <h4>📏 ROI Tools</h4>
    <p>Use region of interest tools for precise intensity measurements and analysis</p>
  </div>
  <div class="objective-card">
    <h4>📐 Spatial Calibration</h4>
    <p>Set proper spatial calibrations and add professional scale bars to images</p>
  </div>
  <div class="objective-card">
    <h4>🔍 Segmentation</h4>
    <p>Perform automatic segmentation and particle analysis for quantitative results</p>
  </div>
  <div class="objective-card">
    <h4>🎭 Region Masking</h4>
    <p>BONUS: Advanced techniques for region masking and batch processing workflows</p>
  </div>
  <div class="objective-card">
    <h4>🤖 AI Integration</h4>
    <p>Leverage AI tools to enhance macro development and automate complex workflows</p>
  </div>
</div>

## 🔧 Installation & Setup Instructions

<div id="installation" class="installation-steps">
  <h3>Pre-Workshop Requirements</h3>
  <p>Install these tools before the workshop begins:</p>

  <div class="step">
    <div class="step-number">1</div>
    <div class="step-content">
      <h4>🔬 Fiji (ImageJ)</h4>
      <p>Download from <a href="https://fiji.sc/" target="_blank">fiji.sc</a>. Choose your OS version (Windows/Mac/Linux), extract and run. No additional setup required.</p>
    </div>
  </div>

  <div class="step">
    <div class="step-number">2</div>
    <div class="step-content">
      <h4>🧩 Plugin Update Sites</h4>
      <p>In Fiji: Help → Update → Manage Update Sites. Enable: CLIJ, StarDist, CSBDeep,TrackMate, PT-BIOP. Restart after updates.</p>
    </div>
  </div>

  <div class="step">
    <div class="step-number">3</div>
    <div class="step-content">
      <h4>🤖 ilastik Interactive Segmentation</h4>
      <p>Download from <a href="https://www.ilastik.org/download.html" target="_blank">ilastik.org</a>. Install appropriate version for your OS and test launch.</p>
    </div>
  </div>

  <div class="step">
    <div class="step-number">4</div>
    <div class="step-content">
      <h4>🧠 ChatGPT Account</h4>
      <p>Sign up at <a href="https://chat.openai.com/" target="_blank">chat.openai.com</a>. Free account sufficient for workshop AI macro development.</p>
    </div>
  </div>

  <div class="step">
    <div class="step-number">5</div>
    <div class="step-content">
      <h4>📝 Text Editor</h4>
      <p>Install VS Code or use Fiji's built-in Script Editor for macro editing and development.</p>
    </div>
  </div>

  <div class="step">
    <div class="step-number">6</div>
    <div class="step-content">
      <h4>📁 Workshop Materials</h4>
      <p>Clone or download this repository to access all sample images, macros, and training materials.</p>
    </div>
  </div>
</div>


## 💡 Good to Know - Tips & Shortcuts

<div id="tips" class="tips-grid">
  <div class="tip-card">
    <h4>⌨️ Essential Shortcuts</h4>
    <ul>
      <li><code>Ctrl+O</code> - Open Image</li>
      <li><code>Ctrl+Shift+C</code> - Brightness and Contrast Plugin</li>
      <li><code>Ctrl+Shift+T</code> - Threshold Plugin</li>
      <li><code>M</code> - Measure</li>
    </ul>
  </div>
  <div class="tip-card">
    <h4>🎯 Quick Tips</h4>
    <ul>
      <li>Always duplicate original images before processing</li>
      <li>Use meaningful file naming conventions</li>
      <li>Save ROI sets for reproducible analysis</li>
      <li>Document your analysis pipeline</li>
    </ul>
  </div>
  <div class="tip-card">
    <h4>🔧 Troubleshooting</h4>
    <ul>
      <li>Check image bit-depth before analysis</li>
      <li>Verify spatial calibration settings</li>
      <li>Use "Undo" liberally while learning</li>
      <li>Save macros for repeated workflows</li>
    </ul>
  </div>
  <div class="tip-card">
    <h4>📚 Best Practices</h4>
    <ul>
      <li>Start with simple analysis workflows</li>
      <li>Test parameters on sample images</li>
      <li>Keep detailed analysis logs</li>
      <li>Validate results with manual counts</li>
    </ul>
  </div>
</div>

## ❓ Frequently Asked Questions

<div id="faq" class="faq-section">
  <div class="faq-item">
    <button class="faq-question">
      Do I need programming experience?
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p>No programming experience required! This workshop is designed for absolute beginners. We'll start with basic concepts and gradually build up to macro development with AI assistance.</p>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      What operating system do you support?
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p>Fiji and ilastik run on Windows, Mac, and Linux. All workshop materials are OS-independent. We'll provide installation help for all platforms.</p>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      Can I use my own images?
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p>Absolutely! While we provide sample images for training, you're encouraged to bring your own fluorescence images to work with during practical sessions.</p>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      Will materials be available after the workshop?
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p>Yes! This GitHub repository will remain available indefinitely. All slides, macros, sample images, and documentation can be accessed anytime.</p>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      Is there ongoing support after the workshop?
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p>
        Yes! You can post questions on <a href="https://forum.image.sc/" target="_blank">image.sc</a>—the global forum for bioimage analysis. We encourage you to ask questions there or via GitHub issues on this repository.
      </p>
    </div>
  </div>
</div>

## 📚 Workshop Materials & Downloads

<div id="materials" class="installation-steps">
  <h3>Complete Resource Library</h3>
  <p>All workshop materials are available directly from this repository. Download or browse as needed:</p>

  <div class="step">
    <div class="step-number">📊</div>
    <div class="step-content">
      <h4>Presentation Slides</h4>
      <strong>Day 1 Materials:</strong>
      <ul>
        <li><a href="slides/Day1/01_Introduction_to_Image_Analysis.pptx">Introduction to Image Analysis</a></li>
        <li><a href="slides/Day1/Ilastik%20%E2%80%93%20The%20Interactive%20Learning%20And%20Segmentation%20Toolkit.pptx">ilastik Interactive Segmentation</a></li>
        <li><a href="slides/Day1/mitocheck/">Mitocheck Dataset</a> - Cell tracking examples</li>
      </ul>
      <strong>Day 2 Materials:</strong>
      <ul>
        <li><a href="slides/Day2/Enhancing_Image_Analysis_Communication_with_ChatGPT_with_Speaker_Notes.pptx">ChatGPT for Image Analysis</a></li>
        <li><a href="slides/Day2/2020418_ImageJMacro.pdf">ImageJ Macro Programming Guide</a></li>
        <li><a href="slides/Day2/FDA_vs_PI_Scatter_Plot_Combined.html">FDA vs PI Analysis</a> - Interactive visualization</li>
        <li><a href="slides/Day2/Tuna_Analysis_Protocol_Modern.html">Tuna Analysis Protocol</a> - Complete workflow</li>
      </ul>
    </div>
  </div>

  <div class="step">
    <div class="step-number">🖼️</div>
    <div class="step-content">
      <h4>Sample Images</h4>
      <p>Practice with our curated collection of biological images:</p>
      <ul>
        <li><code>1703.tif</code> - Multi-channel fluorescence</li>
        <li><code>blobs.tif</code> & <code>blobs_noise.tif</code> - Segmentation practice</li>
        <li><code>cells_ActinDNA.tif</code> - Cellular structures</li>
        <li><code>FluorescentCells.tif</code> - Cell analysis</li>
        <li><code>H&E.tif</code> - Histology sample</li>
        <li><code>RGB_cell.tif</code> - Color image processing</li>
        <li><code>m51.tif</code> - Advanced analysis</li>
        <li><code>gel_inv.tif</code> - Gel electrophoresis</li>
      </ul>
      <p><strong>Location:</strong> <code>images/</code> folder in repository</p>
    </div>
  </div>

  <div class="step">
    <div class="step-number">📖</div>
    <div class="step-content">
      <h4>Training Manuals</h4>
      <ul>
        <li><a href="manuals/FIJI%20training.pdf">FIJI Training Manual</a> - Complete guide (PDF)</li>
        <li><a href="manuals/FIJI%20training.docx">FIJI Training Manual</a> - Editable version (DOCX)</li>
      </ul>
    </div>
  </div>

  <div class="step">
    <div class="step-number">🐍</div>
    <div class="step-content">
      <h4>Python Scripts</h4>
      <p>Advanced analysis tools for Python users:</p>
      <ul>
        <li><a href="python%20library/Script%201%20-%20Bit%20Depth%20Examples.py">Bit Depth Examples</a></li>
        <li><a href="python%20library/Script%202%20-%20Overlay%20on%20Original%20Image.py">Image Overlay Script</a></li>
        <li><a href="python%20library/Script%202%20-%20Overlay%20on%20Original%20Image%20-%20all%20bit%20depths.py">Multi-bit Depth Overlay</a></li>
      </ul>
    </div>
  </div>

  <div class="step">
    <div class="step-number">🔬</div>
    <div class="step-content">
      <h4>Advanced Workflows & Examples</h4>
      <ul>
        <li><a href="slides/Day1/mitocheck/">Mitocheck Dataset</a> - Cell tracking examples</li>
        <li><a href="slides/Day2/FDA_vs_PI_Scatter_Plot_Combined.html">FDA vs PI Analysis</a> - Interactive visualization</li>
        <li><a href="slides/Day2/Tuna_Analysis_Protocol_Modern.html">Tuna Analysis Protocol</a> - Complete workflow</li>
      </ul>
    </div>
  </div>
</div>

## ⚡ ImageJ Macro Library

<div id="macros" class="faq-section">
  <h3>Complete Macro Collection</h3>
  <p>Ready-to-use ImageJ macros for common bioimage analysis tasks:</p>

  <div class="faq-item">
    <button class="faq-question">
      01_image_info_conversion.ijm - Image Basics
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Learn image properties, bit-depth conversion, and basic image manipulation</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Display image dimensions and properties</li>
        <li>Convert between 8-bit, 16-bit, and 32-bit formats</li>
        <li>Understand how bit-depth affects analysis</li>
      </ul>
      <a href="macros/01_image_info_conversion.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      02_histogram_profiles.ijm - Intensity Analysis
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Analyze intensity distributions and create profile plots</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Generate intensity histograms</li>
        <li>Create line profile plots</li>
        <li>Understand intensity scaling effects</li>
      </ul>
      <a href="macros/02_histogram_profiles.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      03_brightness_contrast.ijm - Image Enhancement
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Master brightness/contrast adjustments and visualization</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Adjust display range without changing data</li>
        <li>Apply auto-contrast and normalization</li>
        <li>Understand display vs. data modifications</li>
      </ul>
      <a href="macros/03_brightness_contrast.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      04_channels_LUTs.ijm - Multi-channel Imaging
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Handle multi-channel images and apply appropriate color schemes</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Split and merge color channels</li>
        <li>Apply lookup tables (LUTs) for visualization</li>
        <li>Create composite images</li>
      </ul>
      <a href="macros/04_channels_LUTs.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      05_roi_measurement.ijm - Region Analysis
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Create regions of interest and perform quantitative measurements</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Draw and manage ROIs (circles, rectangles, polygons)</li>
        <li>Measure area, intensity, and other parameters</li>
        <li>Save and load ROI sets</li>
      </ul>
      <a href="macros/05_roi_measurement.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      06_set_scale_bar.ijm - Spatial Calibration
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Set proper spatial calibration and add professional scale bars</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Set pixel size and units (μm, nm, etc.)</li>
        <li>Add calibrated scale bars</li>
        <li>Convert measurements to real-world units</li>
      </ul>
      <a href="macros/06_set_scale_bar.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      07_segmentation_particles.ijm - Automated Analysis
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Perform automatic segmentation and particle analysis</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Threshold images for segmentation</li>
        <li>Analyze particles (count, size, shape)</li>
        <li>Filter results by size and circularity</li>
      </ul>
      <a href="macros/07_segmentation_particles.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      08_masking_regions.ijm - Advanced Masking
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Create and apply masks for selective analysis</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Create binary masks from thresholds</li>
        <li>Apply masks to limit analysis regions</li>
        <li>Combine multiple masks with boolean operations</li>
      </ul>
      <a href="macros/08_masking_regions.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>

  <div class="faq-item">
    <button class="faq-question">
      09_ctcf_fluorescence.ijm - Fluorescence Quantification
      <span>+</span>
    </button>
    <div class="faq-answer">
      <p><strong>Purpose:</strong> Calculate Corrected Total Cell Fluorescence (CTCF) for accurate quantification</p>
      <p><strong>Key Functions:</strong></p>
      <ul>
        <li>Measure integrated density and background</li>
        <li>Calculate CTCF = Integrated Density - (Area × Mean Background)</li>
        <li>Export results for statistical analysis</li>
      </ul>
      <a href="macros/09_ctcf_fluorescence.ijm" class="btn" style="margin-top: 1rem;">Download Macro</a>
    </div>
  </div>
</div>

---

<div style="text-align: center; margin: 3rem 0; padding: 2rem; background: var(--navbar-bg); border-radius: 15px;">
  <h2>🚀 Ready to Begin?</h2>
  <p style="font-size: 1.1rem; margin: 1rem 0;">Everything you need is right here on this page!</p>
  <div style="display: flex; justify-content: center; gap: 2rem; margin: 2rem 0; flex-wrap: wrap;">
    <a href="#schedule" class="btn">📅 View Schedule</a>
    <a href="#materials" class="btn">📚 Download Materials</a>
    <a href="#macros" class="btn">⚡ Get Macros</a>
    <a href="#installation" class="btn">🔧 Setup Guide</a>
    <a href="#tips" class="btn">💡 Tips & FAQ</a>
  </div>
  <p style="margin-top: 2rem; opacity: 0.8;">
    <strong>Note:</strong> All original organized folders have been moved to the <code>archive/</code> directory for reference.
  </p>
</div>

<!-- Back to Top Button -->
<a href="#hero" class="back-to-top" id="backToTop">↑</a>

<script>
// FAQ Accordion functionality
document.querySelectorAll('.faq-question').forEach(button => {
  button.addEventListener('click', () => {
    const faqItem = button.parentElement;
    const isActive = faqItem.classList.contains('active');
    
    // Close all FAQ items
    document.querySelectorAll('.faq-item').forEach(item => {
      item.classList.remove('active');
      item.querySelector('.faq-question span').textContent = '+';
    });
    
    // Open clicked item if it wasn't active
    if (!isActive) {
      faqItem.classList.add('active');
      button.querySelector('span').textContent = '−';
    }
  });
});

// Back to top button functionality
window.addEventListener('scroll', () => {
  const backToTop = document.getElementById('backToTop');
  if (window.pageYOffset > 300) {
    backToTop.classList.add('visible');
  } else {
    backToTop.classList.remove('visible');
  }
});

// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      target.scrollIntoView({
        behavior: 'smooth',
        block: 'start'
      });
    }
  });
});
</script>

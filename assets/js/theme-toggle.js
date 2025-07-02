document.addEventListener('DOMContentLoaded', function() {
    // Theme toggle functionality
    let themeToggle = document.getElementById('themeToggle');
    let themeIcon = document.getElementById('themeIcon');
    let themeText = document.getElementById('themeText');
    
    // Load saved theme or default to dark
    const savedTheme = localStorage.getItem('theme') || 'dark';
    document.documentElement.setAttribute('data-theme', savedTheme);
    
    // Create theme toggle button if it doesn't exist (fallback for non-index pages)
    if (!themeToggle) {
        themeToggle = document.createElement('button');
        themeToggle.id = 'themeToggle';
        themeToggle.className = 'theme-toggle';
        themeToggle.setAttribute('aria-label', 'Toggle theme');
        themeToggle.innerHTML = '<span id="themeIcon">' + (savedTheme === 'dark' ? '☀️' : '🌙') + '</span><span id="themeText">' + (savedTheme === 'dark' ? 'Light' : 'Dark') + '</span>';
        document.body.appendChild(themeToggle);
        themeIcon = document.getElementById('themeIcon');
        themeText = document.getElementById('themeText');
    }
    
    // Set initial button content
    updateThemeButton(savedTheme);
    
    // Add click event listener
    themeToggle.addEventListener('click', function() {
        const currentTheme = document.documentElement.getAttribute('data-theme');
        const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
        
        document.documentElement.setAttribute('data-theme', newTheme);
        localStorage.setItem('theme', newTheme);
        
        // Update button content
        updateThemeButton(newTheme);
    });
    
    function updateThemeButton(theme) {
        if (themeIcon && themeText) {
            if (theme === 'dark') {
                themeIcon.textContent = '☀️';
                themeText.textContent = 'Light';
            } else {
                themeIcon.textContent = '🌙';
                themeText.textContent = 'Dark';
            }
        } else if (themeToggle) {
            // Fallback for simple button
            themeToggle.innerHTML = theme === 'dark' ? '☀️' : '🌙';
        }
    }
    
    // Smooth scrolling for navigation links (support for index.md navigation)
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
});

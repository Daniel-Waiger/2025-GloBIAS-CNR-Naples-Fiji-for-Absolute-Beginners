<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website Building Project</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <main>
        <header>
            <h1>Website Building Project</h1>
            <p>This project provides a framework for building responsive, theme-adaptive websites using a customizable CSS stylesheet.</p>
        </header>

        <section>
            <h2>Features</h2>
            <ul>
                <li>Fully customizable light and dark themes using CSS variables.</li>
                <li>Responsive design with adaptive navigation bar and layout.</li>
                <li>Predefined styles for buttons, links, sections, and lists.</li>
                <li>Support for both desktop and mobile views with media queries.</li>
                <li>Theme toggle support for dynamic user experience adjustments.</li>
            </ul>
        </section>

        <section>
            <h2>Getting Started</h2>
            <p>Follow these steps to integrate the project into your website:</p>
            <ol>
                <li>Clone the repository:
                    <pre><code>git clone https://github.com/username/website-building-project.git</code></pre>
                </li>
                <li>Include the `styles.css` file in your HTML:
                    <pre><code>&lt;link rel="stylesheet" href="styles.css"&gt;</code></pre>
                </li>
                <li>Customize theme variables in the <code>:root</code> section for your branding.</li>
                <li>Use the provided HTML structure and CSS classes for a consistent design.</li>
            </ol>
        </section>

        <section>
            <h2>CSS Highlights</h2>
            <p>The included <code>styles.css</code> file supports:</p>
            <ul>
                <li><strong>Theme Variables:</strong> Adjust <code>--background-color</code>, <code>--text-color</code>, and others for light and dark themes.</li>
                <li><strong>Responsive Navbar:</strong> A collapsible navigation bar that adapts to mobile and desktop layouts.</li>
                <li><strong>Media Queries:</strong> Breakpoints for screens <code>≤ 768px</code> and <code>≤ 480px</code>.</li>
                <li><strong>Reusable Elements:</strong> Styles for sections, lists, buttons, and links.</li>
            </ul>
        </section>

        <section>
            <h2>Usage Example</h2>
            <p>Here’s a sample structure using the stylesheet:</p>
            <pre><code>
&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
    &lt;link rel="stylesheet" href="styles.css"&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;nav class="navbar"&gt;
        &lt;a href="#home" class="active"&gt;Home&lt;/a&gt;
        &lt;a href="#about"&gt;About&lt;/a&gt;
        &lt;a href="#contact"&gt;Contact&lt;/a&gt;
    &lt;/nav&gt;
    &lt;main&gt;
        &lt;section&gt;Welcome to our website!&lt;/section&gt;
    &lt;/main&gt;
&lt;/body&gt;
&lt;/html&gt;
            </code></pre>
        </section>

        <section>
            <h2>Contributing</h2>
            <p>We welcome contributions! Follow these steps:</p>
            <ol>
                <li>Fork the repository.</li>
                <li>Create a new branch for your feature:
                    <pre><code>git checkout -b feature-name</code></pre>
                </li>
                <li>Commit your changes:
                    <pre><code>git commit -m "Add feature"</code></pre>
                </li>
                <li>Push to your branch:
                    <pre><code>git push origin feature-name</code></pre>
                </li>
                <li>Submit a pull request.</li>
            </ol>
        </section>

        <section>
            <h2>License</h2>
            <p>This project is licensed under the MIT License. See the LICENSE file for details.</p>
        </section>

        <footer>
            <p>Created by [Your Name]. Contact: <a href="mailto:your.email@example.com">your.email@example.com</a></p>
        </footer>
    </main>
</body>
</html>

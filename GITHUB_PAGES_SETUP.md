# GitHub Pages Setup Guide

This repository is configured to automatically deploy as a GitHub Pages website. Follow these steps to activate it:

## Steps to Activate GitHub Pages

### 1. Push to GitHub
First, commit and push all the files to your GitHub repository:

```bash
git add .
git commit -m "Add GitHub Pages configuration"
git push origin main
```

### 2. Enable GitHub Pages
1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section in the left sidebar
4. Under **Source**, select "GitHub Actions"
5. The site will automatically deploy when you push changes

### 3. Access Your Site
Your site will be available at:
```
https://Daniel-Waiger.github.io/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/
```

## What's Included

### Files Added for GitHub Pages:
- `_config.yml` - Jekyll configuration
- `index.md` - Home page that displays your README content
- `.github/workflows/pages.yml` - Automatic deployment workflow
- `_layouts/default.html` - Custom layout with navigation

### Features:
- ✅ Automatic deployment on every push
- ✅ Custom navigation menu
- ✅ Responsive design
- ✅ Proper styling for code blocks and tables
- ✅ Logo display
- ✅ SEO optimization

## Customization Options

### Change Theme
Edit `_config.yml` and change the `theme` line to one of these:
- `jekyll-theme-minimal`
- `jekyll-theme-cayman` 
- `jekyll-theme-slate`
- `jekyll-theme-architect`

### Update Site URL
In `_config.yml`, change:
```yaml
baseurl: "/your-repository-name"
url: "https://yourusername.github.io"
```

### Custom Domain (Optional)
1. Add a `CNAME` file with your domain name
2. Configure DNS settings with your domain provider
3. Enable "Enforce HTTPS" in GitHub Pages settings

## Alternative Setup (Manual)

If you prefer manual setup without the workflow:

1. Go to Settings → Pages
2. Select "Deploy from a branch"
3. Choose "main" branch and "/ (root)" folder
4. Your site will deploy automatically

## Troubleshooting

### 404 Error - Site Not Found

If you're getting a 404 error, try these steps in order:

#### 1. Check GitHub Pages Status
1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Look for the status message:
   - ✅ "Your site is published at..." = Working
   - 🔄 "GitHub Pages is currently being built..." = Building
   - ❌ Error message = Check Actions tab

#### 2. Verify Repository Settings
1. Make sure your repository is **public** (private repos need GitHub Pro for Pages)
2. Check that the repository name matches exactly: `2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners`
3. Verify your username is correct in the URL

#### 3. Check GitHub Actions
1. Go to **Actions** tab in your repository
2. Look for failed builds (red X icons)
3. Click on any failed build to see error details
4. Common issues:
   - Missing `index.md` file
   - Syntax errors in `_config.yml`
   - Invalid YAML front matter

#### 4. Try Alternative URLs
If the main URL doesn't work, try:
- Without trailing slash: `https://Daniel-Waiger.github.io/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners`
- With index.html: `https://Daniel-Waiger.github.io/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/index.html`
- Check if it's live at GitHub's CDN: Go to Settings → Pages and click the link shown there

#### 5. Wait for Propagation
- GitHub Pages can take 5-10 minutes to deploy after first setup
- Changes can take 1-2 minutes to appear after pushes

#### 6. Quick Fix: Simplify Setup
If still having issues, try this minimal approach:

1. **Rename README.md to index.md**:
```bash
mv README.md index.md
```

2. **Create minimal _config.yml**:
```yaml
title: "Fiji for Beginners Workshop"
baseurl: "/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners"
url: "https://Daniel-Waiger.github.io"
```

3. **Push and test**:
```bash
git add .
git commit -m "Simplify GitHub Pages setup"
git push origin main
```

### Other Common Issues

- **Site not loading?** Check the Actions tab for build errors
- **Images not showing?** Ensure all image paths are relative (start with `assets/` not `/assets/`)
- **Styling issues?** Clear browser cache and check console for errors
- **Links broken?** Make sure all internal links use relative paths

## Local Development (Optional)

To test locally:
```bash
# Install Jekyll
gem install bundler jekyll

# Install dependencies
bundle install

# Serve locally
bundle exec jekyll serve
```

Visit `http://localhost:4000` to preview your site.

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
https://yourusername.github.io/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/
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

- **Site not loading?** Check the Actions tab for build errors
- **Images not showing?** Ensure all image paths are relative
- **Styling issues?** Clear browser cache and check console for errors

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

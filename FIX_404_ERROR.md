# 🔧 Quick 404 Fix Guide

If you're getting a 404 error, follow these steps **in order**:

## Step 1: Check Repository Status
1. Go to `https://github.com/Daniel-Waiger/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners`
2. Make sure the repository is **PUBLIC** (not private)
3. If it shows a lock icon 🔒, click **Settings** → **General** → scroll to bottom → **Change visibility** → **Make public**

## Step 2: Enable GitHub Pages
1. Go to **Settings** tab in your repository
2. Scroll down and click **Pages** in the left sidebar
3. Under **Source**, select **"GitHub Actions"** (not "Deploy from a branch")
4. If you see "GitHub Actions" is already selected, that's correct

## Step 3: Check Build Status
1. Go to **Actions** tab in your repository
2. Look for the most recent workflow run
3. If you see a ❌ (failed), click on it to see the error
4. If you see a ✅ (success), the site should be working

## Step 4: Try These URLs (in order)
1. First try: `https://Daniel-Waiger.github.io/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/`
2. If that fails: `https://Daniel-Waiger.github.io/2025-GloBIAS-CNR-Naples-Fiji-for-Absolute-Beginners/index.html`
3. Check the exact URL shown in Settings → Pages

## Step 5: Quick Fix (if still not working)
Replace your current `index.md` with a simple version:

1. **Delete current index.md** (if it exists)
2. **Rename backup-index.md to index.md**:
   ```bash
   rm index.md
   mv backup-index.md index.md
   git add .
   git commit -m "Fix index page"
   git push origin main
   ```

## Step 6: Wait
- **First time setup**: 5-10 minutes
- **After changes**: 1-2 minutes

## Emergency Backup Plan
If GitHub Actions isn't working, try the classic method:

1. Go to **Settings** → **Pages**
2. Change Source to **"Deploy from a branch"**
3. Select **"main"** branch and **"/ (root)"** folder
4. Wait 2-3 minutes and try the URL again

## Still Not Working?
Contact me with:
- Your exact repository URL
- Screenshot of Settings → Pages
- Screenshot of Actions tab (any errors)
- The exact error message you see

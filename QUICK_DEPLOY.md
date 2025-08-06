# 🚀 Quick Deployment Guide - Laravel DreamsPOS

## Production APP_KEY
```
base64:a0M17Qv+VsY8zke1z6/7qyDcu7JZwcgAm44XzABvYVk=
```

## Step 1: Create GitHub Repository
1. Go to: https://github.com/new
2. Repository name: `dreamspos-laravel`
3. Make it **public**
4. **DO NOT** initialize with README
5. Click **Create repository**

## Step 2: Push Code to GitHub
After creating the repository, run these commands:

```bash
# Add your repository URL (replace with your actual URL)
git remote add origin https://github.com/YOUR_USERNAME/dreamspos-laravel.git
git branch -M main
git push -u origin main
```

## Step 3: Deploy to Vercel
1. Go to: https://vercel.com/new
2. Sign in with GitHub
3. Import your repository: `dreamspos-laravel`
4. Configure:
   - **Framework Preset**: Other
   - **Root Directory**: `./`
   - **Build Command**: `bash build.sh`
   - **Output Directory**: `public`

## Step 4: Environment Variables in Vercel
Add these environment variables in Vercel dashboard:

```
APP_NAME=DreamsPOS
APP_ENV=production
APP_DEBUG=false
APP_KEY=base64:a0M17Qv+VsY8zke1z6/7qyDcu7JZwcgAm44XzABvYVk=
DB_CONNECTION=sqlite
DB_DATABASE=/tmp/database.sqlite
CACHE_DRIVER=array
SESSION_DRIVER=array
LOG_CHANNEL=stderr
```

## Step 5: Deploy!
Click **Deploy** in Vercel and wait for the build to complete.

## 🎉 Your app will be live at:
`https://your-project-name.vercel.app`

---

## Files Created for Deployment:
- ✅ `vercel.json` - Vercel configuration
- ✅ `api/index.php` - Vercel entry point
- ✅ `build.sh` - Build script
- ✅ `.vercelignore` - Deployment exclusions
- ✅ Git repository initialized and committed

## Ready to Deploy! 🚀
All files are prepared and committed to Git. Just follow the steps above!
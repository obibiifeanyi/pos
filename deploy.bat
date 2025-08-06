@echo off
echo ========================================
echo Laravel DreamsPOS - Complete Deployment
echo ========================================
echo.
echo Production APP_KEY: base64:a0M17Qv+VsY8zke1z6/7qyDcu7JZwcgAm44XzABvYVk=
echo.
echo STEP 1: Create GitHub Repository
echo - Go to: https://github.com/new
echo - Repository name: dreamspos-laravel
echo - Make it public
echo - DO NOT initialize with README
echo - Click 'Create repository'
echo.
pause
echo.
echo STEP 2: Push to GitHub
echo Enter your GitHub repository URL (e.g., https://github.com/username/dreamspos-laravel.git):
set /p REPO_URL="Repository URL: "
echo.
echo Adding remote and pushing...
git remote add origin %REPO_URL%
git branch -M main
git push -u origin main
echo.
echo STEP 3: Deploy to Vercel
echo - Go to: https://vercel.com/new
echo - Sign in with GitHub
echo - Import your repository: dreamspos-laravel
echo - Framework Preset: Other
echo - Root Directory: ./
echo - Build Command: bash build.sh
echo - Output Directory: public
echo.
echo STEP 4: Set Environment Variables in Vercel
echo Add these environment variables:
echo APP_NAME=DreamsPOS
echo APP_ENV=production
echo APP_DEBUG=false
echo APP_KEY=base64:a0M17Qv+VsY8zke1z6/7qyDcu7JZwcgAm44XzABvYVk=
echo DB_CONNECTION=sqlite
echo DB_DATABASE=/tmp/database.sqlite
echo CACHE_DRIVER=array
echo SESSION_DRIVER=array
echo LOG_CHANNEL=stderr
echo.
echo STEP 5: Deploy!
echo Click 'Deploy' in Vercel
echo.
echo ========================================
echo Deployment Complete! Your app will be live at:
echo https://your-project-name.vercel.app
echo ========================================
pause
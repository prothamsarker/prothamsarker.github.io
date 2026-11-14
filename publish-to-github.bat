@echo off
title Publishing Protham's Portfolio to GitHub Pages
color 0A
echo ========================================================
echo    Publishing to https://github.com/prothamsarker/prothamsarker.github.io
echo ========================================================
echo.
cd /d "%~dp0"

echo [1/3] Checking Git status...
git config user.name "Protham Sarker"
git config user.email "it23027@mbstu.ac.bd"
git add .
git commit -m "Deploy GitHub Pages portfolio" >nul 2>&1

echo [2/3] Pushing to GitHub...
echo.
echo NOTE: If prompted, click "Sign in with your browser" to approve GitHub access.
echo.
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo    [SUCCESS] Your portfolio has been pushed to GitHub!
    echo    Live URL: https://prothamsarker.github.io
    echo ========================================================
    echo.
    echo Opening your GitHub Pages website...
    timeout /t 3 >nul
    start https://prothamsarker.github.io
) else (
    echo.
    echo [ERROR] Push did not complete. Please see the message above.
    echo.
)
pause

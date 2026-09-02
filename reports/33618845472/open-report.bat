@echo off
where npx >nul 2>nul
if %errorlevel% neq 0 (
    echo Node.js is required to view this report but was not found on PATH.
    echo Install it from https://nodejs.org, then double-click this file again.
    pause
    exit /b 1
)
echo Starting local report server, please wait...
npx allure open "%~dp0."

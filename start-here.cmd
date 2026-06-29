@echo off
setlocal
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File "%~dp0check-codex-env.ps1"
echo.
echo Press any key to close this window.
pause >nul

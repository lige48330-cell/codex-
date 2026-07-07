@echo off
setlocal
cd /d "%~dp0"
echo Codex beginner environment check
echo.
echo Please continue only if this folder came from a trusted source
echo and was fully extracted before you opened it.
echo.
echo This script only runs check-codex-env.ps1.
echo It is an environment check, not an installer.
echo.
pause
powershell -ExecutionPolicy Bypass -File "%~dp0check-codex-env.ps1"
echo.
echo Press any key to close this window.
pause >nul

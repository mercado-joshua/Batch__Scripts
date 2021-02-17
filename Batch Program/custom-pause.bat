@echo off
title Custom Pause

echo Loading

ping localhost -n 2 >nul
cls
echo Loading.
echo Done pausing
pause

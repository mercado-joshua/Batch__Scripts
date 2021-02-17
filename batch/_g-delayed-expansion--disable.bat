@echo off

:: regedit
reg add "HKLM\Software\Microsoft\Command Processor" /v "DelayedExpansion" /t REG_DWORD /d 0 /f >nul
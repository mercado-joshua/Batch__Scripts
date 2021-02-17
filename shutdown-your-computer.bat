@echo off
color 0a
cat _header.txt
echo.

title Shutdown your computer
echo Shutdown your computer
echo.

set /p userInput="Seconds before shutdown: "
shutdown /s /t %userInput%

rem set /p userPrompt="Type your message to be displayed: "
rem shutdown /s /t %userInput% /c %userPrompt% >nul

pause
exit

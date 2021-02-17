@echo off
color 0a
cat _header.txt
echo.

echo Display list of running tasks
echo.
tasklist
echo.

pause
echo.
echo Enter the PID of the task you want to end
set /p userInput="PID: "
taskkill /f /t /pid %userInput%
pause
exit

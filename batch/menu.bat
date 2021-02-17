@echo off
:startMenu
cls
echo Enter 1 for menu 1
echo Enter 2 for menu 2
set /p ans="Enter a number: "

if %ans% == 1 (
goto option1
)

if %ans% == 2 (
goto option2
)

:option1
echo menu 1
pause
goto startMenu

:option2
echo menu 2
pause
goto startMenu
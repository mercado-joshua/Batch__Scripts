@echo off

:: get the 2nd parameter
set string=%2
:: remove quotes wrapped in the text
for /f "useback tokens=*" %%a in ('%string%') do set string=%%~a
:: get the 1st parameter and assign the 2nd parameter as its value
set %1=%string%

@echo off

:: get the 2nd parameter
set string=%2

:: remove quotes wrapped in the text
for /f "useback tokens=*" %%a in ('%string%') do set string=%%~a

echo %2 > %TEMP%\tempfile.txt

for %%g in (%TEMP%\tempfile.txt) do (
    set /a %1_length=%%~zg - 5
    :: %%~z variablename - get the total number of length
)

del %TEMP%\tempfile.txt

:: get the 1st parameter and assign the 2nd parameter as its value
set %1=%string%

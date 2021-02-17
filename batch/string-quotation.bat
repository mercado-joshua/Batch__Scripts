@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal
set string="hello world"

:: removes wrapped quotations
for /f "useback tokens=*" %%g in ('!string!') do set string=%%~g

echo !string!
endlocal
goto :eof
@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal
set var=This is hello world

echo !var:~8!
:: !var:~positionToStart!
echo.
echo !var:~8,5!
:: !var:~positionToStart, positionToStop!

echo.
:: if negative, it will start at the end
echo !var:~8,-4!
endlocal
goto :eof
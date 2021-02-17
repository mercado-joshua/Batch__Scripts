@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

call create-string variable "hello world"
echo !variable!
endlocal
goto :eof
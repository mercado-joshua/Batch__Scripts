@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

set new_file=choice.txt
echo yes> !new_file!

choice < !new_file!
endlocal
goto :eof
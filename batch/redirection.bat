@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

:: stdout 1 (default) -- program output to display
:: stdin -- input from your keyboard
:: stderr 2 -- displays if something is wrong

:: put output and errors to this file
dir /b > new_text.txt 2>&1
endlocal
goto :eof
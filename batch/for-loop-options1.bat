@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

:: /f - for reading file contents
:: used along with options
for /f %%q in (test.csv) do (
    echo %%q
)
echo.

:: "delims=/" - specify what separator is used
for /f "delims=/" %%q in (test.csv) do (
    echo %%q
)
echo.

::  skip= - skips line number
for /f "delims=/ skip=1" %%q in (test.csv) do (
    echo %%q
)
echo.

::  tokens - allows you to get a piece of information
:: refers to the target column nnumber
for /f "tokens=*" %%q in (test.csv) do (
    echo %%q
)
echo.

::  tokens - allows you to get a piece of information
for /f "tokens=2 delims=," %%q in (test.csv) do (
    echo %%q
)
echo.

::  tokens - allows you to get a piece of information
:: refers to the target column nnumber
for /f "tokens=4 delims=," %%q in (test.csv) do (
    echo %%q
)
echo.

::  tokens - allows you to get a piece of information
for /f "tokens=1-3 delims=," %%g in (test.csv) do (
    echo %%g, his age is %%h, lives in %%i
)
echo.

::  tokens - allows you to get a piece of information
:: if you specify %%a, then tokens should be the next letter .. %%b, %%c,  %%d
:: 1-3 (range.. from 1 to 3 column)
for /f "tokens=1-3 delims=," %%a in (test.csv) do (
    echo %%a, his age is %%b, lives in %%c
)
echo.

::  tokens - allows you to get a piece of information
:: specify specific column number
for /f "tokens=1,3 delims=," %%g in (test.csv) do (
    echo %%g, lives in %%h
)
echo.


:: eol
for /f %%g in (test.txt) do (
    echo %%g
)
echo.

:: show all comments
for /f "delims=/" %%g in (test.txt) do (
    echo %%g
)
echo.

:: hides lines that starts with specified character
for /f "delims=/ eol=#" %%g in (test.txt) do (
    echo %%g
)
echo.

:: you even edit command output
for /f "delims=\ tokens=6" %%g in ('cd') do (
    echo %%g
)
echo.

:: for through string
set string=This is string
for /f "tokens=1-9" %%g in ("!string!") do (
    echo %%g %%h %%i
)
echo.

endlocal
goto :eof
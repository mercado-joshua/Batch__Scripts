@echo off
title Calculator

:menu
cls
echo.
echo Simple Calculator
echo.

echo [1] - Addition
echo [2] - Subtraction
echo [3] - Multiplication
echo [4] - Division
echo [5] - Modulus
echo.

set /p firstNum=First Number: 
set /p secondNum=Second Number: 
set /p option=Operation to execute: 
echo.

if %option% equ 1 goto add
if %option% equ 2 goto sub
if %option% equ 3 goto mul
if %option% equ 4 goto div
if %option% equ 5 goto mod

:add
setlocal
    set /a sum=%firstNum%+%secondNum%
    echo The sum is %sum%
    echo.
    pause
endlocal
goto menu

:sub
setlocal
    set /a diff=%firstNum%-%secondNum%
    echo The difference is %diff%
    echo.
    pause
endlocal
goto menu

:mul
setlocal
    set /a prod=%firstNum%*%secondNum%
    echo The product is %prod%
    echo.
    pause
endlocal
goto menu

:div
setlocal
    set /a quo=%firstNum%/%secondNum%
    echo The quotient is %quo%
    echo.
    pause
endlocal
goto menu

:mod
setlocal
    set /a mod=%firstNum%%%secondNum%
    echo The modulus is %mod%
    echo.
    pause
endlocal
goto menu




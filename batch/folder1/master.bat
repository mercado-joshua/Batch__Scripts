@echo off
:start
cls

echo - create (create password)
echo - check (check password)
echo.

set /p program=What do you want to do?: 
goto %program%

:create
cls
    set /p password=What do you want your password to be?: 
    echo %password% > test.txt
pause
goto start

:check
cls
    set /p password1=What is your password?: 

    for /f "delims=" %%a in (test.txt) do (
        set text=%%a
    )

    if %password1%==%text% (
        goto correct
    ) else (
        echo You are wrong^!
    )
pause
goto start

:correct
    echo You are right^!
pause
goto start
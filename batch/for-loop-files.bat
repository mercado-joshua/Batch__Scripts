@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

set var=Hello World^^!
echo !var!

set /a num=20

for %%q in (*.bat) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)

:: /r - path and subdirectories with files specified by wildcard
for /r %%q in (*.bat) do (
    echo %%q
)

endlocal
goto :eof
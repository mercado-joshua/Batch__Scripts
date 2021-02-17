@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

set var=Hello World^^!
echo !var!

set /a num=20
:: (start, step, end)
:: /d - for directories
:: * - a wildcard
:: before*after
for /d %%q in (*) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)

endlocal
goto :eof
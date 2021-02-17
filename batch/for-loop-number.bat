@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

set var=Hello World^^!
echo !var!

set /a num=20
:: (start, step, end)
:: :l - for numbers
for /l %%q in (1, 1, 20) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)

for /l %%q in (0, 5, 20) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)

endlocal
goto :eof
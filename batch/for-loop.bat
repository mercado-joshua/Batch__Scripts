@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

set var=Hello World^^!
echo !var!

set /a num=3
for %%q in (1 2 3 4 5) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)

for %%q in (a b c d e) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)

for %%q in (Im watching you sir) do (
    echo %%q
    if !num! equ %%q (
        echo !num! is %%q
    )
)
endlocal
goto :eof
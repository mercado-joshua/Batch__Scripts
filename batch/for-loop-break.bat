@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

for /l %%g in (1, 1, 10) do (
echo %%g

    if %%g equ 4 (
        :: create a function
        goto :loop_end
    ) 
)

    :loop_end
    echo.
    echo End of loop
endlocal
goto :eof
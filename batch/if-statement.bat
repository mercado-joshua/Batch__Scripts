@echo off
goto :main

:main
setlocal
set /a num=50
set /a num1=50

if %num% == %num1% (
    echo hello world

    :: nesting
    if %num% == 50 (
        echo its 50
    ) else (
        echo its not 50
    )
) else (
    echo not hello worlds
)

endlocal
goto :eof

:: compare
:: equ
:: neq
:: lss
:: gtr
:: geq
:: not
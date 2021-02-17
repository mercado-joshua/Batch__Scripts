@echo off
:: used to allow commands to run inside code blocks
:: you have to check strings with !, escape them, hello^^!
setlocal enabledelayedexpansion
goto :main

:main
setlocal
echo main start

set /a food=100
set /a need=50

set /a people=10
set /a rations=5


if !food! geq !need! (
    echo we have good amount of food
    set /a all_food=!people!*!rations!
    echo !all_food!

    if !all_food! leq !food! (
        echo we have enough food for !people! people
    ) else (
        echo we dont have good amount of food for people
    )
) else (
    echo echo we dont have good amount of food
)
endlocal
goto :eof
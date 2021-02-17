@echo off
goto :main

:add_one
setlocal
echo running add_one
endlocal & set /a %~1=%~2+1
goto :eof

:main
setlocal
set /a x=1
echo created variable x and set it to %x%
call :add_one x %x%
echo new created variable x and set it to %x%
endlocal
goto :eof
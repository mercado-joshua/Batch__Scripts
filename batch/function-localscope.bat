@echo off
goto :main

:func
setlocal
echo func says p is %p%
set x=30
echo func says x is %x%
endlocal
goto :eof

:main
setlocal
echo main function
set p=4
echo main says p = %p%

call :func
echo func says x is %x%
endlocal
:: endlocal deletes variables set in this local
goto :eof
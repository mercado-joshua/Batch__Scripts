@echo off
goto :main

:add_one
setlocal
echo performing add one on X
endlocal & set /a x=%x%+1 & set something=everything
goto :eof

:main
setlocal
echo main function is running
echo setting x to 1
set /a x=1

call :add_one
echo the value of X is now %x%
echo the value of something is now %something%
endlocal
goto :eof
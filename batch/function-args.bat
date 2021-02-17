@echo off
goto :main

:anotherFunction
echo parameter passed is %~1 and %~2!
goto :eof

:main
echo main function
call :anotherFunction args1 args2
goto :eof

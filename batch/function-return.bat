@echo off

goto :main

:new_func
echo This is new Function
set variable=New Args
echo this value is %~1

set %~1=ChangedValue
goto :eof

:main
echo this is main Function
call :new_func args1
echo this value is %variable%
echo there is another value %args1%
goto :eof


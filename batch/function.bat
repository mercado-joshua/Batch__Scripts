@echo off
goto :nameOfFunction

goto :mainFunction
echo start of program

:nameOfFunction
echo Function is being called!!
call :anotherFunction
call :mainFunction
goto :eof

:mainFunction
echo main Function
goto :eof

:anotherFunction
echo Another Function is being called
goto :eof
:: end of the file


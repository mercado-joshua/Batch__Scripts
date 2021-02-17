@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal
set var=This is hello cat cat world cat cat cat cat

echo !var:cat=dog!

endlocal
goto :eof
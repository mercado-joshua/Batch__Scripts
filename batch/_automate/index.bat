@echo off
title Run Programs
setlocal enabledelayedexpansion

:main
setlocal

set /p pathFolderSCSS=Drag SCSS file here: 
set /p pathFolderCSS=Drag CSS file here: 

cd scripts && start scss.bat !pathFolderSCSS! !pathFolderCSS!

endlocal
goto :eof
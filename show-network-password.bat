@echo off
color 0a
cat _header.txt
echo.

title Show Network SSID Password
echo Display all network SSD
echo.

pause
netsh wlan show profile
echo.

pause
echo.
echo Enter Network SSID
set /p userInput="Network SSID: "
netsh wlan show profile "%userInput%" key=clear
pause
exit

@echo off
color 0a
cat _header.txt
echo.

title Show Computer Information
echo Show Computer Information
echo.
echo 1. Current directory path
pwd
echo.

echo 2. How long the computer is running?
net statistics srv
echo.

echo 3. Computer Username
whoami
echo.

echo 4. Display MAC Information
getmac
echo.

echo 5. Displays list of available drivers
wmic logicaldisk get name
echo.

echo 6. Display list of users connected to this computer
net view
echo.

echo 7. Display list of user accounts to this computer
net user
echo.

echo 8. Tells you the expiration of your OS license
slmgr.vbs -xpr
echo.

echo 9. Information about your System
systeminfo
echo.
pause
exit

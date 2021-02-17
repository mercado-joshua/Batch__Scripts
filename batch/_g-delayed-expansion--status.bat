echo off

:: checks if delayedexpansion is enabled or disabled
for /f "tokens=3" %%g in ('reg query "HKLM\Software\Microsoft\Command Processor" /v "DelayedExpansion"') do (
    set output=%%g
)

echo %output:~2,1%
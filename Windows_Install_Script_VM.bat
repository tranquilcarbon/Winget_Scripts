@echo off
setlocal
:PROMPT
ECHO ==========WINGET INSTALL SCRIPT - GENERAL============
ECHO This script will install general products.
ECHO This will install:
ECHO Oracle Virtualbox
ECHO VMware Workstation Pro
SET /P AREYOUSURE=Are you sure you would like to begin? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Now installing Virtualbox...
winget install Oracle.Virtualbox
echo Now installing VMware Workstation Pro
winget install VMware.WorkstationPro
:END
endlocal
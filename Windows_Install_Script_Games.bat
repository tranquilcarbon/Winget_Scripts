@echo off
setlocal
:PROMPT
ECHO ==========WINGET INSTALL SCRIPT - GENERAL============
ECHO This script will install games launchers and utilities.
ECHO This will install:
ECHO Steam
ECHO EGS
ECHO GOG Galaxy
ECHO MSI Afterburner (Also known as Guru3d Afterburner)
ECHO OBS Studio
SET /P AREYOUSURE=Are you sure you would like to begin? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Now installing Steam...
winget install Valve.Steam
echo Now installing EGS
winget install EpicGames.EpicGamesLauncher
echo Now installing GOG Galaxy
winget install GOG.Galaxy
echo Now installing MSI Afterburner (Also known as Guru3d Afterburner)
winget install Guru3D.Afterburner
echo Now installing OBS Studio
winget install OBSProject.OBSStudio
:END
endlocal
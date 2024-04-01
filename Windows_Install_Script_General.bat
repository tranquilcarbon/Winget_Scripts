@echo off
setlocal
:PROMPT
ECHO ==========WINGET INSTALL SCRIPT - GENERAL============
ECHO This script will install general products.
ECHO This will install:
ECHO Mozilla Firefox
ECHO 7Zip
ECHO Libreoffice (LTS)
ECHO Notepad Plus Plus
ECHO VLC Media Player
ECHO Crystaldiskinfo
ECHO Teracopy
ECHO Everything
ECHO PaintDotNet
ECHO Irfanview (And plugins)
SET /P AREYOUSURE=Are you sure you would like to begin? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Now installing Mozilla Firefox...
winget install mozilla.firefox
echo Now installing 7zip...
winget install 7zip.7zip
echo Now installing Libreoffice (LTS)...
winget install TheDocumentFoundation.LibreOffice.LTS
echo Now installing Notepad Plus Plus...
winget install Notepad++.Notepad++
echo Now installing VLC Media Player...
winget install VideoLAN.VLC
echo Now installing Crystaldiskinfo
winget install CrystalDewWorld.CrystalDiskInfo
echo Now installing Teracopy...
winget install CodeSector.TeraCopy
echo Now installing Everything...
winget install voidtools.Everything
echo Now installing PaintDotNet...
winget install dotPDN.PaintDotNet
echo Now installing Irfanview...
winget install IrfanSkiljan.IrfanView
winget install IrfanSkiljan.IrfanView.Plugins
:END
endlocal
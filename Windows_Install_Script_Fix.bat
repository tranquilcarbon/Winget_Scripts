@echo off
setlocal
:PROMPT
ECHO ==========WINGET INSTALL SCRIPT - GENERAL============
ECHO This script will fix winget so that external sources work correctly.
ECHO In addition, please open the microsoft store and make sure you are signed in.
ECHO this is required to fix winget being weird.
SET /P AREYOUSURE=Are you sure you would like to begin? (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Now updating winget...
winget install -s msstore --id 9NBLGGH4NNS1
echo Now resetting winget repo settings...
winget source reset --force
echo Now rebuilding repo database...
winget source update
echo we will now try and see if it works correctly. if you see the name of a product, instead of a ID, press Y.
winget search mozilla
SET /P AREYOUSURE2=do you see it? (Y/[N])?
IF /I "%AREYOUSURE2%" NEQ "Y" GOTO END

echo winget shouldn now be correctly configured. Have a nice day!

:END
endlocal
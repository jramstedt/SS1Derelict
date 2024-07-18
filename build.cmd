@ECHO OFF
SETLOCAL

SET MISSION_NAME=derelict
SET MISSIONS="%APPDATA%\Nightdive Studios\System Shock EE\missions\%MISSION_NAME:"=%"
SET SS1EE="dist\SS1EE"
SET SS1="dist\SS1"
REM # SET STEAM_REG_QUERY='REG QUERY "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 410710" /v InstallLocation'
REM # FOR /F "skip=2 tokens=2*" %%A in (%STEAM_REG_QUERY%) DO SET SSPATH="%%B"

SET /P SSPATH=Path to SS1 RES files: 
ECHO Using RES files from: %SSPATH%

RD /S /Q dist

ECHO "Building SS1 EE"
MD "%SS1EE:"=%\RES"
FOR %%F in (*.res) DO SystemShockPatcher.exe "%SSPATH:"=%\%%F" %%F "%SS1EE:"=%\RES\%%F"

XCOPY archive.dat "%SS1EE:"=%\RES\" /F /Y
XCOPY mission.as %SS1EE% /F /Y

ECHO "SS1"
MD %SS1%
FOR %%F in (*.res archive.dat) DO SystemShockPatcher.exe "%SSPATH:"=%\%%F" %%F "%SS1:"=%\%%F"

ECHO "Readme, license and screenshots"
XCOPY README.md dist\ /F /Y
XCOPY LICENSE dist\ /F /Y
XCOPY screenshots\ dist\screenshots\ /F /Y

ECHO %DATE% %TIME% >> dist\README.md
git rev-parse HEAD >> dist\README.md

ECHO "Installing SS1EE..."
RD /S /Q %MISSIONS%
MD %MISSIONS%
XCOPY "%SS1EE:"=%\*" %MISSIONS% /E /F /Y

ENDLOCAL
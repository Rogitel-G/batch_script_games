@ECHO OFF
MKDIR %TEMP%\Resources
MKDIR %TEMP%\Resources\Minigame
MKDIR %TEMP%\Resources\Misc
ECHO TEMP > %TEMP%\Resources\Minigame\minigame.bat
ECHO TEMP > %TEMP%\Resources\startgame.bat
ECHO TEMP > %TEMP%\Resources\Misc\loadingbar.bat
SET TEMP=%CD%
SET GAMEPATH=%TEMP%
SET /a OSVALID = 0
CALL :OSCHECK
IF %OSVALID% EQU 0 (
	CALL :CONFIRM
)
START "" "%TEMP%\Resources\Start_Game.lnk"
del %GAMEPATH%\version
exit

:OSCHECK
CLS
ECHO.
ECHO Checking Windows version. Calm Until Night Time only works on Windows 7.
ECHO.
systeminfo | find "OS Name" > %GAMEPATH%\version
FOR /F "usebackq delims=: tokens=2" %%i IN (%GAMEPATH%\version) DO SET VERSION_TEMP=%%i
ECHO %VERSION_TEMP% | find "Windows 7" > nul
IF %ERRORLEVEL% EQU 0 (
	SET /a OSVALID = 1
)
GOTO :EOF


:CONFIRM
ECHO You don't seem to have Windows 7. The game is unlikely to work.
ECHO.
pause
GOTO :EOF

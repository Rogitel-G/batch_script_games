:ROUNDSTART
SET /a BATTLEROUNDNUM = %BATTLEROUNDNUM% + 1
CALL :MUSICSTART
CALL "%MULTIPLAYERRESOURCEPATH%\Battle\Turnstart\statusturncounts.bat"
CALL "%MULTIPLAYERRESOURCEPATH%\Battle\Turnstart\modifiedstats.bat"
CALL "%MULTIPLAYERRESOURCEPATH%\Battle\Display\battledisplaycalculations.bat"
CALL "%MULTIPLAYERRESOURCEPATH%\Battle\Display\battledisplay.bat"
pause
GOTO :EOF




:MUSICSTART
IF %SNDRECENABLED% EQU 1 (
	tasklist /FI "IMAGENAME EQ sndrec32.exe" 2>NUL | find /I /N "sndrec32.exe">NUL
) ELSE (
	tasklist /FI "IMAGENAME EQ powershell.exe" 2>NUL | find /I /N "powershell.exe">NUL
)
IF "%ERRORLEVEL%" EQU "0" (
	GOTO :EOF
)
SET TEMPPATH=%MUSICPATH%\Battle\StandardBattle
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
GOTO :EOF
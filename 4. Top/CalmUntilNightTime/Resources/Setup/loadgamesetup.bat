:LOADGAME
CALL "%MENURESOURCEPATH%\menudisplay.bat"
CALL "%SAVERESOURCEPATH%\savelist.bat"
ECHO Which game would you like to load?
ECHO.
ECHO. 1 - %SAVESLOT1NAME%
ECHO. 2 - %SAVESLOT2NAME%
ECHO. 3 - %SAVESLOT3NAME%
ECHO. 4 - %SAVESLOT4NAME%
ECHO. 5 - %SAVESLOT5NAME%
ECHO. 6 - %SAVESLOT6NAME%
ECHO. 7 - %SAVESLOT7NAME%
ECHO. 8 - %SAVESLOT8NAME%
ECHO. 9 - %SAVESLOT9NAME%
ECHO. Q - Quicksave Slot
ECHO. 0 - Back
ECHO.
SET /P LOADCHOICE=
ECHO.
IF "%LOADCHOICE%" EQU "" (
	GOTO :LOADGAME
) ELSE IF /I "%LOADCHOICE%" EQU "Q" (
	IF EXIST "%SAVERESOURCEPATH%\quicksave.bat" (
		CALL :QUICK
		GOTO :EOF
	) ELSE (
		GOTO :LOADGAME
	)
) ELSE IF "%LOADCHOICE%" EQU "0" (
	GOTO :EOF
)
IF NOT DEFINED SAVESLOT%LOADCHOICE%NAME (
	GOTO :LOADGAME
)
IF %LOADCHOICE% GTR 9 (
	GOTO :LOADGAME
)
ECHO Loading !SAVESLOT%LOADCHOICE%NAME!...
ECHO.
CALL "%SAVERESOURCEPATH%\Slot%LOADCHOICE%\!SAVESLOT%LOADCHOICE%NAME!.bat"
SET PREFIX=PLAYSTART
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
CALL "%INITIALRESOURCEPATH%\story.bat"
CALL "%MINIGAMERESOURCEPATH%\distributerewards.bat"
CALL "%INITIALRESOURCEPATH%\playermodifiedstats.bat"
ECHO.
RMDIR "%CUSTOMSPELLRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMSPELLRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMSPELLRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMITEMRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMITEMRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMITEMRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMWEAPONRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMWEAPONRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMWEAPONRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMARMOURRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMARMOURRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMARMOURRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMACCESSORYRESOURCEPATH%\Slot%LOADCHOICE%" "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /E /I
CLS
ECHO.
ECHO !SAVESLOT%LOADCHOICE%NAME! loaded successfully^^!
GOTO :EOF

:QUICK
SET SAVESLOTQNAME=quicksave
ECHO Loading Quicksave...
ECHO.
CALL "%SAVERESOURCEPATH%\!SAVESLOT%LOADCHOICE%NAME!.bat"
SET PREFIX=PLAYSTART
CALL "%MISCRESOURCEPATH%\calculatedatetime.bat"
CALL "%INITIALRESOURCEPATH%\story.bat"
CALL "%MINIGAMERESOURCEPATH%\distributerewards.bat"
CALL "%INITIALRESOURCEPATH%\playermodifiedstats.bat"
ECHO.
RMDIR "%CUSTOMSPELLRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMSPELLRESOURCEPATH%\QS" "%CUSTOMSPELLRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMITEMRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMITEMRESOURCEPATH%\QS" "%CUSTOMITEMRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMWEAPONRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMWEAPONRESOURCEPATH%\QS" "%CUSTOMWEAPONRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMARMOURRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMARMOURRESOURCEPATH%\QS" "%CUSTOMARMOURRESOURCEPATH%\Temp" /E /I
RMDIR "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /S /Q
XCOPY "%CUSTOMACCESSORYRESOURCEPATH%\QS" "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /E /I
CLS
ECHO.
ECHO Quicksave loaded successfully^^!
GOTO :EOF
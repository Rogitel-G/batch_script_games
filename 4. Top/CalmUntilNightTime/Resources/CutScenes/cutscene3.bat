CALL "%MUSICPATH%\stopmusic.bat"
SET /a SCENETOT = 6
SET /a SKIP = 0
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT = %COUNT% + 1
CLS
ECHO.
CALL :SCENE%COUNT%IMAGE
CALL :SCENE%COUNT%TEXT
CALL :CONTROLS
IF %CUTSCENEPROGRESSION% EQU 1 (
	CHOICE /C:012 /N /T:%WAITTIME% /D:1
) ELSE (
	CHOICE /C:012 /N /T:9999 /D:1
)
IF %ERRORLEVEL% EQU 1 (
	SET /a SKIP = 1
) ELSE IF %ERRORLEVEL% EQU 3 (
	IF %COUNT% GTR 1 (
		SET /a COUNT = %COUNT% - 2
	) ELSE (
		SET /a COUNT = %COUNT% - 1
	)
)
IF %SKIP% EQU 1 (
	CALL :CONFIRM
)
IF %SKIP% EQU 1 (
	GOTO :END
)
IF %COUNT% LSS %SCENETOT% (
	GOTO :LOOPSTART
)
:END
ECHO.
SET /a STORY1VERSIONNUM = 2
SET /a HOMETOWNQUESTPHASE = 3
GOTO :EOF

:CONTROLS
ECHO.
ECHO. 1 - Fast forward
ECHO. 2 - Rewind
ECHO. 0 - Pause, with the option to skip
ECHO.
GOTO :EOF

:CONFIRM
CLS
ECHO.
ECHO Paused. Do you want to skip this cutscene?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No, continue
ECHO.
SET /P SKIP=
IF "%SKIP%" EQU "1" (
	GOTO :EOF
) ELSE IF "%SKIP%" EQU "0" (
	SET /a COUNT = %COUNT% - 1
	GOTO :EOF
) ELSE (
	GOTO :CONFIRM
)
GOTO :EOF

:SCENE1IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE1TEXT
SET /a TEMP1 = !%MAP%CHEST%COUNT%ITEM1!
SET /a TEMP2 = !%MAP%CHEST%COUNT%WEAPON1!
SET /a TEMP3 = !%MAP%CHEST%COUNT%WEAPON2!
ECHO     %UNCLENAME%: Brilliant^^! So you found a !ITEM%TEMP1%NAME!, a !WEAPON%TEMP2%NAME! and some !WEAPON%TEMP3%NAME!.
ECHO          Nice work %PLAYERNAME%^^!
SET /a WAITTIME = %BASEWAITTIME% + 5
GOTO :EOF

:SCENE2IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE2TEXT
ECHO     %UNCLENAME%: Those weapons can be equipped to increase your stats
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE3IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE3TEXT
ECHO     %UNCLENAME%: Here, I'll show you how
SET /a WAITTIME = %BASEWAITTIME% + 2
TIMEOUT /T 2 > temp 
del temp
IF EXIST "%TUTORIALRESOURCEPATH%\equippingexample.bat" (
	CALL "%TUTORIALRESOURCEPATH%\equippingexample.bat"
) ELSE (
	ECHO TODO: Equipment tutorial
	TIMEOUT /T 2 > temp 
	del temp
)
SET /a COUNT = 3
GOTO :EOF

:SCENE4IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE4TEXT
ECHO     %UNCLENAME%: There, wasn't that great.
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE5IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE5TEXT
ECHO     %PLAYERNAME%: Yup, thanks uncle %UNCLENAME%. I'm going to see %FRIENDNAME% now
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF

:SCENE6IMAGE
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ                              ณ                                   บ
ECHO    บ                                 ณ      ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฟ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ฺฟ   ฺฟ   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภู   ภู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ      ู      ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ   ภฤฤฤฤฤู   ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ณ             ณ         ณ                                   บ
ECHO    บ                                 ณ      ภฤฤฤฤยฤฤฤยฤฤฤฤู         ณ                                   บ
ECHO    บ                                 ณ           ณ   ณ              ณ                                   บ
ECHO    บ                                 ณ   ฺฤฤฤฤฤฤฤมฤฤฤมฤฤฤฤฤฤฤฟ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    บ                                 ณ   ณ                   ณ      ณ                                   บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
GOTO :EOF
:SCENE6TEXT
ECHO     %UNCLENAME%: See you later %PLAYERNAME%, stay out of trouble^^!
SET /a WAITTIME = %BASEWAITTIME% + 2
GOTO :EOF




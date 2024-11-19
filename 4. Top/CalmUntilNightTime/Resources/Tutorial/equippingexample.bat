SET /a TUTORIAL = 1
:EQUIPMENTSTART
CLS
ECHO.
ECHO %UNCLENAME%: In this type of menu you need to press the number that corresponds
ECHO to the option that you want to select, and then press enter
ECHO.
ECHO %MENUNAME%: What Equipment would you like to manage?
ECHO.
ECHO. 1 - Weapons
ECHO. 2 - Armour
ECHO. 3 - Accessories
ECHO. 0 - Back
ECHO.
:EQUIPMENTCHOICE
SET /P EQUIPTYPECHOICE=
ECHO.
IF "%EQUIPTYPECHOICE%" EQU "1" (
	SET TYPE=weapon
	CALL "%MENURESOURCEPATH%\adjustequipment.bat"
) ELSE (
	ECHO %UNCLENAME%: Let's just choose Weapons for now
	CALL :WAITFORTHREE
	GOTO :EQUIPMENTSTART
)
SET /a TUTORIAL = 0
CALL :UNCLECONVERSATION
GOTO :EOF

:UNCLECONVERSATION
CLS
ECHO.
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
ECHO     %UNCLENAME%: All done^^!
IF %PLAYERWEAPONID% EQU 0 (
	ECHO.
	ECHO          I'd really suggest that you equip something %PLAYERNAME%
	ECHO.
	CALL :WAITFORTHREE
	ECHO          No matter, your funeral^^!
	ECHO.
	CALL :WAITFORTHREE
)
GOTO :EOF
ECHO %UNCLENAME%: All done^^! Which menu type did you prefer?
ECHO.
ECHO. 1 - The number choosey one
ECHO. 2 - The up and downy one
ECHO. 3 - They're both great^^!
ECHO. 4 - I don't care.
ECHO.
SET /P MENUTYPE=
ECHO.
IF "%MENUTYPE%" EQU "4" (
	ECHO %UNCLENAME%: Well neither do I.
	CALL :WAITFORTWO
) ELSE (
	ECHO %UNCLENAME%: Doesn't matter, I was just curious.
	CALL :WAITFORTWO
)
ECHO.
ECHO You didn't think that I was going to select the menu type
ECHO that you prefer to use for the rest of the game did you?
CALL :WAITFORFOUR
ECHO.
ECHO That's just silly^^! Both menu types are applicable to different
ECHO situations, so you'll just have to trust my judgement.
CALL :WAITFORFOUR
ECHO.
ECHO There's actually a third menu type too. It's just like the first one
ECHO but you don't have to press enter after you've selected a number.
CALL :WAITFORFOUR
ECHO.
ECHO If you're interested, that's how the maps work^^! But we'll use it for
ECHO other things throughout the game too.
ECHO.
pause
GOTO :EOF








:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

:WAITFORONE
TIMEOUT /T 1 > nul
GOTO :EOF

:WAITFORTWO
TIMEOUT /T 2 > nul
GOTO :EOF
:WAITFORTHREE
TIMEOUT /T 3 > nul
GOTO :EOF

:WAITFORFOUR
TIMEOUT /T 4 > nul
GOTO :EOF
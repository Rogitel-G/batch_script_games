SET /a RESTOREHPCOST = %PLAYERBASEMAXHP%+%PLAYEREQUIPMAXHP%-%PLAYERTEMPLEDONATIONREDUCTION%
IF %RESTOREHPCOST% LEQ 0 (
	SET /a RESTOREHPCOST = 1
)
:RESTOREHP
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO You currently have %PLAYERGIL% Gil
ECHO.
ECHO %PRIESTNAME%: My child, for the healing ritual I must ask that you grace
ECHO           my palm with %RESTOREHPCOST% gil
ECHO           I accept all major credit cards.
ECHO.
ECHO. 1 - Please perform the healing ritual
ECHO. 0 - I've changed my mind
ECHO. 
SET /P RESTOREHPCHOICE=
ECHO.
IF "%RESTOREHPCHOICE%" EQU "1" (
	IF %PLAYERGIL% GEQ %RESTOREHPCOST% (
		CALL :RESTOREHPSUCCESS
	) ELSE IF %PLAYERGIL% LSS %RESTOREHPCOST% (
		CALL :RESTOREHPFAIL
	)
) ELSE IF "%RESTOREHPCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO.
	ECHO %PRIESTNAME%: Sorry my child, I didn't catch that
	ECHO.
	CALL :RESTOREHP
)
GOTO :EOF

:RESTOREHPSUCCESS
::ECHO %PRIESTNAME%: Right then my child, this way...
::ECHO.
::CALL :WAITFORTWO
::ECHO You follow %PRIESTNAME% into a room with a glorious fountain.
::ECHO.
::CALL :WAITFORTWO
::ECHO %PRIESTNAME%: My child, remove your garments, close your eyes and drink from the fountain of healing
::ECHO.
::pause
::ECHO You remove your clothes, close your eyes and bend over to drink from the fountain of healing...
::ECHO.
::CALL :WAITFORTWO
::ECHO You drink from the fountain of healing and feel nothing at first. But then suddenly you feel
::ECHO the power of %PRIESTNAME%'s mighty healing staff coursing through your body. Again and again you 
::ECHO feel the power of the staff, flooding your body with healing magic. After a few minutes you  
::ECHO feel the magic cease and are instructed to open your eyes and re-robe.
::ECHO.
::CALL :WAITFORTHREE
::ECHO %PRIESTNAME% is out of breath from performing the ritual so you know he has done a good job.
::ECHO.
::pause
::ECHO.
::ECHO %PRIESTNAME%: Thank you my child, the ritual is now complete. Here, take this after ritual drink to
::ECHO           complete the ritual.
::CALL :WAITFORTHREE
::ECHO.
::ECHO %PRIESTNAME% hands you a vial of liquid, from which you then drink.
::CALL :WAITFORTHREE
::ECHO.
::ECHO It tastes an awful lot like an X-Potion.
::ECHO.
::CALL :WAITFORTHREE
SET /a PLAYERGIL = %PLAYERGIL% - %RESTOREHPCOST%
SET /a PLAYERHP = %PLAYERBASEMAXHP% + %PLAYEREQUIPMAXHP%
SET TEMPPATH=%MUSICPATH%\Battle\Spells
SET FILE=Cura.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
SET FILE=Esuna.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: Your HP has been fully restored.
ECHO.
pause
::ECHO.
::ECHO %PRIESTNAME%: Here, call yourself a taxi.
::ECHO.
::ECHO %PRIESTNAME% hands you 1 gil.
::ECHO.
::SET /a PLAYERGIL = %PLAYERGIL% + 1
::pause
GOTO :EOF

:RESTOREHPFAIL
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: I would love to perform the healing ritual but it appears you do not have enough Gil.
ECHO.
CALL :WAITFORTWO
ECHO           Like the American health system, if you have not the Gil then I cannot heal you.
ECHO.
CALL :WAITFORTWO
ECHO           Such is the will of the Lord.
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
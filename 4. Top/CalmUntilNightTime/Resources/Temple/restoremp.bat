SET /a RESTOREMPCOST = ((%PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%)*4)-%PLAYERTEMPLEDONATIONREDUCTION%
IF %RESTOREMPCOST% LEQ 0 (
	SET /a RESTOREMPCOST = 1
)
:RESTOREMP
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO You currently have %PLAYERGIL% Gil
ECHO.
ECHO %PRIESTNAME%: My child, to restore your magic I must ask that you grace
ECHO           my palm with %RESTOREMPCOST% gil
ECHO           I accept all major credit cards.
ECHO.
ECHO. 1 - Please restore my magic
ECHO. 0 - I've changed my mind
ECHO. 
SET /P RESTOREMPCHOICE=
ECHO.
IF "%RESTOREMPCHOICE%" EQU "1" (
	IF %PLAYERGIL% GEQ %RESTOREMPCOST% (
		CALL :RESTOREMPSUCCESS
	) ELSE IF %PLAYERGIL% LSS %RESTOREMPCOST% (
		CALL :RESTOREMPFAIL
	)
) ELSE IF "%RESTOREMPCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO.
	ECHO %PRIESTNAME%: Sorry my child, I didn't catch that
	ECHO.
	CALL :RESTOREMP
)
GOTO :EOF

:RESTOREMPSUCCESS
::ECHO %PRIESTNAME%: Right then my child, enter the confession box...
::ECHO.
::CALL :WAITFORTWO
::ECHO You enter the the confession box
::ECHO.
::CALL :WAITFORTWO
::ECHO %PRIESTNAME%: My child, kneel and close your eyes. Once the healing magic pipe emerges you must
::ECHO           use your mouth to extract the healing nectar from within. Only by drinking every
::ECHO           drop of the healing nectar will your magic be restored.
::ECHO.
::pause
::ECHO You follow %PRIESTNAME%'s instructions and await the healing magic pipe.
::ECHO.
::CALL :WAITFORTWO
::ECHO You feel the warm healing magic pipe brush softly against your cheek and accept the pipe into your mouth.
::ECHO You perform the extraction ritual with great enthusiaum, after a while you feel the pipe judder
::ECHO and you know the time of healing is nigh. In one powerful blast your mouth is filled with the 
::ECHO healing nectar, which you swallow just in time to make room for the next blast.
::ECHO Blast after blast of warm healing nectar you swallow down, until the healing magic pipe softens 
::ECHO and pulls away from your mouth.
::ECHO.
::pause
::ECHO You hear a voice from outside of the confession box
::ECHO.
::CALL :WAITFORTWO
::ECHO %PRIESTNAME%: You may now leave the confession box my child, you have done well.
::ECHO.
::pause
::ECHO.
::ECHO %PRIESTNAME%: Thank you my child, the ritual is now complete. Here, take this X-Eth.. I mean after
::ECHO           ritual drink to complete the ritual.
::ECHO.
::CALL :WAITFORTWO
::ECHO %PRIESTNAME% hands you a vial of liquid, from which you then drink.
::ECHO.
::CALL :WAITFORTHREE
SET /a PLAYERGIL = %PLAYERGIL% - %RESTOREMPCOST%
SET /a PLAYERMP = %PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%
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
ECHO %PRIESTNAME%: Your MP has been fully restored.
ECHO.
pause
::ECHO You look at the empty vial and see the remnants of a scratched off label
::ECHO.
::CALL :WAITFORTWO
::ECHO "M.lt.p..k  .urch.as.  N.t .. Be .old Se..r.tely 
::ECHO.
::CALL :WAITFORTHREE
::ECHO %PRIESTNAME% snatches the vial back from you.
::ECHO.
::CALL :WAITFORTWO
::ECHO %PRIESTNAME%: Please come back any time.
::ECHO.
::pause
GOTO :EOF


:RESTOREMPFAIL
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: I would love to restore your MP but it appears you do not have enough Gil.
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
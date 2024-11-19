SET /a RESTOREHPANDMPCOST = ((((%PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%)*4)+%PLAYERBASEMAXHP%+%PLAYEREQUIPMAXHP%-(2*%PLAYERTEMPLEDONATIONREDUCTION%))*95)/100
IF %RESTOREHPANDMPCOST% LEQ 0 (
	SET /a RESTOREHPANDMPCOST = 1
)
:RESTOREHPANDMP
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO You currently have %PLAYERGIL% Gil
ECHO.
ECHO %PRIESTNAME%: My child, to restore your HP and MP I must ask that you grace
ECHO           my palm with the discounted price of %RESTOREHPANDMPCOST% gil
ECHO           I accept all major credit cards.
ECHO.
ECHO. 1 - Please, oh holy one, restore my body and mind
ECHO. 0 - I've changed my mind
ECHO. 
SET /P RESTOREHPANDMPCHOICE=
ECHO.
IF "%RESTOREHPANDMPCHOICE%" EQU "1" (
	IF %PLAYERGIL% GEQ %RESTOREHPANDMPCOST% (
		CALL :RESTOREHPANDMPSUCCESS
	) ELSE IF %PLAYERGIL% LSS %RESTOREHPANDMPCOST% (
		CALL :RESTOREHPANDMPFAIL
	)
) ELSE IF "%RESTOREHPANDMPCHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO.
	ECHO %PRIESTNAME%: Sorry my child, I didn't catch that
	ECHO.
	CALL :RESTOREHPANDMP
)
GOTO :EOF

:RESTOREHPANDMPSUCCESS
::ECHO %PRIESTNAME%: Ok child, put on this blindfold for preparation to Accept the Transcendant Mother.
::ECHO           For this body cleansing ritual you must de-robe.
::ECHO.
::CALL :WAITFORTHREE
::ECHO You put on the blindfold and de-robe for the ATM ritual
::ECHO.
::CALL :WAITFORTHREE
::ECHO %PRIESTNAME%: My child, for the ATM ritual you must first allow the healing staff to cleanse your
::ECHO           body and, when I instruct so, extract the healing nectar from the healing magic pipe 
::ECHO           to cleanse your mind.
::ECHO.
::pause
::ECHO.
::ECHO You assume the position and eagerly await the healing staff. In one euphoric instant you feel
::ECHO your body being saturated with %PRIESTNAME%'s healing staff. Thrust after thrust of the healing staff
::ECHO makes you feel strong and well rested.
::ECHO.
::ECHO %PRIESTNAME%: Now my child, perform the extraction ritual on the healing magic pipe.
::ECHO.
::ECHO You leap from the staff and begin extracting the magical healing nectar from the pipe.
::ECHO After almost no time at all you feel the pipe begin to quiver in fear before your extraction skills.
::ECHO In one powerful blast you steal the healing nectar from the healing magic pipe, swallowing
::ECHO the nectar like a restoration veteran. With ease you swallow blast after blast, mouthful after 
::ECHO mouthful, feeling the healing pipe jolting from within you. You hear moans from what can only be
::ECHO the Transcendant Mother herself, in awe of your extraction skills.
::ECHO.
::ECHO Exhausted, you collapse to the floor, knowing that you must be fully healed after the great ritual
::ECHO you've performed.
::ECHO.
::pause
::ECHO After a small rest, %PRIESTNAME% informs you that the ritual is complete and you may remove your
::ECHO blindfold and re-robe.
::ECHO.
::CALL :WAITFORTWO
::ECHO %PRIESTNAME%: You Accepted the Transcendant Mother like none before. Please return to perform
::ECHO           the ritual whenever you are in need of healing.  Here, drink this to complete the 
::ECHO           ritual.
::ECHO.
::pause
::ECHO %PRIESTNAME% hands you a vial of liquid, from which you then drink.
::ECHO.
::CALL :WAITFORTHREE
SET /a PLAYERGIL = %PLAYERGIL% - %RESTOREHPANDMPCOST%
SET /a PLAYERMP = %PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%
SET /a PLAYERHP = %PLAYERBASEMAXHP%+%PLAYEREQUIPMAXHP%
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
ECHO %PRIESTNAME%: Your HP and MP have been fully restored.
ECHO.
pause
::ECHO.
::ECHO %PRIESTNAME%: Please, please, please come back any time.
::ECHO.
::pause
GOTO :EOF


:RESTOREHPANDMPFAIL
CALL "%TEMPLERESOURCEPATH%\templedisplay.bat"
ECHO.
ECHO %PRIESTNAME%: I would love to perform the healing ritual it appears you do not have enough Gil.
ECHO.
CALL :WAITFORTWO
ECHO           Like the American health system, if you have not the Gil then I cannot heal you.
ECHO.
CALL :WAITFORTWO
ECHO           Such is the will of the Lord.
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
CALL "%OPTIONSRESOURCEPATH%\options.bat"
CALL "%DYNAMICRESOURCEPATH%\dynamicoptionsmenu.bat"
SET /a SELECTED = 1
SET /a MAINMENUBACK = 1
::This is for menu2.bat
SET /a PLAYERLVL = 1
SET /a ENEMYID = 1
:OPTIONSMENU
CLS
ECHO.
CALL :DISPLAY0
ECHO.
ECHO %MENUNAME%: ² means on. ° means off
ECHO.
CALL "%MISCRESOURCEPATH%\menu2.bat"
IF %VARSELECTED% EQU 1 (
	CALL :SELECTED
)
IF %BACK% EQU 1 (
	CALL "%OPTIONSRESOURCEPATH%\saveoptions.bat"
	GOTO :EOF
)
GOTO :OPTIONSMENU

:SELECTED
SET TEMPVAR5=!OPTION%SELECTED%VAR!
IF !%TEMPVAR5%! EQU 1 (
	SET /a %TEMPVAR5% = 0
) ELSE (
	SET /a %TEMPVAR5% = 1
)
IF "%TEMPVAR5%" EQU "MUSICENABLED" (
	CALL :MUSIC
) ELSE IF "%TEMPVAR5%" EQU "SFXENABLED" (
	CALL :SFX
) ELSE IF "%TEMPVAR5%" EQU "EXPLICIT" (
	CALL :EXPLICIT
)
CALL "%DYNAMICRESOURCEPATH%\dynamicoptionsmenu.bat"
GOTO :OPTIONSMENU

:DISPLAY0
ECHO                     ,_  .--.
ECHO               , ,   _)\/    ;--.
ECHO       . ' .    \_\-'   ³  .'    \
ECHO      -= * =-   (.-,   /  /       ³
ECHO       ' .\'    ).  ))/ .'   _/\ /
ECHO           \_   \_  /( /     \ /(
ECHO           /_\ .--'   `-.    //  \
ECHO           ³³\/        , '._//    ³
ECHO           ³³/ /`(_ (_,;`-._/     /
ECHO           \_.'   )   /`\       .'
ECHO                .' .  ³  ;.   /`
ECHO               /      ³\(  `.(
ECHO              ³   ³/  ³ `    `
ECHO              ³   ³  /
ECHO              ³   ³.'
ECHO           __/'  /
ECHO       _ .'  _.-`
ECHO    _.` `.-;`/
ECHO   /_.-'` / /
ECHO         ³_/
GOTO :EOF

:MUSIC
tasklist /FI "IMAGENAME EQ cmd.exe" 2>NUL | find /I /N "cmd.exe">NUL
IF "%ERRORLEVEL%" EQU "0" (
	taskkill /FI "WINDOWTITLE eq MUSIC" > nul
)
IF %MUSICENABLED% EQU 0 (
	GOTO :EOF
)
SET TEMPPATH=%MUSICPATH%\Title
SET /a STOP = 1
SET /a LOOP = 1
CALL "%MUSICPATH%\startmusic.bat"
GOTO :EOF

:SFX
IF %SFXENABLED% EQU 0 (
	GOTO :EOF
)
SET /a FILESET = 0
::Use the sound effect of a random spell
SET /a SPELLTOT = %OFFSPELLTOT% + %STATSPELLTOT% + %RESTSPELLTOT% + %SUPPSPELLTOT%
SET /a TEMP1 = %OFFSPELLTOT% + %STATSPELLTOT%
SET /a TEMP2 = %OFFSPELLTOT% + %STATSPELLTOT% + %RESTSPELLTOT%
SET /a SPELLRANDOM = %RANDOM% %% %SPELLTOT% + 1
SET TEMPPATH=%MUSICPATH%\Battle\Spells
IF %SPELLRANDOM% LEQ %OFFSPELLTOT% (
	CALL :OFF
) ELSE IF %SPELLRANDOM% LEQ %TEMP1% (
	CALL :STAT
) ELSE IF %SPELLRANDOM% LEQ %TEMP2% (
	CALL :REST
) ELSE (
	CALL :SUPP
)
IF %FILESET% EQU 0 (
	SET TEMPPATH=%MUSICPATH%\Chest
	SET FILE=Chest.mp3
)
CALL "%MUSICPATH%\soundeffect.bat"
GOTO :EOF





:OFF
SET SPELLNAME=!OFF%SPELLRANDOM%SPELL!
SET SPELLELEMENT=!OFF%SPELLRANDOM%EFFECT1ELEMENT!
IF EXIST "%TEMPPATH%\%SPELLNAME%.mp3" (
	SET FILE=%SPELLNAME%.mp3
	SET /a FILESET = 1
) ELSE (
	IF EXIST "%TEMPPATH%\%SPELLELEMENT%.mp3" (
		SET FILE=%SPELLELEMENT%.mp3
		SET /a FILESET = 1
	)
)
GOTO :EOF

:STAT
SET SPELLNAME=!STAT%SPELLRANDOM%SPELL!
IF EXIST "%TEMPPATH%\%SPELLNAME%.mp3" (
	SET FILE=%SPELLNAME%.mp3
	SET /a FILESET = 1
)
GOTO :EOF

:REST
SET SPELLNAME=!REST%SPELLRANDOM%SPELL!
IF EXIST "%TEMPPATH%\%SPELLNAME%.mp3" (
	SET FILE=%SPELLNAME%.mp3
	SET /a FILESET = 1
)
GOTO :EOF

:SUPP
SET SPELLNAME=!SUPP%SPELLRANDOM%SPELL!
IF EXIST "%TEMPPATH%\%SPELLNAME%.mp3" (
	SET FILE=%SPELLNAME%.mp3
	SET /a FILESET = 1
)
GOTO :EOF

:EXPLICIT
IF %EXPLICIT% EQU 0 (
	SET OPTION5DESCRIPTION2=THIS WILL SWEAR WHEN TURNED ON^^!
	GOTO :EOF
)
SET TEMPPATH=%MUSICPATH%\Swear
SET /a SWEARRANDOM = %RANDOM% %% %SWEARTOT% + 1
SET FILE=Swear%SWEARRANDOM%.mp3
IF EXIST "%TEMPPATH%\%FILE%" (
	CALL "%MUSICPATH%\soundeffect.bat"
)
CLS
ECHO.
CALL :DISPLAY0
ECHO.
SET OPTION5DESCRIPTION2=!SWEAR%SWEARRANDOM%!^^!
GOTO :EOF


:SPEECH
IF %SPEECH% EQU 1 (
	ECHO Speech during cutscenes is now disabled
	ECHO.
	CALL :WAITFORTHREE
	SET /a SPEECH = 0
) ELSE IF %SPEECH% EQU 0 (
	ECHO Speech during cutscenes is now enabled
	ECHO.
	ECHO Unfortunately this means that you can't skip spoken dialogue. If
	ECHO this is a problem you should disable speech
	ECHO.
	pause
	SET /a SPEECH = 1
)
GOTO :EOF

:ANIMATIONS
IF %ANIMATIONENABLED% EQU 1 (
	ECHO Animations are now off. Battles will load quicker.
	ECHO.
	CALL :WAITFORTHREE
	SET /a ANIMATIONENABLED = 0
) ELSE IF %ANIMATIONENABLED% EQU 0 (
	ECHO Animations are now on
	ECHO.
	CALL :WAITFORTHREE
	SET /a ANIMATIONENABLED = 1
)
GOTO :EOF

:CUTSCENE
IF %CUTSCENEPROGRESSION% EQU 1 (
	CLS
	ECHO.
	ECHO Cutscenes will not progress unless you press 1.
	SET /a CUTSCENEPROGRESSION = 0
) ELSE IF %CUTSCENEPROGRESSION% EQU 0 (
	CLS
	ECHO.
	ECHO Cutscenes will progress automatically, no need to press 1.
	SET /a CUTSCENEPROGRESSION = 1
)
ECHO.
ECHO Cutscene Controls:
ECHO.
ECHO. 1 - Fast forward
ECHO. 2 - Rewind
ECHO. 0 - Pause, with the option to skip
ECHO.
PAUSE
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
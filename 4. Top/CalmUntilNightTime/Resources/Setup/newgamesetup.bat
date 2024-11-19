CLS
SET /a TESTRUN = 0
RMDIR "%CUSTOMSPELLRESOURCEPATH%\Temp" /S /Q
MKDIR "%CUSTOMSPELLRESOURCEPATH%\Temp"
RMDIR "%CUSTOMITEMRESOURCEPATH%\Temp" /S /Q
MKDIR "%CUSTOMITEMRESOURCEPATH%\Temp"
RMDIR "%CUSTOMWEAPONRESOURCEPATH%\Temp" /S /Q
MKDIR "%CUSTOMWEAPONRESOURCEPATH%\Temp"
RMDIR "%CUSTOMARMOURRESOURCEPATH%\Temp" /S /Q
MKDIR "%CUSTOMARMOURRESOURCEPATH%\Temp"
RMDIR "%CUSTOMACCESSORYRESOURCEPATH%\Temp" /S /Q
MKDIR "%CUSTOMACCESSORYRESOURCEPATH%\Temp"
:NAME
CALL "%NEWRESOURCEPATH%\namecharacter.bat"
IF "%PLAYERNAME%" EQU "0" (
	GOTO :EOF
)
CALL "%NEWRESOURCEPATH%\setdifficulty.bat"
IF "%DIFFICULTYTEMP%" EQU "0" (
	GOTO :NAME
)
CLS
ECHO.
ECHO Cutscene Controls:
ECHO.
ECHO. 1 - Fast forward
ECHO. 2 - Rewind
ECHO. 0 - Pause, with the option to skip
ECHO.
ECHO Setting up new game...
CALL "%NEWRESOURCEPATH%\playerinitialstatus.bat"
CALL "%NEWRESOURCEPATH%\playerequipstats.bat"
CALL "%NEWRESOURCEPATH%\playerinitialspecials.bat"
CALL "%NEWRESOURCEPATH%\playerinitialstats.bat"
CALL "%NEWRESOURCEPATH%\playerinitialresistances.bat"
CALL "%NEWRESOURCEPATH%\playerinitialmagic.bat"
CALL "%NEWRESOURCEPATH%\playerinitialskills.bat"
CALL "%NEWRESOURCEPATH%\playerinitialitems.bat"
CALL "%NEWRESOURCEPATH%\playerinitialspecialitems.bat"
CALL "%NEWRESOURCEPATH%\playerinitialkeyitems.bat"
CALL "%NEWRESOURCEPATH%\playerinitialcaught.bat"
ECHO.
ECHO 50%%
CALL "%NEWRESOURCEPATH%\playerinitialrecords.bat"
CALL "%NEWRESOURCEPATH%\initialqueststats.bat"
CALL "%NEWRESOURCEPATH%\initialbossstate.bat"
CALL "%NEWRESOURCEPATH%\playerequiplist.bat"
CALL "%NEWRESOURCEPATH%\initialcasinostats.bat"
CALL "%NEWRESOURCEPATH%\initialcave.bat"
CALL "%NEWRESOURCEPATH%\initialmine.bat"
CALL "%NEWRESOURCEPATH%\initialchestopen.bat"
CALL "%NEWRESOURCEPATH%\initialalchemiststats.bat"
CALL "%NEWRESOURCEPATH%\initiallocation.bat"
CALL "%NEWRESOURCEPATH%\initialteleport.bat"
CALL "%NEWRESOURCEPATH%\initiallake.bat"
CALL "%NEWRESOURCEPATH%\initialremoteaccess.bat"
CALL "%NEWRESOURCEPATH%\initialblacksmithstats.bat"
CALL "%NEWRESOURCEPATH%\initialstory.bat"
CALL "%NEWRESOURCEPATH%\initialtutorials.bat"
CALL "%MINIGAMERESOURCEPATH%\distributerewards.bat"
SET LIMITBREAKBONUSSTAT=STR
IF %TESTRUN% EQU 1 (
	CALL "%NEWRESOURCEPATH%\test.bat"
)
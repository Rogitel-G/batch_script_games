:ENEMYCHOOSEMAGICTYPE
SET /a BADCHOICE = 0
CALL "%BATTLERESOURCEPATH%\ranresources.bat"
SET /a ENEMYMAGTYPERAN=((%random%*(%ENEMYSPELLCHANCETOT%-1))/32767)+1
SET /a ENEMYMAGTYPERAN=((%random%*(%ENEMYSPELLCHANCETOT%-1))/32767)+1
IF %ENEMYMAGTYPERAN% LEQ %ENEMYOFFSPELLCHANCECUM% (
	SET ENEMYSPELLTYPE=OFF
) ELSE IF %ENEMYMAGTYPERAN% LEQ %ENEMYSTATSPELLCHANCECUM% (
	SET ENEMYSPELLTYPE=STAT
) ELSE IF %ENEMYMAGTYPERAN% LEQ %ENEMYRESTSPELLCHANCECUM% (
	SET ENEMYSPELLTYPE=REST
) ELSE IF %ENEMYMAGTYPERAN% LEQ %ENEMYSUPPSPELLCHANCECUM% (
	SET ENEMYSPELLTYPE=SUPP
) ELSE (
	CALL :ENEMYCHOOSEMAGICTYPE
)
CALL "%BATTLECHOICERESOURCEPATH%\enemychoosespell.bat"
::Ragata got into an infinite loop because all of is spells are reflectable and I had reflect on
::Removing AI for now
SET /a BADCHOICE = 0
IF %BADCHOICE% EQU 1 (
	GOTO :ENEMYCHOOSEMAGICTYPE
)
GOTO :EOF
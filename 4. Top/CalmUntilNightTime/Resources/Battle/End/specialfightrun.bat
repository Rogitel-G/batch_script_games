IF %ENEMYID% EQU %TRAMPID% (
	IF !PLAYERKEYITEM%TEYEID%ACQUIRED! EQU 1 (
		SET /a STORY9VERSIONNUM = 4
		ECHO. The tramp took his eye back as you ran away
		ECHO.
		SET /a PLAYERKEYITEM%TEYEID%ACQUIRED = 0
		TIMEOUT /T 2 > nul
	)
) ELSE IF %ENEMYID% EQU %LEEROYID% (
	SET /a STORY17VERSIONNUM = 3
)
CALL "%MENURESOURCEPATH%\menudisplay.bat"
ECHO %MENUNAME%: By !SKILL%SKILLID%EARNTEXT! you have earned the !SKILL%SKILLID%NAME! Skill^^!
ECHO.
ECHO         You can now use this regardless of the weapon you have equipped^^!
ECHO.
ECHO         This Skill !SKILL%SKILLID%DESCRIPTION!
SET /a PLAYERSKILL%SKILLID%EARNED = 1
SET /a PLAYERSKILL%SKILLID%ENABLED = 1
ECHO.
pause
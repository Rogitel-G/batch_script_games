IF %PLAYERGIL% GEQ %MOREDWARFPRICE% (
	CALL :BUY
) ELSE (
	CALL :NOBUY
)
pause
GOTO :EOF






:BUY
SET /a PLAYERGIL = %PLAYERGIL% - %MOREDWARFPRICE%
SET /a DWARFSLOTS = %DWARFSLOTS% + 1
CLS
ECHO.
IF %DWARFSLOTS% EQU 1 (
	ECHO Dwarf Sultan: You now have room for %DWARFSLOTS% dwarf
) ELSE (
	ECHO Dwarf Sultan: You now have room for %DWARFSLOTS% dwarves
)
ECHO.
GOTO :EOF

:NOBUY
CLS
ECHO.
ECHO Dwarf Sultan: You don't have enough gil to buy this upgrade
ECHO.
GOTO :EOF
CALL "%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat"
CALL "%MENURESOURCEPATH%\menudisplay.bat"
ECHO %MENUNAME%: You have the following custom items
ECHO.
SET /a COUNT = 0
:LOOP1START
SET /a COUNT = %COUNT% + 1
IF DEFINED ITEMSLOT%COUNT%NAME (
	ECHO !ITEMSLOT%COUNT%NAME!
) ELSE (
	GOTO :NOITEM
)
SET /a CCOUNT = 0
:LOOP2START
SET /a CCOUNT = %CCOUNT% + 1
IF DEFINED ITEMSLOT%COUNT%CONSTITUENT%CCOUNT% (
	SET /a TEMP = !ITEMSLOT%COUNT%CONSTITUENT%CCOUNT%!
)
IF DEFINED ITEMSLOT%COUNT%CONSTITUENT%CCOUNT% (
	ECHO - !ITEM%TEMP%NAME!
)
IF %CCOUNT% LSS !ITEMSLOT%COUNT%CONSTITUENTS! (
	GOTO :LOOP2START
)
ECHO.
:NOITEM
IF %COUNT% LSS 9 (
	GOTO :LOOP1START
)
pause
GOTO :EOF

IF %MUSICENABLED% EQU 0 (
	GOTO :EOF
)
PUSHD "%TEMPPATH%"
FOR /F "DELIMS=" %%I IN ('DIR /A:-D /B') DO SET "FILE=%%I" & CALL :STARTFILE
POPD "%TEMPPATH%"
GOTO :EOF


:STARTFILE
IF %STOP% EQU 1 (
	CALL "%MUSICPATH%\stopmusic.bat"
)
start /min "" "%MUSICPATH%\powershell.bat"
GOTO :EOF
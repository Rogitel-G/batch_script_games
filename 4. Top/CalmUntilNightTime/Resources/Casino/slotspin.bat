IF %SLOT1HOLD% EQU 1 (
	IF %SLOT2HOLD% EQU 1 (
		CALL :SLOTS12
		CALL :SLOTS12
		CALL :SLOTS12
		CALL :SLOTS12
		CALL :SLOTS12
		CALL :SLOTSDISPLAY
		GOTO :EOF
	) ELSE IF %SLOT3HOLD% EQU 1 (
		CALL :SLOTS13
		CALL :SLOTS13
		CALL :SLOTS13
		CALL :SLOTS13
		CALL :SLOTS13
		CALL :SLOTSDISPLAY
		GOTO :EOF
	) ELSE (
		CALL :SLOTS1
		CALL :SLOTS1
		CALL :SLOTS1
		CALL :SLOTS1
		CALL :SLOTS1
		CALL :SLOTSDISPLAY
		GOTO :EOF
	)
) ELSE IF %SLOT2HOLD% EQU 1 (
	IF %SLOT3HOLD% EQU 1 (
		CALL :SLOTS23
		CALL :SLOTS23
		CALL :SLOTS23
		CALL :SLOTS23
		CALL :SLOTS23
		CALL :SLOTSDISPLAY
		GOTO :EOF
	) ELSE (
		CALL :SLOTS2
		CALL :SLOTS2
		CALL :SLOTS2
		CALL :SLOTS2
		CALL :SLOTS2
		CALL :SLOTSDISPLAY
		GOTO :EOF
	)
) ELSE IF %SLOT3HOLD% EQU 1 (
	CALL :SLOTS3
	CALL :SLOTS3
	CALL :SLOTS3
	CALL :SLOTS3
	CALL :SLOTS3
	CALL :SLOTSDISPLAY
		GOTO :EOF
) ELSE (
	CALL :SLOTS
	CALL :SLOTS
	CALL :SLOTS
	CALL :SLOTS
	CALL :SLOTS
	CALL :SLOTSDISPLAY
		GOTO :EOF
)

:SLOTS
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  7  บ  7  บ  7  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
GOTO :EOF

:SLOTS1
CLS 
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  7  บ  7  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
GOTO :EOF



:SLOTS12
CLS 
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  %SLOT2DISPLAY%  บ  7  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
GOTO :EOF


:SLOTS13
CLS 
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  7  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
GOTO :EOF



:SLOTS2
CLS 
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ    บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  7  บ  %SLOT2DISPLAY%  บ  7  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
GOTO :EOF


:SLOTS23
CLS 
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ  %SLOT2DISPLAY%  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  7  บ  %SLOT2DISPLAY%  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
GOTO :EOF


:SLOTS3

CLS 
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ    บ    บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  7  บ  7  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
CALL :WAITFORZERO
GOTO :EOF


:SLOTSDISPLAY
CLS
ECHO.
ECHO.           ษอออออออออออออออป
ECHO    ษอออออออสอออออออออออออออสอออออออป
ECHO    บ           ษอออออออป           บ
ECHO    บ           บ Slots บ           บ
ECHO    บ           ศอออออออผ           บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ      ษอออออหอออออหอออออป      บ
ECHO    บ      บ     บ     บ     บ      บ  
ECHO    บ      บ  %SLOT1DISPLAY%  บ  %SLOT2DISPLAY%  บ  %SLOT3DISPLAY%  บ      บ
ECHO    บ      บ     บ     บ     บ      บ  Ü
ECHO    บ      ศอออออสอออออสอออออผ      บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               บ  บ
ECHO    บ                               ฬออผ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    บ                               บ
ECHO    ศอออออออออออออออออออออออออออออออผ
GOTO :EOF

:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

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
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  7  �  7  �  7  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
REM PING 1.1.1.1 -n 1 -w %WAITTIME% >NUL
CALL :WAITFORZERO
GOTO :EOF

:SLOTS1
CLS 
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  7  �  7  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
GOTO :EOF



:SLOTS12
CLS 
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  %SLOT2DISPLAY%  �  7  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
GOTO :EOF


:SLOTS13
CLS 
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  7  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
GOTO :EOF



:SLOTS2
CLS 
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �    �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  7  �  %SLOT2DISPLAY%  �  7  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
GOTO :EOF


:SLOTS23
CLS 
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �  %SLOT2DISPLAY%  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  7  �  %SLOT2DISPLAY%  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
GOTO :EOF


:SLOTS3

CLS 
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �    �    �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  7  �  7  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
CALL :WAITFORZERO
GOTO :EOF


:SLOTSDISPLAY
CLS
ECHO.
ECHO.           ���������������ͻ
ECHO    �������������������������������ͻ
ECHO    �           �������ͻ           �
ECHO    �           � Slots �           �
ECHO    �           �������ͼ           �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �      �����������������ͻ      �
ECHO    �      �     �     �     �      �  
ECHO    �      �  %SLOT1DISPLAY%  �  %SLOT2DISPLAY%  �  %SLOT3DISPLAY%  �      �
ECHO    �      �     �     �     �      �  �
ECHO    �      �����������������ͼ      �  �
ECHO    �                               �  �
ECHO    �                               �  �
ECHO    �                               ��ͼ
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �                               �
ECHO    �������������������������������ͼ
GOTO :EOF

:WAITFORZERO
TIMEOUT /T 0 > nul
GOTO :EOF

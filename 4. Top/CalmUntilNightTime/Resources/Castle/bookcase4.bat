SET /a PLAYERXCOORD = %PLAYEROLDXCOORD%
SET /a PLAYERYCOORD = %PLAYEROLDYCOORD%
CALL "%CASTLERESOURCEPATH%\bookcasedisplay.bat"
CALL :WAITFORONE
CALL "%CASTLERESOURCEPATH%\bookcasechoosedisplay.bat"
CALL :WAITFORTHREE
CALL :BOOKCLOSED
CALL :CALCULATETEXT
CALL :BOOKOPEN
GOTO :EOF

:BOOKCLOSED
CLS
ECHO.
ECHO    ������������������������������������������������ͻ
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-7%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-8%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-9%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-10%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-11%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-12%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-13%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-14%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-15%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-16%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-17%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-18%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-19%                �
ECHO    �              %STATICEMWEAPONCREATUREENEMY1-20%                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    �                                                �
ECHO    ������������������������������������������������ͼ
ECHO.
ECHO This creature looks an awful lot like the nightmare you had before all this began.
ECHO.
CALL :WAITFORTWO
GOTO :EOF

:BOOKOPEN
CLS
ECHO.
ECHO    ����������������������������������������������������������������������������������������������������ͻ
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-7%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-8%                 �
ECHO    � %LINE1FULL% �                %STATICEMWEAPONCREATUREENEMY1-9%                 �
ECHO    � %LINE2FULL% �                %STATICEMWEAPONCREATUREENEMY1-10%                 �
ECHO    � %LINE3FULL% �                %STATICEMWEAPONCREATUREENEMY1-11%                 �
ECHO    � %LINE4FULL% �                %STATICEMWEAPONCREATUREENEMY1-12%                 �
ECHO    � %LINE5FULL% �                %STATICEMWEAPONCREATUREENEMY1-13%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-14%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-15%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-16%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-17%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-18%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-19%                 �
ECHO    �                                                �                %STATICEMWEAPONCREATUREENEMY1-20%                 �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    �                                                �                                                   �
ECHO    ����������������������������������������������������������������������������������������������������ͼ
ECHO.
pause
GOTO :EOF


:CALCULATETEXT
SET /a MAXSPACES = 46
IF %BEATNIGHTMAREBOSS% EQU 1 (
	IF /I %DIFFICULTY% EQU EASY (
		SET LINE1=You've defeated the creature of your
		SET LINE2=nightmares but it was weakened.
		SET LINE3=
		SET LINE4=Defeat it on Hard mode and you shall
		SET LINE5=find great riches.
		SET /a LINE1LENGTH = 36
		SET /a LINE2LENGTH = 30
		SET /a LINE3LENGTH = 0
		SET /a LINE4LENGTH = 36
		SET /a LINE5LENGTH = 18
	)
)
IF !PLAYERKEYITEM%NIGHTMAREKEYID%ACQUIRED! EQU 0 (
	SET LINE1=Those who failed to conquer their nightmares
	SET LINE2=on Hard mode will find no riches here...
	SET LINE3=
	SET LINE4=
	SET LINE5=
	SET /a LINE1LENGTH = 44
	SET /a LINE2LENGTH = 40
	SET /a LINE3LENGTH = 0
	SET /a LINE4LENGTH = 0
	SET /a LINE5LENGTH = 0
) ELSE IF %NIGHTMAREMONEYACQUIRED% EQU 1 (
	SET LINE1=You've already claimed your riches son.
	SET LINE2=
	SET LINE3=Get out of my pages.
	SET LINE4=
	SET LINE5=
	SET /a LINE1LENGTH = 39
	SET /a LINE2LENGTH = 0
	SET /a LINE3LENGTH = 20
	SET /a LINE4LENGTH = 0
	SET /a LINE5LENGTH = 0
) ELSE (
	SET LINE1=You have defeated your nightmares on Hard mode
	SET LINE2=
	SET LINE3=Have 10,000 Gil
	SET LINE4=
	SET LINE5=
	SET /a LINE1LENGTH = 47
	SET /a LINE2LENGTH = 0
	SET /a LINE3LENGTH = 15
	SET /a LINE4LENGTH = 0
	SET /a LINE5LENGTH = 0
	SET /a PLAYERGIL = %PLAYERGIL% + 10000
	SET /a NIGHTMAREMONEYACQUIRED = 1
	ECHO.
	pause
)
SET /a COUNT = 0
:TEXTLOOP
SET /a COUNT = %COUNT% + 1
SET /a TEMP = %MAXSPACES% - !LINE%COUNT%LENGTH!
SET LINE%COUNT%FULL=!LINE%COUNT%!!SPACES%TEMP%!
IF %COUNT% LSS 5 (
	GOTO :TEXTLOOP
)
GOTO :EOF


:TEXT
IF %BEATNIGHTMAREBOSS% EQU 1 (
	IF /I %DIFFICULTY% EQU EASY (
		ECHO You've defeated the creature of your nightmares but it was weakened.
		ECHO.
		ECHO Defeat it on Hard mode and you shall find great riches
		ECHO.
		pause
		GOTO :EOF
	)
)
IF !PLAYERKEYITEM%NIGHTMAREKEYID%ACQUIRED! EQU 0 (
	ECHO Those who failed to conquer their nightmares on Hard mode will find no riches here...
	ECHO.
	pause
) ELSE IF %NIGHTMAREMONEYACQUIRED% EQU 1 (
	ECHO This is where I found the 10,000 Gil before^^!
	ECHO.
	pause
) ELSE (
	ECHO You have defeated your nightmares on Hard mode. Have 10,000 Gil^^!
	SET /a PLAYERGIL = %PLAYERGIL% + 10000
	SET /a NIGHTMAREMONEYACQUIRED = 1
	ECHO.
	pause
)
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
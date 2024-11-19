:START
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ                                                    ณ                                               บ
ECHO    บ                                                    ณ                                               บ
ECHO    บ                                                   ฺมฟ                                              บ
ECHO    บ                                                   ณ ณ                                              บ
ECHO    บ                                                   ณ ณ                                              บ
ECHO    บ                                               ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤบ
ECHO    บ                                               ณ                                                    บ
ECHO    บ                                               ณ                                                    บ
ECHO    บ                                               ณ                                                    บ
ECHO    บ                                               ณ                                                    บ
ECHO    บ                                        ฺฤฤฤฤฤฤู                                                    บ
ECHO    บ                                        ณ                                                           บ
ECHO    บ                                        ณ                                                           บ
ECHO    บ                                        ณ                                                           บ
ECHO    บ                                        ณ                                                           บ
ECHO    บ                                 ฺฤฤฤฤฤฤู                                                           บ
ECHO    บ                                 ณ                                                                  บ
ECHO    บ                                 ณ                                                                  บ
ECHO    บ                                 ณ                                                                  บ
ECHO    บ                                 ณ                                                                  บ
ECHO    บ                          ฺฤฤฤฤฤฤู                                                                  บ
ECHO    บ                          ณ                                                                         บ
ECHO    บ                          ณ                                                                         บ
ECHO    บ                          ณ                                                                         บ
ECHO    บ                          ณ                                                                         บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO.
ECHO Enter the name of your best friend
ECHO.
SET /P FRIENDNAME=
ECHO.
CALL :FRIENDNAMELENGTH
IF %FRIENDNAMELENGTH% GTR 11 (
	CALL :TOOLONG
	GOTO :START
)
SET FRIENDNAMECAP=%FRIENDNAME%
CALL :FRIENDNAMECAP FRIENDNAMECAP
CALL :FRIENDHOUSENAME
CLS
GOTO :EOF


:FRIENDNAMELENGTH
SET /a LENGTH = 0
:FRIENDNAMELOOPSTART
SET /a LENGTH += 1
SET SUBSTR=!FRIENDNAME:~%LENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :FRIENDNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %LENGTH% + 1
	SET SUBSTR=!FRIENDNAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :FRIENDNAMELOOPSTART
	)
)
SET /a FRIENDNAMELENGTH = %LENGTH%
GOTO :EOF

:TOOLONG
ECHO This name is too long, choose a name of 11 characters or less
TIMEOUT /T 2 > nul
GOTO :EOF

:FRIENDNAMECAP
SET %~1=!%1:a=A!
SET %~1=!%1:b=B!
SET %~1=!%1:c=C!
SET %~1=!%1:d=D!
SET %~1=!%1:e=E!
SET %~1=!%1:f=F!
SET %~1=!%1:g=G!
SET %~1=!%1:h=H!
SET %~1=!%1:i=I!
SET %~1=!%1:j=J!
SET %~1=!%1:k=K!
SET %~1=!%1:l=L!
SET %~1=!%1:m=M!
SET %~1=!%1:n=N!
SET %~1=!%1:o=O!
SET %~1=!%1:p=P!
SET %~1=!%1:q=Q!
SET %~1=!%1:r=R!
SET %~1=!%1:s=S!
SET %~1=!%1:t=T!
SET %~1=!%1:u=U!
SET %~1=!%1:v=V!
SET %~1=!%1:w=W!
SET %~1=!%1:x=X!
SET %~1=!%1:y=Y!
SET %~1=!%1:z=Z!
GOTO:EOF

:FRIENDHOUSENAME
CALL :FRIENDHOUSENAME%FRIENDNAMELENGTH%
SET FRIENDHOUSEVAR1=!FRIENDHOUSEVAR:~0,5!
SET FRIENDHOUSEVAR2=!FRIENDHOUSEVAR:~5,5!
SET FRIENDHOUSEVAR3=!FRIENDHOUSEVAR:~10!
GOTO :EOF

:FRIENDHOUSENAME1
SET FRIENDHOUSEVAR=บ     %FRIENDNAME%'s     บ
GOTO :EOF

:FRIENDHOUSENAME2
SET FRIENDHOUSEVAR=บ    %FRIENDNAME%'s     บ
GOTO :EOF

:FRIENDHOUSENAME3
SET FRIENDHOUSEVAR=บ    %FRIENDNAME%'s    บ
GOTO :EOF

:FRIENDHOUSENAME4
SET FRIENDHOUSEVAR=บ   %FRIENDNAME%'s    บ
GOTO :EOF

:FRIENDHOUSENAME5
SET FRIENDHOUSEVAR=บ   %FRIENDNAME%'s   บ
GOTO :EOF

:FRIENDHOUSENAME6
SET FRIENDHOUSEVAR=บ  %FRIENDNAME%'s   บ
GOTO :EOF

:FRIENDHOUSENAME7
SET FRIENDHOUSEVAR=บ  %FRIENDNAME%'s  บ
GOTO :EOF

:FRIENDHOUSENAME8
SET FRIENDHOUSEVAR=บ %FRIENDNAME%'s  บ
GOTO :EOF

:FRIENDHOUSENAME9
SET FRIENDHOUSEVAR=บ %FRIENDNAME%'s บ
GOTO :EOF

:FRIENDHOUSENAME10
SET FRIENDHOUSEVAR=บ%FRIENDNAME%'s บ
GOTO :EOF

:FRIENDHOUSENAME11
SET FRIENDHOUSEVAR=บ%FRIENDNAME%'sบ
GOTO :EOF
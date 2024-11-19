:START
CLS
ECHO.
ECHO    ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                                             บ
ECHO    บ      ณ                                                                 ฺฤฤฤฤฟ                      บ
ECHO    บ      ณ                          ษออออฟ                                 ณO   ณ                      บ
ECHO    บ      ณ                          บ   Oณ                                 ณ    ณ                      บ
ECHO    บฤฤฤฤฤฤู                          บ    ณ                                 รฤ   ณ                      บ
ECHO    บ                                 บ   ฤด                                 ภฤฟฺฤู                      บ
ECHO    บ                                 บฤฟฺฤู                                ฺฤฤูภฤฤฟ                     บ
ECHO    บ                              ณ ฺบฤูภฤฤฟ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ                               ณ      ณ                     บ
ECHO    บ                              ณ ณบ     ณ   ฺฤฟ                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ   ฤฤฤลฤฤฤณ ั                         ณ  ณ   ณ                     บ
ECHO    บ                              ณ ณ      ณ   ภฤู                         ณ  ณ   ณ                     บ
ECHO    บฤฤฤฤฤฤฤฤฤฤฟ                   ณ ณ      ณอออหอออออออออหอออ              ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ณ      ณ   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ ภฤฤยฤฤฤู   บ         บ                 ณ  ณ   ณ                     บ
ECHO    บ          ณ                   ณ    ภฤฤฤฤฟ  บ         บ                 ภฤยณฤยฤู                     บ
ECHO    บ          ณ                   ภยฤฤฤฤฤยฤฤณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    บ          ณ                    ณ     ณ  ณ  บ         บ                   ณ  ณ                       บ
ECHO    ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO.
ECHO Enter the name of the girl next door
ECHO.
SET /P GIRLNAME=
ECHO.
CALL :GIRLNAMELENGTH
IF %GIRLNAMELENGTH% GTR 11 (
	CALL :TOOLONG
	GOTO :START
)
SET GIRLNAMECAP=%GIRLNAME%
CALL :GIRLNAMECAP GIRLNAMECAP
CALL :GIRLHOUSENAME
CLS
GOTO :EOF


:GIRLNAMELENGTH
SET /a LENGTH = 0
:GIRLNAMELOOPSTART
SET /a LENGTH += 1
SET SUBSTR=!GIRLNAME:~%LENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :GIRLNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %LENGTH% + 1
	SET SUBSTR=!GIRLNAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :GIRLNAMELOOPSTART
	)
)
SET /a GIRLNAMELENGTH = %LENGTH%
GOTO :EOF

:TOOLONG
ECHO This name is too long, choose a name of 11 characters or less
TIMEOUT /T 2 > nul
GOTO :EOF

:GIRLNAMECAP
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

:GIRLHOUSENAME
CALL :GIRLHOUSENAME%GIRLNAMELENGTH%
SET GIRLHOUSEVAR1=!GIRLHOUSEVAR:~0,5!
SET GIRLHOUSEVAR2=!GIRLHOUSEVAR:~5,5!
SET GIRLHOUSEVAR3=!GIRLHOUSEVAR:~10!
GOTO :EOF

:GIRLHOUSENAME1
SET GIRLHOUSEVAR=บ     %GIRLNAME%'s     บ
GOTO :EOF

:GIRLHOUSENAME2
SET GIRLHOUSEVAR=บ    %GIRLNAME%'s     บ
GOTO :EOF

:GIRLHOUSENAME3
SET GIRLHOUSEVAR=บ    %GIRLNAME%'s    บ
GOTO :EOF

:GIRLHOUSENAME4
SET GIRLHOUSEVAR=บ   %GIRLNAME%'s    บ
GOTO :EOF

:GIRLHOUSENAME5
SET GIRLHOUSEVAR=บ   %GIRLNAME%'s   บ
GOTO :EOF

:GIRLHOUSENAME6
SET GIRLHOUSEVAR=บ  %GIRLNAME%'s   บ
GOTO :EOF

:GIRLHOUSENAME7
SET GIRLHOUSEVAR=บ  %GIRLNAME%'s  บ
GOTO :EOF

:GIRLHOUSENAME8
SET GIRLHOUSEVAR=บ %GIRLNAME%'s  บ
GOTO :EOF

:GIRLHOUSENAME9
SET GIRLHOUSEVAR=บ %GIRLNAME%'s บ
GOTO :EOF

:GIRLHOUSENAME10
SET GIRLHOUSEVAR=บ%GIRLNAME%'s บ
GOTO :EOF

:GIRLHOUSENAME11
SET GIRLHOUSEVAR=บ%GIRLNAME%'sบ
GOTO :EOF
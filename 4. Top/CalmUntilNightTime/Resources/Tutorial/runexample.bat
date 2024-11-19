@ECHO OFF
CALL :VARSETUP
CALL :ROUND1CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND1ACTION
CALL :ROUND2CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND2ACTION
GOTO :EOF

:VARSETUP
SET ENEMYNAME=T-rex
SET /a ENEMYNAMELENGTH = 5
SET /a SPACENUM = 32 - %PLAYERNAMELENGTH%
SET PLAYERNAMEVAR=%PLAYERNAME%!SPACES%SPACENUM%!
SET /a SPACENUM = 17 - %ENEMYNAMELENGTH%
SET ENEMYNAMEVAR=%ENEMYNAME%!SPACES%SPACENUM%!
GOTO :EOF

:ROUND1CHOICE
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:100/100                       ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO What would you like to do?
ECHO.
ECHO. 1 - Attack
ECHO. 2 - Magic
ECHO. 3 - Skill
ECHO. 4 - Item
ECHO. 5 - Catch
ECHO. 6 - Run
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %MOTHERNAME%: RUNNNNN^^!
ECHO.
:CHOICE1
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "6" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	IF %EXPLICIT% EQU 1 (
		ECHO %MOTHERNAME%: FUCKING RUNNNNN^^!
	) ELSE (
		ECHO %MOTHERNAME%: RUNNNNN^^!
	)
	ECHO.
	GOTO :CHOICE1
)
GOTO :EOF


:ROUND1ACTION
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:100/100                       ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:100/100                       ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO Attempting to escape...
ECHO.
CALL :WAITFORZERO
ECHO....
ECHO.
CALL :WAITFORZERO
ECHO....
ECHO.
CALL :WAITFORONE
ECHO The %ENEMYNAME% tripped you up!
ECHO.
pause
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:100/100                       ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO %ENEMYNAME% attacks^^!
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:100/100                       ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES15%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES15%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES15% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES15%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES15%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES15%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%    ³     \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES15%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES15%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES15%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO %ENEMYNAME% attacks^^!
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:100/100                       ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO %ENEMYNAME%'s attack did 81 damage^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF


:ROUND2CHOICE
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:19/100                        ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO What would you like to do?
ECHO.
ECHO. 1 - Attack
ECHO. 2 - Magic
ECHO. 3 - Skill
ECHO. 4 - Item
ECHO. 5 - Catch
ECHO. 6 - Run
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %MOTHERNAME%: Your speed is compared to %ENEMYNAME%'s when you try to run.
ECHO      The lower your SPD, the harder it will be to escape (and catch things too)
CALL :WAITFORTHREE
ECHO      It's a random chance though so RUNNNNN^^!
ECHO.
:CHOICE2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "6" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	IF %EXPLICIT% EQU 1 (
		ECHO %MOTHERNAME%: FUCKING RUNNNNN^^!
	) ELSE (
		ECHO %MOTHERNAME%: RUNNNNN^^!
	)
	ECHO.
	GOTO :CHOICE2
)
GOTO :EOF


:ROUND2ACTION
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:19/100                        ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES35%
ECHO. ³                                  ³                   ³%SPACES35%
ECHO. ³ HP:19/100                        ³ HP:1000/1000      ³%SPACES35%
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³%SPACES35%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%   ___             
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20% _/þ  \            
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%/      \           
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%       \        
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%\___     \         
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%    ³     ³        
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%    ³     \        
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%   /       ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20% ÏÍ³ÏÍ      \      
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%   ³         ³   _ 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%    \         \_// 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³ __  _____/  
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%     ³³  ³³        
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%    ÚÙ³ ÚÙ³        
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%    ÀÄÙ ÀÄÙ        
ECHO.
ECHO Attempting to escape...
ECHO.
CALL :WAITFORZERO
ECHO....
ECHO.
CALL :WAITFORZERO
ECHO....
ECHO.
CALL :WAITFORONE
ECHO Got Away Safely...
ECHO.
pause
GOTO :EOF



:WAITFORZERO
TIMEOUT /T 0 > nul
TIMEOUT /T 0 > nul
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

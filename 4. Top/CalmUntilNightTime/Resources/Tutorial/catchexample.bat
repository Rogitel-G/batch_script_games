@ECHO OFF
CALL :VARSETUP
SET /a SPACENUM = %GIRLNAMELENGTH% + 2
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
CALL :ROUND3CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND3ACTION
CALL :PREVIEW
GOTO :EOF

:VARSETUP
SET ENEMYNAME=Yorkshire Terrier
SET /a ENEMYNAMELENGTH = 17
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
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
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
ECHO %GIRLNAME%: Right, let's try to catch the %ENEMYNAME%
ECHO.
:CHOICE1
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "5" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %GIRLNAME%: Let's choose Catch for now
	ECHO.
	GOTO :CHOICE1
)
GOTO :EOF


:ROUND1ACTION
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³%SPACES7%  ÚÄÄÄ¿        %SPACES13%
ECHO. ³ MP:50/50                         ³                   ³%SPACES7%  ³  O³        %SPACES13%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³%SPACES7%  ³   ´        %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7%  ÀÂÄÂÙ        %SPACES13%
ECHO. ³ AP:0/10                          ³                   ³%SPACES7% ÚÄÙ ÀÄ¿       %SPACES13%
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES7% ³     ³       %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%
ECHO. ³ Limit Break                      ³                   ³%SPACES7% ³   ³ ³       %SPACES13%      
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES7% ³   ³ ³       %SPACES13%  
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%  
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES7% ÀÂÄÄ³ÂÙ       %SPACES13%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES7%  ³   ³        %SPACES13%                   
ECHO.
ECHO Attempting to catch...
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³%SPACES15%  ÚÄÄÄ¿ %SPACES12%
ECHO. ³ MP:50/50                         ³                   ³%SPACES15%  ³  O³ %SPACES12%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³%SPACES15%  ³   ´ %SPACES12%
ECHO. ³                                  ³                   ³%SPACES15%  ÀÂÄÂÙ %SPACES12%
ECHO. ³ AP:0/10                          ³                   ³%SPACES15% ÚÄÙ ÀÄ¿%SPACES12%
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES15% ³     ³%SPACES12%
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%
ECHO. ³ Limit Break                      ³                   ³%SPACES15% ³   ³ ³%SPACES12%      
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES15% ³   ³ ³%SPACES12%  
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%  
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES15% ÀÂÄÄ³ÂÙ%SPACES12%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES15%  ³   ³ %SPACES12%                   
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³%SPACES20%  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³%SPACES20%  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³%SPACES20%  ³   ´        
ECHO. ³                                  ³                   ³%SPACES20%  ÀÂÄÂÙ        
ECHO. ³ AP:0/10                          ³                   ³%SPACES20% ÚÄÙ ÀÄ¿       
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES20% ³     ³       
ECHO. ³                                  ³                   ³%SPACES20% ³   ÄÄÄÄÄÄÄÄ  
ECHO. ³ Limit Break                      ³                   ³%SPACES20% ³     ³             
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³       %STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES20% ÀÂÄÄÄÂÙ       %STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³        %STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³        %STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³        %STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES20%  ³   ³                           
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
ECHO.
ECHO ...
ECHO.
CALL :WAITFORZERO
ECHO You ran around for quite some time trying to catch the %ENEMYNAME%
ECHO but you weren't fast enough!
ECHO.
CALL :WAITFORONE
ECHO The %ENEMYNAME% was not scared by your capture attempt	
ECHO.
CALL :WAITFORTWO
ECHO %GIRLNAME%: Ok so that didn't work. My mum told me that you need to
ECHO !SPACES%SPACENUM%!weaken enemies before you can catch them.
CALL :WAITFORTHREE
ECHO.
ECHO !SPACES%SPACENUM%!She said that my SPD would be compared to their HP.
CALL :WAITFORTWO
ECHO.
ECHO !SPACES%SPACENUM%!I'm not sure what she was talking about but I think I should hurt it...
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!Mum also said that if you hurt it a bit, but not enough
ECHO !SPACES%SPACENUM%!then it might run away if you fail to catch it. We'd best
ECHO !SPACES%SPACENUM%!make sure it's good and mamed before we try to catch it^^!
ECHO.
pause
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% attacks
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%      
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES15%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 8 damage^^!
ECHO.
CALL :WAITFORONE
GOTO :EOF

:ROUND2CHOICE
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:92/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
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
ECHO %GIRLNAME%: Let's set it on fire^^!
ECHO !SPACES%SPACENUM%!Choose Magic, then Offensive, and then fire
ECHO.
:CHOICE2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %GIRLNAME%: Let's choose Magic for now
	ECHO.
	GOTO :CHOICE2
)
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:92/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO What would you like to do?
ECHO.
ECHO. 1 - Offensive
ECHO. 2 - Status
ECHO. 3 - Restorative
ECHO. 4 - Support
ECHO. 5 - Custom
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %GIRLNAME%: Choose Offensive
ECHO.
:CHOICE2-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %GIRLNAME%: Let's choose Offensive for now
	ECHO.
	GOTO :CHOICE2-2
)
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:92/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO What would you like to do?
ECHO.
ECHO. 1 - Fire
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %GIRLNAME%: Choose Fire
ECHO.
:CHOICE2-3
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %GIRLNAME%: Let's choose Fire for now
	ECHO.
	GOTO :CHOICE2-3
)
GOTO :EOF

:ROUND2ACTION
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:92/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:92/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:92/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%      
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES15%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
ECHO Rabies Bite did 18 damage^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       °±±²²   %SPACES12%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       °±±²²ÛÛ %SPACES12%
ECHO. ³                                  ³                   ³ ³   ÄÄÄÄÄÄÄÄ  °±±²²ÛÛÛ%SPACES12%
ECHO. ³ Limit Break                      ³                   ³ ³     ³ÄÄÄÄÄÄ °±±²²ÛÛÛ%SPACES12%      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³     ³       °±±²²ÛÛ %SPACES12%  
ECHO. ³                                  ³                   ³ ³     ³       °±±²²   %SPACES12%  
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES6%°±±²²   %SPACES6%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES6%°±±²²ÛÛ %SPACES6%
ECHO. ³                                  ³                   ³ ³   ÄÄÄÄÄÄÄÄ  %SPACES6%°±±²²ÛÛÛ%SPACES6%
ECHO. ³ Limit Break                      ³                   ³ ³     ³ÄÄÄÄÄÄ %SPACES6%°±±²²ÛÛÛ%SPACES6%      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³     ³       %SPACES6%°±±²²ÛÛ %SPACES6%  
ECHO. ³                                  ³                   ³ ³     ³       %SPACES6%°±±²²   %SPACES6%  
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:50/50          ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES12%°±±²²   
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES12%°±±²²ÛÛ 
ECHO. ³                                  ³                   ³ ³   ÄÄÄÄÄÄÄÄ  %SPACES12%°±±²²ÛÛÛ
ECHO. ³ Limit Break                      ³                   ³ ³     ³ÄÄÄÄÄÄ %SPACES12%°±±²²ÛÛÛ      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³     ³       %SPACES12%°±±²²ÛÛ   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES12%°±±²²     
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORONE
ECHO It's super effective^^!
ECHO.
CALL :WAITFORTWO
ECHO The Fire spell did 48 damage^^!
ECHO.
CALL :WAITFORTHREE
GOTO :EOF

:ROUND3CHOICE
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:2/50           ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ Û°°°°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:45/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
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
ECHO %GIRLNAME%: Wow, we almost over did it there. That whole super effective
ECHO !SPACES%SPACENUM%!thing really makes a difference.
ECHO !SPACES%SPACENUM%!It's weakened now, let's catch it^^!
ECHO.
:CHOICE3
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "5" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %GIRLNAME%: Let's choose Catch for now
	ECHO.
	GOTO :CHOICE3
)
GOTO :EOF

:ROUND3ACTION
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:2/50           ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ Û°°°°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:45/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%  
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:2/50           ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ Û°°°°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES7%  ÚÄÄÄ¿        %SPACES13%
ECHO. ³ MP:45/50                         ³                   ³%SPACES7%  ³  O³        %SPACES13%
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³                   ³%SPACES7%  ³   ´        %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7%  ÀÂÄÂÙ        %SPACES13%
ECHO. ³ AP:4/10                          ³                   ³%SPACES7% ÚÄÙ ÀÄ¿       %SPACES13%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³%SPACES7% ³     ³       %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%
ECHO. ³ Limit Break                      ³                   ³%SPACES7% ³   ³ ³       %SPACES13%      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES7% ³   ³ ³       %SPACES13%  
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%  
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES7% ÀÂÄÄ³ÂÙ       %SPACES13%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES7%  ³   ³        %SPACES13%                   
ECHO.
ECHO Attempting to catch...
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:2/50           ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ Û°°°°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES15%  ÚÄÄÄ¿ %SPACES12%
ECHO. ³ MP:45/50                         ³                   ³%SPACES15%  ³  O³ %SPACES12%
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³                   ³%SPACES15%  ³   ´ %SPACES12%
ECHO. ³                                  ³                   ³%SPACES15%  ÀÂÄÂÙ %SPACES12%
ECHO. ³ AP:4/10                          ³                   ³%SPACES15% ÚÄÙ ÀÄ¿%SPACES12%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³%SPACES15% ³     ³%SPACES12%
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%
ECHO. ³ Limit Break                      ³                   ³%SPACES15% ³   ³ ³%SPACES12%      
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES15% ³   ³ ³%SPACES12%  
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%  
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES15% ÀÂÄÄ³ÂÙ%SPACES12%%STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES15%  ³   ³ %SPACES12%                   
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:74/100                        ³ HP:2/50           ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ Û°°°°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES20%  ÚÄÄÄ¿        
ECHO. ³ MP:45/50                         ³                   ³%SPACES20%  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³                   ³%SPACES20%  ³   ´        
ECHO. ³                                  ³                   ³%SPACES20%  ÀÂÄÂÙ        
ECHO. ³ AP:4/10                          ³                   ³%SPACES20% ÚÄÙ ÀÄ¿       
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³%SPACES20% ³     ³       
ECHO. ³                                  ³                   ³%SPACES20% ³   ÄÄÄÄÄÄÄÄ  
ECHO. ³ Limit Break                      ³                   ³%SPACES20% ³     ³             
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³       %STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES20% ÀÂÄÄÄÂÙ       %STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³        %STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³        %STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³        %STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES20%  ³   ³                          
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
ECHO.
ECHO ...
ECHO.
CALL :WAITFORZERO
ECHO Woohoo^^! You caught the %ENEMYNAME%^^!
ECHO.
CALL :WAITFORONE
ECHO You can now fight the %ENEMYNAME% in training and you'll see it's
ECHO be able to see it's stats when you fight one in future^^!
ECHO.
CALL :WAITFORTHREE
ECHO %GIRLNAME%: Woohoo^^! We caught it^^! My mum said that there's a training
ECHO !SPACES%SPACENUM%!centre that all caught animals go to and you can fight them to level up.
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!The cool thing I found is that you can now see all sorts of information when
ECHO !SPACES%SPACENUM%!you encounter %ENEMYNAME%s in future, look^^!
ECHO.
pause
GOTO :EOF

:PREVIEW
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³                                                   ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ³ HP:74/100                        ³ HP:2/50           ³ Weakness  Resist    E.Immune  Absorb    S.Immune  ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ Û°°°°°°°°°        ³                                                   ³
ECHO. ³                                  ³                   ³ Fire                                              ³
ECHO. ³ MP:45/50                         ³                   ³                                                   ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³                   ³                                                   ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ³ AP:4/10                          ³                   ³                                                   ³
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³                                                   ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ³ Limit Break                      ³                   ³                                                   ³
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ Exp:1000                 Gil:1000                 ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ³                                  ³                   ³ Yorkshire Terriers are small canine creatures     ³
ECHO. ³                                  ³                   ³ Don't set it on fire, I have a little one and     ³
ECHO. ³                                  ³                   ³ they most certainly don't like that^^!              ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO.
ECHO %GIRLNAME%: The information on the right will come up when you 
ECHO !SPACES%SPACENUM%!encounter a %ENEMYNAME% in future. Cool huh^^!
SET /a ENEMY1CAUGHT = 1
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

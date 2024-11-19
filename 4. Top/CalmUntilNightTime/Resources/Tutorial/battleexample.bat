@ECHO OFF
CALL :VARSETUP
SET /a SPACENUM = %FRIENDNAMELENGTH% + 2
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
CALL :ROUND4CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND4ACTION
CALL :ROUND5CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND5ACTION
CALL :ROUND6CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND6ACTION
CALL :ROUND7CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND7ACTION
CALL :ROUND8CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND8ACTION
CALL :ROUND9CHOICE
IF %CHOICE% EQU 0 (
	GOTO :EOF
)
CALL :ROUND9ACTION
CALL :REWARDS
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
ECHO. ³ HP:100/100                       ³ HP:200/200        ³
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
ECHO %FRIENDNAME%: Let's just choose Attack for now
ECHO.
:CHOICE1
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Attack for now
	ECHO.
	GOTO :CHOICE1
)
pause
GOTO :EOF


:ROUND1ACTION
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:200/200        ³
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
ECHO %FRIENDNAME%: Once you've chosen your action, It'll calculate who goes first.
ECHO !SPACES%SPACENUM%!This is dependent on your Speed (SPD) vs the enemy's SPD.
ECHO.
ECHO !SPACES%SPACENUM%!It's also got a random element so it won't be the same every time
ECHO !SPACES%SPACENUM%!but if you have higher SPD then you have a higher chance of going first.
ECHO.
pause
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:200/200        ³
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
ECHO %PLAYERNAME%'s attack did 12 damage^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:200/200        ³                ³   %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³                ³   %SPACES15%
ECHO. ³                                  ³                   ³       ÚÄÄÄ¿    ³   %SPACES15%
ECHO. ³ MP:50/50                         ³                   ³       ³  O³    ³   %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³       ³   ´    ³   %SPACES15%
ECHO. ³                                  ³                   ³       ÀÂÄÂÙ    ³   %SPACES15%
ECHO. ³ AP:0/10                          ³                   ³      ÚÄÙ ÀÄ¿  ÄÅÄ  %SPACES15%
ECHO. ³ °°°°°°°°°°                       ³                   ³      ³     ³ / ³   %SPACES15%
ECHO. ³                                  ³                   ³      ³     /   ³   %SPACES15%
ECHO. ³ Limit Break                      ³                   ³      ³   / ³       %SPACES15%                    
ECHO. ³ °°°°°°°°°°                       ³                   ³      ³     ³       %SPACES15%                    
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%                   
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³      ÀÂÄÄÄÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³   ³        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack did 12 damage^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:200/200        ³                    %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³                    %SPACES15%
ECHO. ³                                  ³                   ³       ÚÄÄÄ¿        %SPACES15%
ECHO. ³ MP:50/50                         ³                   ³       ³  O³         /%SPACES13%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³       ³   ´        /%SPACES14%
ECHO. ³                                  ³                   ³       ÀÂÄÂÙ       /%SPACES15%
ECHO. ³ AP:0/10                          ³                   ³      ÚÄÙ ÀÄ¿     / %SPACES15%
ECHO. ³ °°°°°°°°°°                       ³                   ³      ³     ³    /  %SPACES15%
ECHO. ³                                  ³                   ³      ³     ³ \ /   %SPACES15%
ECHO. ³ Limit Break                      ³                   ³      ³   ÄÄÄÄÄX    %SPACES15%                    
ECHO. ³ °°°°°°°°°°                       ³                   ³      ³     ³ / \   %SPACES15%                    
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%                   
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³      ÀÂÄÄÄÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³   ³        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack did 12 damage^^!
ECHO.
CALL :WAITFORONE
ECHO %FRIENDNAME%: Spiffing^^! You did 12 damage to the enemy. His Health Points (HP)
ECHO !SPACES%SPACENUM%!will now be reduced to 188. Notice that his health bar will also decrease
ECHO.
pause
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME%'s attack did 10 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME%'s attack did 10 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME%'s attack did 10 damage^^!
ECHO.
ECHO %FRIENDNAME%: Turn based combat. You both get 1 action per round. Pretty simple stuff...
ECHO.
pause
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:90/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %FRIENDNAME%: The eagle-eyed amongst you will have noticed that there has
ECHO !SPACES%SPACENUM%!been a few unexplained changes in some of those bars in the display 
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!The AP gauge is filled by damaging the enemy
ECHO !SPACES%SPACENUM%!The Limit Break gauge is filled by taking damage from the enemy
ECHO !SPACES%SPACENUM%!More on this later...
ECHO.
pause
GOTO :EOF

:ROUND2CHOICE
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:90/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %FRIENDNAME%: That seemed to go well, let's choose Attack again.
ECHO.
:CHOICE2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	GOTO :EOF
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Attack for now
	ECHO.
	GOTO :CHOICE2
)
GOTO :EOF

:ROUND2ACTION
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:90/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %FRIENDNAME%: Looks like the %ENEMYNAME% went first this time...
ECHO.
pause
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:90/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO. ³ HP:90/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:90/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛ°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
CALL :WAITFORTWO
ECHO Rabies Bite did 18 damage and poisoned you^^!
ECHO.
CALL :WAITFORTWO
ECHO The poison will last for 5 turns
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³                ³   %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³                ³   %SPACES15%
ECHO. ³                                  ³                   ³       ÚÄÄÄ¿    ³   %SPACES15%
ECHO. ³ MP:50/50                         ³                   ³       ³  O³    ³   %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³       ³   ´    ³   %SPACES15%
ECHO. ³                                  ³                   ³       ÀÂÄÂÙ    ³   %SPACES15%
ECHO. ³ AP:1/10                          ³                   ³      ÚÄÙ ÀÄ¿  ÄÅÄ  %SPACES15%
ECHO. ³ Û°°°°°°°°°                       ³                   ³      ³     ³ / ³   %SPACES15%
ECHO. ³                                  ³                   ³      ³     /   ³   %SPACES15%
ECHO. ³ Limit Break                      ³                   ³      ³   / ³       %SPACES15%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³      ³     ³       %SPACES15%                    
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%                   
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³      ÀÂÄÄÄÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³   ³        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³                    %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛÛ        ³                    %SPACES15%
ECHO. ³                                  ³                   ³       ÚÄÄÄ¿        %SPACES15%
ECHO. ³ MP:50/50                         ³                   ³       ³  O³         /%SPACES13%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³       ³   ´        /%SPACES14%
ECHO. ³                                  ³                   ³       ÀÂÄÂÙ       /%SPACES15%
ECHO. ³ AP:1/10                          ³                   ³      ÚÄÙ ÀÄ¿     / %SPACES15%
ECHO. ³ Û°°°°°°°°°                       ³                   ³      ³     ³    /  %SPACES15%
ECHO. ³                                  ³                   ³      ³     ³ \ /   %SPACES15%
ECHO. ³ Limit Break                      ³                   ³      ³   ÄÄÄÄÄX    %SPACES15%                    
ECHO. ³ Û°°°°°°°°°                       ³                   ³      ³     ³ / \   %SPACES15%                    
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%                   
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³      ÀÂÄÄÄÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³   ³        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORTWO
ECHO %FRIENDNAME%: Well...
ECHO.
CALL :WAITFORONE
ECHO !SPACES%SPACENUM%!That went badly...
ECHO.
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!Ok so what happened there is that the enemy went first and used a Skill.
ECHO !SPACES%SPACENUM%!Skills can do many things, this one did high damage and poisoned you.
ECHO.
CALL :WAITFORTHREE
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!Poison means that you'll take a small amount of damage each turn until it wears off
ECHO !SPACES%SPACENUM%!or you cure it.
ECHO.
CALL :WAITFORTHREE
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!On top of all that your attack missed. This is due to your Accuracy (ACC)
ECHO !SPACES%SPACENUM%!and the enemy's Evasion (EVA). Again there's a random element to all this but
ECHO !SPACES%SPACENUM%!having higher stats helps
ECHO.
pause
GOTO :EOF

:ROUND3CHOICE
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO %FRIENDNAME%: OK, damage control. First of all let's sort that poison out.
ECHO !SPACES%SPACENUM%!For this tutorial, you've got a spell that can sort that out, 
ECHO !SPACES%SPACENUM%!so select Magic, then Restorative, then Esuna
ECHO.
:CHOICE3
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Magic for now
	ECHO.
	GOTO :CHOICE3
)
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO %FRIENDNAME%: Select Restorative
ECHO.
:CHOICE3-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "3" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Restorative for now
	ECHO.
	GOTO :CHOICE3-2
)
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO. 1 - Cure              (!REST%CUREID%MPCOST! MP)
ECHO. 2 - Esuna             (!REST%ESUNAID%MPCOST! MP)
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Select Esuna
ECHO.
:CHOICE3-3
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Esuna for now
	ECHO.
	GOTO :CHOICE3-3
)
GOTO :EOF

:ROUND3ACTION
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:72/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛÛ°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛ°°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO Poison hurt %PLAYERNAME% by 8 HP
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³         _       %SPACES10%
ECHO. ³                                  ³                   ³ ³   ³ ³       Ä/ \Ä_   /%SPACES10%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³             \Ä/ %SPACES10%                    
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s Thunder spell missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³            Ä\   _         
ECHO. ³                                  ³                   ³ ³   ³ ³       _   /  ÄÄ/ \_   /Ä  
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³        \_/         \Ä/  \_     ÚÄÄÄÄÄÄÄÄÄÄÄ¿ 
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s Thunder spell missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿          _    _           
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³         / \ÄÄ/ \          
ECHO. ³                                  ³                   ³ ³   ³ ³       Ä/        \Ä/\   /ÄÄ
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³                     \Ä/        ÚÄÄÄÄÄÄÄÄÄÄÄ¿ 
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s Thunder spell missed^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³    ³          
ECHO. ³                                  ³                   ³  ÚÄ³Ä¿        
ECHO. ³ MP:50/50                         ³                   ³  ³ ³O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³ ³ ´        
ECHO. ³                                  ³                   ³  ÀÂ³ÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ³ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³  ³  ³       
ECHO. ³                                  ³                   ³ ³  ³  ³           
ECHO. ³ Limit Break                      ³                   ³ ³     ³       %SPACES20%                    
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³     ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³   \³/         
ECHO. ³                                  ³                   ³  -   -        
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³   /³\         
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³               
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ \  ³  /       
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³ -     -       
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³ /  ³  \                      
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100   Poison               ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³          
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:50/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
ECHO %PLAYERNAME% is no longer poisoned^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³          
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO %FRIENDNAME%: Well that went much better. The enemy missed with their spell
ECHO !SPACES%SPACENUM%!and you cured your poison^^!
ECHO.
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!You'll notice the poison hurt you at the start of the round.
ECHO !SPACES%SPACENUM%!If you didn't cure it then it would do that every round until it wears off.
ECHO.
pause
GOTO :EOF

:ROUND4CHOICE
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³          
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO %FRIENDNAME%: Right let's get back on the offensive
ECHO !SPACES%SPACENUM%!Select Magic, then Offensive, then Fira
ECHO.
:CHOICE4
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Magic for now
	ECHO.
	GOTO :CHOICE4
)
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³          
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO. 1 - Offensive
ECHO. 2 - Status
ECHO. 3 - Restorative
ECHO. 4 - Support
ECHO. 5 - Custom
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Right let's get back on the offensive
ECHO !SPACES%SPACENUM%!Select Magic, then Offensive, then Fira
ECHO.
:CHOICE4-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Offensive for now
	ECHO.
	GOTO :CHOICE4-2
)
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³          
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO. 1 - Fire              (!OFF%FIREID%MPCOST! MP)
ECHO. 2 - Fira              (!OFF%FIRAID%MPCOST! MP)
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Select Fira
ECHO.
:CHOICE4-3
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Fira for now
	ECHO.
	GOTO :CHOICE4-3
)
GOTO :EOF


:ROUND4ACTION
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³          
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       
ECHO. ³                                  ³                   ³ ³   ³ ³       
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
ECHO %PLAYERNAME% acted first^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       °±±²²   %SPACES12%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       °±±²²ÛÛ %SPACES12%
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
ECHO %PLAYERNAME% successfully cast Fira for !OFF%FIRAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES6%°±±²²   %SPACES6%
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES6%°±±²²ÛÛ %SPACES6%
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
ECHO %PLAYERNAME% successfully cast Fira for !OFF%FIRAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:188/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛÛÛÛ°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        
ECHO. ³ MP:25/50                         ³                   ³  ³  O³        
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³  ³   ´        
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        
ECHO. ³ AP:1/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES12%°±±²²   
ECHO. ³ Û°°°°°°°°°                       ³                   ³ ³     ³       %SPACES12%°±±²²ÛÛ 
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
ECHO %PLAYERNAME% successfully cast Fira for !OFF%FIRAID%MPCOST! MP
ECHO.
CALL :WAITFORONE
ECHO It's super effective^^!
ECHO.
CALL :WAITFORTWO
ECHO The Fira spell did 68 damage^^!
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% attacks
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 14 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:64/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛÛ°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME%'s attack did 14 damage^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 4
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %FRIENDNAME%: Wow, we did lots of damage there didn't we^^!
ECHO.
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!Did you see it say "It's super effective"?
ECHO !SPACES%SPACENUM%!The reason we did so much damage with that Fira spell is
ECHO !SPACES%SPACENUM%!because this enemy is weak against the Fire element.
ECHO.
CALL :WAITFORSIX
ECHO !SPACES%SPACENUM%!If you've played Pokemon you'll know all about this.
ECHO !SPACES%SPACENUM%!If you haven't played Pokemon, it doubles the damage.
ECHO !SPACES%SPACENUM%!Damage can also be halved, nullified or absorbed,
ECHO !SPACES%SPACENUM%!depending on elemental properties of the enemies (or you).
ECHO.
CALL :WAITFORSIX
GOTO :EOF

:ROUND5CHOICE
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %FRIENDNAME%: Looks like we've got quite a bit of AP now,
ECHO !SPACES%SPACENUM%!AP is used to perform Skills,
ECHO !SPACES%SPACENUM%!Let's try the Critical Strike skill now.
ECHO.
:CHOICE5
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "3" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Skill for now
	ECHO.
	GOTO :CHOICE5
)
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO. 1 - Critical Strike              (4 AP)
ECHO. 2 - Steal                        (4 AP)
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Looks like we've got quite a bit of AP now,
ECHO !SPACES%SPACENUM%!AP is used to perform Skills,
ECHO !SPACES%SPACENUM%!Let's try the Critical Strike skill now.
ECHO.
:CHOICE5-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	ECHO.
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Critical Strike for now
	ECHO.
	GOTO :CHOICE5-2
)
GOTO :EOF

:ROUND5ACTION
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% used Meditate
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ 
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³ %SPACES34%  \³/        
ECHO. ³                                  ³                   ³ %SPACES34% -   -       
ECHO. ³ HP:50/100                        ³ HP:120/200        ³ %SPACES34%  /³\  
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% used Meditate
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ %SPACES34%\  ³  /       
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³ %SPACES34%-     -       
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³ %SPACES34%/  ³  \  
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% used Meditate
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
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
ECHO %ENEMYNAME% used Meditate
ECHO.
CALL :WAITFORONE
ECHO %ENEMYNAME%'s attack power has increased^^!
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³                ³   %SPACES15%
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³                ³   %SPACES15%
ECHO. ³                                  ³                   ³       ÚÄÄÄ¿    ³   %SPACES15%
ECHO. ³ MP:15/50                         ³ Meditate          ³       ³  O³    ³   %SPACES15%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³       ³   ´    ³   %SPACES15%
ECHO. ³                                  ³                   ³       ÀÂÄÂÙ    ³   %SPACES15%
ECHO. ³ AP:8/10                          ³                   ³      ÚÄÙ ÀÄ¿  ÄÅÄ  %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³      ³     ³ / ³   %SPACES15%
ECHO. ³                                  ³                   ³      ³     /   ³   %SPACES15%
ECHO. ³ Limit Break                      ³                   ³      ³   / ³       %SPACES15%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³      ³     ³       %SPACES15%                    
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%                   
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³      ÀÂÄÄÄÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³   ³        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³                    %SPACES15%
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³                    %SPACES15%
ECHO. ³                                  ³                   ³       ÚÄÄÄ¿        %SPACES15%
ECHO. ³ MP:15/50                         ³ Meditate          ³       ³  O³         /%SPACES13%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³       ³   ´        /%SPACES14%
ECHO. ³                                  ³                   ³       ÀÂÄÂÙ       /%SPACES15%
ECHO. ³ AP:8/10                          ³                   ³      ÚÄÙ ÀÄ¿     / %SPACES15%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³      ³     ³    /  %SPACES15%
ECHO. ³                                  ³                   ³      ³     ³ \ /   %SPACES15%
ECHO. ³ Limit Break                      ³                   ³      ³   ÄÄÄÄÄX    %SPACES15%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³      ³     ³ / \   %SPACES15%                    
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%                   
ECHO. ³                                  ³                   ³      ³     ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³      ÀÂÄÄÄÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³       ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ       ³   ³        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:120/200        ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛÛÛ°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
ECHO Critical Hit^^!
ECHO.
CALL :WAITFORTWO
ECHO The Critical Strike did 39 damage^^!
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 5
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:8/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %FRIENDNAME%: So %ENEMYNAME% meditated, we'll need to watch out for his
ECHO !SPACES%SPACENUM%!next attack, it'll be more powerful than before
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!The skill that we used increases the chance that we'll land
ECHO !SPACES%SPACENUM%!a Critical Hit. It worked perfectly^^!
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!Critical Hits do more damage than standard ones. They can occur
ECHO !SPACES%SPACENUM%!whilst attacking, casting offensive spells and with certain skills.
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!The chance that you'll land a Critical Hit is based on your Luck (LCK)
ECHO !SPACES%SPACENUM%!stat. There are other ways to increase the chances but you'll find them out
ECHO !SPACES%SPACENUM%!by playing.
ECHO.
pause
GOTO :EOF

:ROUND6CHOICE
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO %FRIENDNAME%: I'm a bit worried about %ENEMYNAME% meditating...
ECHO !SPACES%SPACENUM%!Let's use an item to reduce his accuracy and
ECHO !SPACES%SPACENUM%!cross our fingers for him missing^^!
ECHO.
:CHOICE6
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "4" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Item for now
	ECHO.
	GOTO :CHOICE6
)
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO.
ECHO What would you like to do?
ECHO.
ECHO. 1 - Potion                   (2 Remaining)
ECHO. 2 - Hi-Potion                (1 Remaining)
ECHO. 3 - Blind Scroll             (1 Remaining)
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Let's choose Blind Scroll for now
ECHO.
:CHOICE6-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "3" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Blind Scroll for now
	ECHO.
	GOTO :CHOICE6-2
)
GOTO :EOF

:ROUND6ACTION
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 32 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:50/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Meditate          ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛ°°°°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 32 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³%SPACES15%ÚÄ¿%SPACES17%
ECHO. ³ HP:18/100                        ³ HP:81/200         ³%SPACES15%³³%SPACES17%
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³%SPACES15%ÀÄÙ%SPACES17%
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´      / %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ    /   %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿ /     %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     /       %SPACES20%
ECHO. ³                                  ³                   ³ ³   / ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³     ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Blind Scroll
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿%SPACES15%%SPACES9%ÚÄ¿%SPACES8%
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³%SPACES15%%SPACES9%³³%SPACES8%
ECHO. ³                                  ³                   ³%SPACES15%%SPACES9%ÀÄÙ%SPACES8%
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Blind Scroll
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³%SPACES15%%SPACES17%ÚÄ¿
ECHO. ³ HP:18/100                        ³ HP:81/200         ³%SPACES15%%SPACES17%³³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³%SPACES15%%SPACES17%ÀÄÙ
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Blind Scroll
ECHO.
CALL :WAITFORONE
ECHO %ENEMYNAME% will be blind for 3 turns
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 6
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
IF %EXPLICIT% EQU 1 (
	ECHO %FRIENDNAME%: Bollocks^^! I was hoping that would work.
) ELSE (
	ECHO %FRIENDNAME%: Damn^^! I was hoping that would work.
)
ECHO. 
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!Unfortunately he went first so our Blind Scroll hadn't been used 
ECHO !SPACES%SPACENUM%!until after his attack
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!This is why SPD is important folks^^!
ECHO.
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!No matter, he's blind now so hopefully he'll miss next time.
ECHO !SPACES%SPACENUM%!Our HP is looking a little low so let's fix that.
ECHO.
pause
GOTO :EOF

:ROUND7CHOICE
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO %FRIENDNAME%: You need to heal. Let's choose Item and then Hi-Potion
ECHO.
:CHOICE7
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "4" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Item for now
	ECHO.
	GOTO :CHOICE7
)
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO. 1 - Potion                (2 Remaining)
ECHO. 2 - Hi-Potion             (1 Remaining)
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Let's choose Hi-Potion.
ECHO !SPACES%SPACENUM%!Notice that Blind Scroll has been removed from the list.
ECHO !SPACES%SPACENUM%!That's because we've ran out of them.
ECHO.
:CHOICE7-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Hi-Potion for now
	ECHO.
	GOTO :CHOICE7-2
)
GOTO :EOF

:ROUND7ACTION
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack missed^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack missed^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³   ÚÄ¿ 
ECHO. ³                                  ³                   ³   ³³
ECHO. ³ HP:18/100                        ³ HP:81/200         ³   ÀÄÙ 
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³    ³
ECHO. ³                                  ³                   ³  ÚÄ³Ä¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³ ³O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³ ³ ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂ³ÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ³ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³  ³  ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³     ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³     ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³   \³/      
ECHO. ³                                  ³                   ³  -  -   
ECHO. ³ HP:18/100                        ³ HP:81/200         ³   /³\  
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ \  ³  /
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³ -    -
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³ /  ³  \
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³    
ECHO. ³                                  ³                   ³   
ECHO. ³ HP:18/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛ°°°°°°°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
ECHO %PLAYERNAME%'s HP has been restored by 150^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 7
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %FRIENDNAME%: Wehey^^! Back to full HP^^!
ECHO.
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!He missed too, what did I tell you^^!
ECHO.
CALL :WAITFORTWO
ECHO !SPACES%SPACENUM%!You may have noticed that the Hi-Potion healed you by 150 but your
ECHO !SPACES%SPACENUM%!HP is only at 100. This is because your Maximum HP is 100.
ECHO !SPACES%SPACENUM%!If you need it explaining any further then I can't help you because you're an idiot.
ECHO.
CALL :WAITFORTHREE
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!Now that we've got him on the back foot, let's Steal from him
ECHO.
pause
GOTO :EOF

:ROUND8CHOICE
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO %FRIENDNAME%: Choose Skill and then Steal
ECHO.
:CHOICE8
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "3" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Skill for now
	ECHO.
	GOTO :CHOICE8
)
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO.
ECHO What would you like to do?
ECHO.
ECHO. 1 - Critical Strike        (4 AP)
ECHO. 2 - Steal                  (4 AP)
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Choose Steal
ECHO.
:CHOICE8-2
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "2" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Steal for now
	ECHO.
	GOTO :CHOICE8-2
)
GOTO :EOF

:ROUND8ACTION
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES7%  ÚÄÄÄ¿        %SPACES13%
ECHO. ³ MP:15/50                         ³ Blind             ³%SPACES7%  ³  O³        %SPACES13%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES7%  ³   ´        %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7%  ÀÂÄÂÙ        %SPACES13%
ECHO. ³ AP:4/10                          ³                   ³%SPACES7% ÚÄÙ ÀÄ¿       %SPACES13%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³%SPACES7% ³     ³       %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%
ECHO. ³ Limit Break                      ³                   ³%SPACES7% ³   ³ ³       %SPACES13%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³%SPACES7% ³   ³ ³       %SPACES13%                    
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%                   
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES7% ÀÂÄÄ³ÂÙ       %SPACES13%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES7%  ³   ³        %SPACES13%                   
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES15%  ÚÄÄÄ¿ %SPACES12%
ECHO. ³ MP:15/50                         ³ Blind             ³%SPACES15%  ³  O³ %SPACES12%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES15%  ³   ´ %SPACES12%
ECHO. ³                                  ³                   ³%SPACES15%  ÀÂÄÂÙ %SPACES12%
ECHO. ³ AP:4/10                          ³                   ³%SPACES15% ÚÄÙ ÀÄ¿%SPACES12%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³%SPACES15% ³     ³%SPACES12%
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%
ECHO. ³ Limit Break                      ³                   ³%SPACES15% ³   ³ ³%SPACES12%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³%SPACES15% ³   ³ ³%SPACES12%                    
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%                   
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES15% ÀÂÄÄ³ÂÙ%SPACES12%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES15%  ³   ³ %SPACES12%                   
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES20%  ÚÄÄÄ¿        
ECHO. ³ MP:15/50                         ³ Blind             ³%SPACES20%  ³  O³        
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES20%  ³   ´        
ECHO. ³                                  ³                   ³%SPACES20%  ÀÂÄÂÙ        
ECHO. ³ AP:4/10                          ³                   ³%SPACES20% ÚÄÙ ÀÄ¿       
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³%SPACES20% ³     ³       
ECHO. ³                                  ³                   ³%SPACES20% ³   ÄÄÄÄÄÄÄÄ  
ECHO. ³ Limit Break                      ³                   ³%SPACES20% ³     ³        
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³        
ECHO. ³                                  ³                   ³%SPACES20% ³     ³        %STATICSMALLDOGENEMY1-16%
ECHO. ³                                  ³                   ³%SPACES20% ÀÂÄÄÄÂÙ        %STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³         %STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³         %STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³         %STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES20%  ³   ³                         
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:4/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ ÛÛÛÛ°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
ECHO %PLAYERNAME% successfully stole Sprint Shoes
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES15%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES15%                    
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
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:100/100                       ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
CALL :WAITFORZERO
ECHO Rabies Bite did 20 damage
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 8
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %FRIENDNAME%: Wow you stole Sprint Shoes^^! This can be equipped through the menu
ECHO !SPACES%SPACENUM%!after a battle. You'll find all sorts of Weapons, Armour and
ECHO !SPACES%SPACENUM%!Accessories as you play through the game. All with different
ECHO !SPACES%SPACENUM%!stat boosts and little extras^^!
ECHO.
CALL :WAITFORSIX
ECHO !SPACES%SPACENUM%!You'll notice that %ENEMYNAME% hit you even though he's Blind
ECHO !SPACES%SPACENUM%!and that you weren't poisoned by Rabies Bite this time.
ECHO !SPACES%SPACENUM%!Almost everything in this game has a "random" chance, influenced by stats.
ECHO.
pause
GOTO :EOF

:ROUND9CHOICE
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³   ³ ³       %SPACES20%                    
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
ECHO. 9 - Limit Break
ECHO. 0 - Exit Tutorial
ECHO.
ECHO %FRIENDNAME%: Ooooo new option^^!
ECHO !SPACES%SPACENUM%!Your Limit Break gauge is full so you can unleash a powerful attack
ECHO !SPACES%SPACENUM%!Let's do that^^!
ECHO.
:CHOICE9
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "9" (
	ECHO.
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	ECHO %FRIENDNAME%: Let's choose Limit Break for now
	ECHO.
	GOTO :CHOICE9
)
GOTO :EOF

:ROUND9ACTION
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO Because of the skills used in this battle, your limit break will take the form of:
ECHO Non-elemental Damage
ECHO Super Steal
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%     
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       °±±²²   %SPACES12%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       °±±²²ÛÛ %SPACES12%
ECHO. ³                                  ³                   ³ ³   ÄÄÄÄÄÄÄÄ  °±±²²ÛÛÛ%SPACES12%
ECHO. ³ Limit Break                      ³                   ³ ³     ³ÄÄÄÄÄÄ °±±²²ÛÛÛ%SPACES12%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³     ³       °±±²²ÛÛ %SPACES12%                    
ECHO. ³                                  ³                   ³ ³     ³       °±±²²   %SPACES12%                   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                    
ECHO.
ECHO Non-elemental Damage did 91 damage to Yorkshire Terrier
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%       
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES6%°±±²²   %SPACES6%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES6%°±±²²ÛÛ %SPACES6%
ECHO. ³                                  ³                   ³ ³   ÄÄÄÄÄÄÄÄ  %SPACES6%°±±²²ÛÛÛ%SPACES6%
ECHO. ³ Limit Break                      ³                   ³ ³     ³ÄÄÄÄÄÄ %SPACES6%°±±²²ÛÛÛ%SPACES6%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³     ³       %SPACES6%°±±²²ÛÛ %SPACES6%                    
ECHO. ³                                  ³                   ³ ³     ³       %SPACES6%°±±²²   %SPACES6%                   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                    
ECHO.
ECHO Non-elemental Damage did 91 damage to Yorkshire Terrier
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%    
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES12%°±±²²   
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES12%°±±²²ÛÛ 
ECHO. ³                                  ³                   ³ ³   ÄÄÄÄÄÄÄÄ  %SPACES12%°±±²²ÛÛÛ
ECHO. ³ Limit Break                      ³                   ³ ³     ³ÄÄÄÄÄÄ %SPACES12%°±±²²ÛÛÛ                  
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³     ³       %SPACES12%°±±²²ÛÛ                   
ECHO. ³                                  ³                   ³ ³     ³       %SPACES12%°±±²²                     
ECHO. ³                                  ³                   ³ ³     ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄÄÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                    
ECHO.
ECHO Non-elemental Damage did 91 damage to Yorkshire Terrier
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES7%  ÚÄÄÄ¿        %SPACES13%
ECHO. ³ MP:15/50                         ³ Blind             ³%SPACES7%  ³  O³        %SPACES13%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES7%  ³   ´        %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7%  ÀÂÄÂÙ        %SPACES13%
ECHO. ³ AP:0/10                          ³                   ³%SPACES7% ÚÄÙ ÀÄ¿       %SPACES13%
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES7% ³     ³       %SPACES13%
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%
ECHO. ³ Limit Break                      ³                   ³%SPACES7% ³   ³ ³       %SPACES13%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³%SPACES7% ³   ³ ³       %SPACES13%                    
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%                   
ECHO. ³                                  ³                   ³%SPACES7% ³   ³ ³       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES7% ÀÂÄÄ³ÂÙ       %SPACES13%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES7%  ³   ³        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES7%  ³   ³        %SPACES13%                   
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES15%  ÚÄÄÄ¿ %SPACES12%
ECHO. ³ MP:15/50                         ³ Blind             ³%SPACES15%  ³  O³ %SPACES12%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES15%  ³   ´ %SPACES12%
ECHO. ³                                  ³                   ³%SPACES15%  ÀÂÄÂÙ %SPACES12%
ECHO. ³ AP:0/10                          ³                   ³%SPACES15% ÚÄÙ ÀÄ¿%SPACES12%
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES15% ³     ³%SPACES12%
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%
ECHO. ³ Limit Break                      ³                   ³%SPACES15% ³   ³ ³%SPACES12%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³%SPACES15% ³   ³ ³%SPACES12%                    
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%                   
ECHO. ³                                  ³                   ³%SPACES15% ³   ³ ³%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³%SPACES15% ÀÂÄÄ³ÂÙ%SPACES12%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES15%  ³   ³ %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES15%  ³   ³ %SPACES12%                   
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³%SPACES20%  ÚÄÄÄ¿        
ECHO. ³ MP:15/50                         ³ Blind             ³%SPACES20%  ³  O³        
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³%SPACES20%  ³   ´        
ECHO. ³                                  ³                   ³%SPACES20%  ÀÂÄÂÙ        
ECHO. ³ AP:0/10                          ³                   ³%SPACES20% ÚÄÙ ÀÄ¿       
ECHO. ³ °°°°°°°°°°                       ³                   ³%SPACES20% ³     ³       
ECHO. ³                                  ³                   ³%SPACES20% ³   ÄÄÄÄÄÄÄÄ  
ECHO. ³ Limit Break                      ³                   ³%SPACES20% ³     ³         
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³         
ECHO. ³                                  ³                   ³%SPACES20% ³     ³        %STATICSMALLDOGENEMY1-16%
ECHO. ³                                  ³                   ³%SPACES20% ÀÂÄÄÄÂÙ        %STATICSMALLDOGENEMY1-17%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³         %STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³         %STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³%SPACES20%  ³   ³         %STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ%SPACES20%  ³   ³                           
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:81/200         ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ ÛÛÛÛ°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³ Blind             ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
ECHO. ³                                  ³                   ³  ÀÂÄÂÙ        %SPACES20%
ECHO. ³ AP:0/10                          ³                   ³ ÚÄÙ ÀÄ¿       %SPACES20%
ECHO. ³ °°°°°°°°°°                       ³                   ³ ³     ³       %SPACES20%
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%
ECHO. ³ Limit Break                      ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ                       ³                   ³ ³   ³ ³       %SPACES20%                    
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%                   
ECHO. ³                                  ³                   ³ ³   ³ ³       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. ³                                  ³                   ³ ÀÂÄÄ³ÂÙ       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. ³                                  ³                   ³  ³   ³        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  ³   ³        %SPACES20%                   
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 9
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³
ECHO. ³                                  ³                   ³
ECHO. ³ HP:80/100                        ³ HP:0/200          ³
ECHO. ³ ÛÛÛÛÛÛÛÛ°°                       ³ °°°°°°°°°°        ³
ECHO. ³                                  ³                   ³  ÚÄÄÄ¿        %SPACES20%
ECHO. ³ MP:15/50                         ³                   ³  ³  O³        %SPACES20%
ECHO. ³ ÛÛÛ°°°°°°°                       ³                   ³  ³   ´        %SPACES20%
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
ECHO %FRIENDNAME%: That limit break was cool wasn't it^^!
ECHO !SPACES%SPACENUM%!The type of limit break that you do depends on what skills you've
ECHO !SPACES%SPACENUM%!used in the current battle.
ECHO.
CALL :WAITFORSIX
ECHO !SPACES%SPACENUM%!In this case you'd used one non-elemental damage skill and stolen once.
ECHO !SPACES%SPACENUM%!This means that you limit break did damage and stole from the enemy.
ECHO !SPACES%SPACENUM%!The steal was successful even though the damage killed him too^^!
ECHO !SPACES%SPACENUM%!Experiment with different skills to see what kind of awesome limit breaks you can do.
ECHO.
CALL :WAITFORSIX
ECHO !SPACES%SPACENUM%!Now let's take a look at your rewards
ECHO.
pause
GOTO :EOF

:REWARDS
CLS
ECHO.
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³                                                      ³
ECHO. ³ Level 1                                              ³
ECHO. ³ Exp:0/200                                  (+412)    ³
ECHO. ³ °°°°°°°°°°                                           ³
ECHO. ³                                                      ³
ECHO. ³ Gil:0                                      (+100)    ³
ECHO. ³                                                      ³
ECHO. ³ Items:                                               ³
ECHO. ³ 0 Ether                                    (+1)      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³ Equipment:                                           ³
ECHO. ³ 0 Morph Suit                               (+1)      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO. 
ECHO %FRIENDNAME%: Cool, you got some Experience (EXP), some Money (Gil)
ECHO !SPACES%SPACENUM%!an Ether... Sorry, I know you can read because you're reading this
ECHO !SPACES%SPACENUM%!read up there to see what you got.
ECHO.
CALL :WAITFORTHREE
CALL :WAITFORTHREE
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!The Morph Suit is armour and the Sprint Shoes you stole is an accessory.
ECHO !SPACES%SPACENUM%!You can equip them through the menu like uncle %UNCLENAME% showed you earlier
ECHO.
pause
CLS
ECHO.
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³                                                      ³
ECHO. ³ Level 3                                    (+2)      ³
ECHO. ³ Exp:12/200                                           ³
ECHO. ³ Û°°°°°°°°°                                           ³
ECHO. ³                                                      ³
ECHO. ³ Gil:100                                              ³
ECHO. ³                                                      ³
ECHO. ³ Items:                                               ³
ECHO. ³ 1 Ether                                              ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³ Equipment:                                           ³
ECHO. ³ 1 Morph Suit                                         ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ³                                                      ³
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
ECHO.
ECHO %FRIENDNAME%: You got two level ups for that^^!
ECHO !SPACES%SPACENUM%!When you level up you'll be able to increase your stats
ECHO !SPACES%SPACENUM%!and unlock new spells. We'll get to that in a second though
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!And levelling up won't always be that easy^^! You're
ECHO !SPACES%SPACENUM%!lucky this is just a tutorial and I need to show you
ECHO !SPACES%SPACENUM%!how to unlock new spells^^!
ECHO.
pause
GOTO :EOF

:PREVIEW
CLS
ECHO.
ECHO. Round 1
ECHO. ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO. ³ %PLAYERNAMEVAR% ³ %ENEMYNAMEVAR% ³                                                   ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ³ HP:1000/1000 Blind     Auto-Life ³ HP:1000/1000      ³ Weakness  Resist    E.Immune  Absorb    S.Immune  ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ   Silence   Half MP   ³ ÛÛÛÛÛÛÛÛÛÛ        ³                                                   ³
ECHO. ³              Poison    Zero MP   ³                   ³ Fire      Fire      Fire      Fire      Blind     ³
ECHO. ³ MP:1000/1000 Slow      Half AP   ³ Blind             ³ Ice       Ice       Ice       Ice       Silence   ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ   Sleep     Zero AP   ³ Silence           ³ Electric  Electric  Electric  Electric  Poison    ³
ECHO. ³              Confusion Meditate  ³ Poison            ³ Water     Water     Water     Water     Slow      ³
ECHO. ³ AP:1000/1000 Stop      Focus     ³ Slow              ³ Earth     Earth     Earth     Earth     Sleep     ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ   Haste     Aim       ³ Sleep             ³ Demi      Demi      Demi      Demi      Confusion ³
ECHO. ³              Regen     Hide      ³ Confusion         ³ Forbidden Forbidden Forbidden Forbidden Stop      ³
ECHO. ³ Limit Break  Protect   Inc Crit  ³ Stop              ³                                                   ³
ECHO. ³ ÛÛÛÛÛÛÛÛÛÛ   Shell     Break Lim ³ Haste             ³                                                   ³
ECHO. ³              Reflect   AP Gain   ³ Regen             ³ Exp:1000                 Gil:1000                 ³
ECHO. ³                                  ³ Protect           ³                                                   ³
ECHO. ³                                  ³ Shell             ³ Yorkshire Terriers are small canine creatures     ³
ECHO. ³                                  ³ Reflect           ³ Don't set it on fire, I have a little one and     ³
ECHO. ³                                  ³                   ³ they most certainly don't like that^^!              ³
ECHO. ³                                  ³                   ³                                                   ³
ECHO. ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ 
ECHO.
ECHO %FRIENDNAME%: Look^^! Here's a list of pretty much every status and special
ECHO !SPACES%SPACENUM%!There are a few that don't appear in-battle too though.
ECHO.
CALL :WAITFORTHREE
ECHO !SPACES%SPACENUM%!That's it^^! Now let's deal with your level up
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

:WAITFORSIX
TIMEOUT /T 6 > nul
GOTO :EOF

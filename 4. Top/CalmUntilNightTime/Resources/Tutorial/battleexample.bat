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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:200/200        �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:200/200        �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:200/200        �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME%'s attack did 12 damage^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:200/200        �                �   %SPACES15%
ECHO. � ����������                       � ����������        �                �   %SPACES15%
ECHO. �                                  �                   �       ���Ŀ    �   %SPACES15%
ECHO. � MP:50/50                         �                   �       �  O�    �   %SPACES15%
ECHO. � ����������                       �                   �       �   �    �   %SPACES15%
ECHO. �                                  �                   �       �����    �   %SPACES15%
ECHO. � AP:0/10                          �                   �      ��� �Ŀ  ���  %SPACES15%
ECHO. � ����������                       �                   �      �     � / �   %SPACES15%
ECHO. �                                  �                   �      �     /   �   %SPACES15%
ECHO. � Limit Break                      �                   �      �   / �       %SPACES15%                    
ECHO. � ����������                       �                   �      �     �       %SPACES15%                    
ECHO. �                                  �                   �      �     �       %SPACES15%                   
ECHO. �                                  �                   �      �     �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �      �������       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������       �   �        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack did 12 damage^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:200/200        �                    %SPACES15%
ECHO. � ����������                       � ����������        �                    %SPACES15%
ECHO. �                                  �                   �       ���Ŀ        %SPACES15%
ECHO. � MP:50/50                         �                   �       �  O�         /%SPACES13%
ECHO. � ����������                       �                   �       �   �        /%SPACES14%
ECHO. �                                  �                   �       �����       /%SPACES15%
ECHO. � AP:0/10                          �                   �      ��� �Ŀ     / %SPACES15%
ECHO. � ����������                       �                   �      �     �    /  %SPACES15%
ECHO. �                                  �                   �      �     � \ /   %SPACES15%
ECHO. � Limit Break                      �                   �      �   �����X    %SPACES15%                    
ECHO. � ����������                       �                   �      �     � / \   %SPACES15%                    
ECHO. �                                  �                   �      �     �       %SPACES15%                   
ECHO. �                                  �                   �      �     �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �      �������       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������       �   �        %SPACES15%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:188/200        �
ECHO. � ����������                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 10 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:188/200        �
ECHO. � ����������                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%                    
ECHO. � ����������                       �                   � �   � �       %SPACES15%                    
ECHO. �                                  �                   � �   � �       %SPACES15%                   
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 10 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:188/200        �
ECHO. � ����������                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 10 damage^^!
ECHO.
ECHO %FRIENDNAME%: Turn based combat. You both get 1 action per round. Pretty simple stuff...
ECHO.
pause
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:90/100                        � HP:188/200        �
ECHO. � ��������۰                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:90/100                        � HP:188/200        �
ECHO. � ��������۰                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:90/100                        � HP:188/200        �
ECHO. � ��������۰                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:90/100                        � HP:188/200        �
ECHO. � ��������۰                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:90/100                        � HP:188/200        �
ECHO. � ��������۰                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES15%                    
ECHO. �                                  �                   � �   � �       %SPACES15%                   
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:90/100                        � HP:188/200        �
ECHO. � ��������۰                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ۰��������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �
ECHO. � ������۰��                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �۰�������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �                �   %SPACES15%
ECHO. � ������۰��                       � ����������        �                �   %SPACES15%
ECHO. �                                  �                   �       ���Ŀ    �   %SPACES15%
ECHO. � MP:50/50                         �                   �       �  O�    �   %SPACES15%
ECHO. � ����������                       �                   �       �   �    �   %SPACES15%
ECHO. �                                  �                   �       �����    �   %SPACES15%
ECHO. � AP:1/10                          �                   �      ��� �Ŀ  ���  %SPACES15%
ECHO. � ۰��������                       �                   �      �     � / �   %SPACES15%
ECHO. �                                  �                   �      �     /   �   %SPACES15%
ECHO. � Limit Break                      �                   �      �   / �       %SPACES15%                    
ECHO. � �۰�������                       �                   �      �     �       %SPACES15%                    
ECHO. �                                  �                   �      �     �       %SPACES15%                   
ECHO. �                                  �                   �      �     �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �      �������       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������       �   �        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �                    %SPACES15%
ECHO. � ������۰��                       � ����������        �                    %SPACES15%
ECHO. �                                  �                   �       ���Ŀ        %SPACES15%
ECHO. � MP:50/50                         �                   �       �  O�         /%SPACES13%
ECHO. � ����������                       �                   �       �   �        /%SPACES14%
ECHO. �                                  �                   �       �����       /%SPACES15%
ECHO. � AP:1/10                          �                   �      ��� �Ŀ     / %SPACES15%
ECHO. � ۰��������                       �                   �      �     �    /  %SPACES15%
ECHO. �                                  �                   �      �     � \ /   %SPACES15%
ECHO. � Limit Break                      �                   �      �   �����X    %SPACES15%                    
ECHO. � ۰��������                       �                   �      �     � / \   %SPACES15%                    
ECHO. �                                  �                   �      �     �       %SPACES15%                   
ECHO. �                                  �                   �      �     �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �      �������       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������       �   �        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME%'s attack missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �
ECHO. � ������۰��                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �۰�������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �
ECHO. � ������۰��                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �۰�������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �
ECHO. � ������۰��                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �۰�������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �
ECHO. � ������۰��                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �۰�������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:72/100   Poison               � HP:188/200        �
ECHO. � ������۰��                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �۰�������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO Poison hurt %PLAYERNAME% by 8 HP
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �         _       %SPACES10%
ECHO. �                                  �                   � �   � �       �/ \�_   /%SPACES10%
ECHO. � Limit Break                      �                   � �   � �             \�/ %SPACES10%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s Thunder spell missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ۰��������                       �                   � �     �            �\   _         
ECHO. �                                  �                   � �   � �       _   /  ��/ \_   /�  
ECHO. � Limit Break                      �                   � �   � �        \_/         \�/  \_     �����������Ŀ 
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s Thunder spell missed^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:1/10                          �                   � ��� �Ŀ          _    _           
ECHO. � ۰��������                       �                   � �     �         / \��/ \          
ECHO. �                                  �                   � �   � �       �/        \�/\   /��
ECHO. � Limit Break                      �                   � �   � �                     \�/        �����������Ŀ 
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s Thunder spell missed^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �    �          
ECHO. �                                  �                   �  �ĳĿ        
ECHO. � MP:50/50                         �                   �  � �O�        
ECHO. � ����������                       �                   �  � � �        
ECHO. �                                  �                   �  �³��        
ECHO. � AP:1/10                          �                   � ��ٳ�Ŀ       
ECHO. � ۰��������                       �                   � �  �  �       
ECHO. �                                  �                   � �  �  �           
ECHO. � Limit Break                      �                   � �     �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �     �       %SPACES20%                    
ECHO. �                                  �                   � �     �       %SPACES20%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �   \�/         
ECHO. �                                  �                   �  -   -        
ECHO. � HP:64/100   Poison               � HP:188/200        �   /�\         
ECHO. � �����۰���                       � ��������۰        �               
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � ����������                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ \  �  /       
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   � -     -       
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        � /  �  \                      
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � ����������                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100   Poison               � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �          
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � ����������                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% cast Esuna for !REST%ESUNAID%MPCOST! MP
ECHO.
ECHO %PLAYERNAME% is no longer poisoned^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �          
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �          
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �          
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �          
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �          
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       
ECHO. � ۰��������                       �                   � �     �       
ECHO. �                                  �                   � �   � �       
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% acted first^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 4
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       �����   %SPACES12%
ECHO. � ۰��������                       �                   � �     �       ������� %SPACES12%
ECHO. �                                  �                   � �   ��������  ��������%SPACES12%
ECHO. � Limit Break                      �                   � �     ������� ��������%SPACES12%                    
ECHO. � ��۰������                       �                   � �     �       ������� %SPACES12%                    
ECHO. �                                  �                   � �     �       �����   %SPACES12%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fira for !OFF%FIRAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 4
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES6%�����   %SPACES6%
ECHO. � ۰��������                       �                   � �     �       %SPACES6%������� %SPACES6%
ECHO. �                                  �                   � �   ��������  %SPACES6%��������%SPACES6%
ECHO. � Limit Break                      �                   � �     ������� %SPACES6%��������%SPACES6%                    
ECHO. � ��۰������                       �                   � �     �       %SPACES6%������� %SPACES6%                    
ECHO. �                                  �                   � �     �       %SPACES6%�����   %SPACES6%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fira for !OFF%FIRAID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 4
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:188/200        �
ECHO. � �����۰���                       � ��������۰        �
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:25/50                         �                   �  �  O�        
ECHO. � ����۰����                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:1/10                          �                   � ��� �Ŀ       %SPACES12%�����   
ECHO. � ۰��������                       �                   � �     �       %SPACES12%������� 
ECHO. �                                  �                   � �   ��������  %SPACES12%��������
ECHO. � Limit Break                      �                   � �     ������� %SPACES12%��������  
ECHO. � ��۰������                       �                   � �     �       %SPACES12%�������  
ECHO. �                                  �                   � �     �       %SPACES12%�����    
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                    
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:120/200        �
ECHO. � �����۰���                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% attacks
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 4
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:120/200        �
ECHO. � �����۰���                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES15%                    
ECHO. �                                  �                   � �   � �       %SPACES15%                   
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 14 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 4
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:64/100                        � HP:120/200        �
ECHO. � �����۰���                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 14 damage^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 4
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% used Meditate
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ 
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% � %SPACES34%  \�/        
ECHO. �                                  �                   � %SPACES34% -   -       
ECHO. � HP:50/100                        � HP:120/200        � %SPACES34%  /�\  
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% used Meditate
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ %SPACES34%\  �  /       
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   � %SPACES34%-     -       
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        � %SPACES34%/  �  \  
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% used Meditate
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ��۰������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �                �   %SPACES15%
ECHO. � ����۰����                       � �����۰���        �                �   %SPACES15%
ECHO. �                                  �                   �       ���Ŀ    �   %SPACES15%
ECHO. � MP:15/50                         � Meditate          �       �  O�    �   %SPACES15%
ECHO. � ��۰������                       �                   �       �   �    �   %SPACES15%
ECHO. �                                  �                   �       �����    �   %SPACES15%
ECHO. � AP:8/10                          �                   �      ��� �Ŀ  ���  %SPACES15%
ECHO. � �������۰�                       �                   �      �     � / �   %SPACES15%
ECHO. �                                  �                   �      �     /   �   %SPACES15%
ECHO. � Limit Break                      �                   �      �   / �       %SPACES15%                    
ECHO. � ����۰����                       �                   �      �     �       %SPACES15%                    
ECHO. �                                  �                   �      �     �       %SPACES15%                   
ECHO. �                                  �                   �      �     �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �      �������       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������       �   �        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �                    %SPACES15%
ECHO. � ����۰����                       � �����۰���        �                    %SPACES15%
ECHO. �                                  �                   �       ���Ŀ        %SPACES15%
ECHO. � MP:15/50                         � Meditate          �       �  O�         /%SPACES13%
ECHO. � ��۰������                       �                   �       �   �        /%SPACES14%
ECHO. �                                  �                   �       �����       /%SPACES15%
ECHO. � AP:8/10                          �                   �      ��� �Ŀ     / %SPACES15%
ECHO. � �������۰�                       �                   �      �     �    /  %SPACES15%
ECHO. �                                  �                   �      �     � \ /   %SPACES15%
ECHO. � Limit Break                      �                   �      �   �����X    %SPACES15%                    
ECHO. � ����۰����                       �                   �      �     � / \   %SPACES15%                    
ECHO. �                                  �                   �      �     �       %SPACES15%                   
ECHO. �                                  �                   �      �     �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �      �������       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �       �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������       �   �        %SPACES15%                   
ECHO.
ECHO %PLAYERNAME% used Critical Strike^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 5
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:120/200        �
ECHO. � ����۰����                       � �����۰���        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:81/200         �
ECHO. � ����۰����                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:8/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � �������۰�                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:81/200         �
ECHO. � ����۰����                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:81/200         �
ECHO. � ����۰����                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:81/200         �
ECHO. � ����۰����                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 6
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:81/200         �
ECHO. � ����۰����                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES15%                    
ECHO. �                                  �                   � �   � �       %SPACES15%                   
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 32 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 6
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:50/100                        � HP:81/200         �
ECHO. � ����۰����                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Meditate          �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����۰����                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 32 damage^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 6
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �%SPACES15%�Ŀ%SPACES17%
ECHO. � HP:18/100                        � HP:81/200         �%SPACES15%��%SPACES17%
ECHO. � �۰�������                       � ���۰�����        �%SPACES15%���%SPACES17%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �      / %SPACES20%
ECHO. �                                  �                   �  �����    /   %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ /     %SPACES20%
ECHO. � ���۰�����                       �                   � �     /       %SPACES20%
ECHO. �                                  �                   � �   / �       %SPACES20%
ECHO. � Limit Break                      �                   � �     �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �     �       %SPACES20%                    
ECHO. �                                  �                   � �     �       %SPACES20%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Blind Scroll
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 6
ECHO. ������������������������������������������������������Ŀ%SPACES15%%SPACES9%�Ŀ%SPACES8%
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES15%%SPACES9%��%SPACES8%
ECHO. �                                  �                   �%SPACES15%%SPACES9%���%SPACES8%
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Blind Scroll
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 6
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �%SPACES15%%SPACES17%�Ŀ
ECHO. � HP:18/100                        � HP:81/200         �%SPACES15%%SPACES17%��
ECHO. � �۰�������                       � ���۰�����        �%SPACES15%%SPACES17%���
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES15%                    
ECHO. �                                  �                   � �   � �       %SPACES15%                   
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack missed^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME%'s attack missed^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �   �Ŀ 
ECHO. �                                  �                   �   ��
ECHO. � HP:18/100                        � HP:81/200         �   ��� 
ECHO. � �۰�������                       � ���۰�����        �    �
ECHO. �                                  �                   �  �ĳĿ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  � �O�        %SPACES20%
ECHO. � ��۰������                       �                   �  � � �        %SPACES20%
ECHO. �                                  �                   �  �³��        %SPACES20%
ECHO. � AP:4/10                          �                   � ��ٳ�Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �  �  �       %SPACES20%
ECHO. �                                  �                   � �     �       %SPACES20%
ECHO. � Limit Break                      �                   � �     �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �     �       %SPACES20%                    
ECHO. �                                  �                   � �     �       %SPACES20%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �   \�/      
ECHO. �                                  �                   �  -  -   
ECHO. � HP:18/100                        � HP:81/200         �   /�\  
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ \  �  /
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   � -    -
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        � /  �  \
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �    
ECHO. �                                  �                   �   
ECHO. � HP:18/100                        � HP:81/200         �
ECHO. � �۰�������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used a Hi-Potion
ECHO.
ECHO %PLAYERNAME%'s HP has been restored by 150^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 7
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 8
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �%SPACES7%  ���Ŀ        %SPACES13%
ECHO. � MP:15/50                         � Blind             �%SPACES7%  �  O�        %SPACES13%
ECHO. � ��۰������                       �                   �%SPACES7%  �   �        %SPACES13%
ECHO. �                                  �                   �%SPACES7%  �����        %SPACES13%
ECHO. � AP:4/10                          �                   �%SPACES7% ��� �Ŀ       %SPACES13%
ECHO. � ���۰�����                       �                   �%SPACES7% �     �       %SPACES13%
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%
ECHO. � Limit Break                      �                   �%SPACES7% �   � �       %SPACES13%                    
ECHO. � �������۰�                       �                   �%SPACES7% �   � �       %SPACES13%                    
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%                   
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES7% ���ĳ��       %SPACES13%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES7%  �   �        %SPACES13%                   
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 8
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �%SPACES15%  ���Ŀ %SPACES12%
ECHO. � MP:15/50                         � Blind             �%SPACES15%  �  O� %SPACES12%
ECHO. � ��۰������                       �                   �%SPACES15%  �   � %SPACES12%
ECHO. �                                  �                   �%SPACES15%  ����� %SPACES12%
ECHO. � AP:4/10                          �                   �%SPACES15% ��� �Ŀ%SPACES12%
ECHO. � ���۰�����                       �                   �%SPACES15% �     �%SPACES12%
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%
ECHO. � Limit Break                      �                   �%SPACES15% �   � �%SPACES12%                    
ECHO. � �������۰�                       �                   �%SPACES15% �   � �%SPACES12%                    
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%                   
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES15% ���ĳ��%SPACES12%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES15%  �   � %SPACES12%                   
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 8
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �%SPACES20%  ���Ŀ        
ECHO. � MP:15/50                         � Blind             �%SPACES20%  �  O�        
ECHO. � ��۰������                       �                   �%SPACES20%  �   �        
ECHO. �                                  �                   �%SPACES20%  �����        
ECHO. � AP:4/10                          �                   �%SPACES20% ��� �Ŀ       
ECHO. � ���۰�����                       �                   �%SPACES20% �     �       
ECHO. �                                  �                   �%SPACES20% �   ��������  
ECHO. � Limit Break                      �                   �%SPACES20% �     �        
ECHO. � �������۰�                       �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �        
ECHO. �                                  �                   �%SPACES20% �     �        %STATICSMALLDOGENEMY1-16%
ECHO. �                                  �                   �%SPACES20% �������        %STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES20%  �   �         %STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES20%  �   �         %STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES20%  �   �         %STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES20%  �   �                         
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 8
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% used Steal
ECHO.
ECHO %PLAYERNAME% successfully stole Sprint Shoes
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 8
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES15%                    
ECHO. �                                  �                   � �   � �       %SPACES15%                   
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 8
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:81/200         �
ECHO. � ����������                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO %PLAYERNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO Because of the skills used in this battle, your limit break will take the form of:
ECHO Non-elemental Damage
ECHO Super Steal
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%     
ECHO. � AP:0/10                          �                   � ��� �Ŀ       �����   %SPACES12%
ECHO. � ����������                       �                   � �     �       ������� %SPACES12%
ECHO. �                                  �                   � �   ��������  ��������%SPACES12%
ECHO. � Limit Break                      �                   � �     ������� ��������%SPACES12%                    
ECHO. � ����������                       �                   � �     �       ������� %SPACES12%                    
ECHO. �                                  �                   � �     �       �����   %SPACES12%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                    
ECHO.
ECHO Non-elemental Damage did 91 damage to Yorkshire Terrier
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%       
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES6%�����   %SPACES6%
ECHO. � ����������                       �                   � �     �       %SPACES6%������� %SPACES6%
ECHO. �                                  �                   � �   ��������  %SPACES6%��������%SPACES6%
ECHO. � Limit Break                      �                   � �     ������� %SPACES6%��������%SPACES6%                    
ECHO. � ����������                       �                   � �     �       %SPACES6%������� %SPACES6%                    
ECHO. �                                  �                   � �     �       %SPACES6%�����   %SPACES6%                   
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                    
ECHO.
ECHO Non-elemental Damage did 91 damage to Yorkshire Terrier
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%    
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES12%�����   
ECHO. � ����������                       �                   � �     �       %SPACES12%������� 
ECHO. �                                  �                   � �   ��������  %SPACES12%��������
ECHO. � Limit Break                      �                   � �     ������� %SPACES12%��������                  
ECHO. � ����������                       �                   � �     �       %SPACES12%�������                   
ECHO. �                                  �                   � �     �       %SPACES12%�����                     
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � �������       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                    
ECHO.
ECHO Non-elemental Damage did 91 damage to Yorkshire Terrier
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �%SPACES7%  ���Ŀ        %SPACES13%
ECHO. � MP:15/50                         � Blind             �%SPACES7%  �  O�        %SPACES13%
ECHO. � ��۰������                       �                   �%SPACES7%  �   �        %SPACES13%
ECHO. �                                  �                   �%SPACES7%  �����        %SPACES13%
ECHO. � AP:0/10                          �                   �%SPACES7% ��� �Ŀ       %SPACES13%
ECHO. � ����������                       �                   �%SPACES7% �     �       %SPACES13%
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%
ECHO. � Limit Break                      �                   �%SPACES7% �   � �       %SPACES13%                    
ECHO. � ����������                       �                   �%SPACES7% �   � �       %SPACES13%                    
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%                   
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES7% ���ĳ��       %SPACES13%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES7%  �   �        %SPACES13%                   
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �%SPACES15%  ���Ŀ %SPACES12%
ECHO. � MP:15/50                         � Blind             �%SPACES15%  �  O� %SPACES12%
ECHO. � ��۰������                       �                   �%SPACES15%  �   � %SPACES12%
ECHO. �                                  �                   �%SPACES15%  ����� %SPACES12%
ECHO. � AP:0/10                          �                   �%SPACES15% ��� �Ŀ%SPACES12%
ECHO. � ����������                       �                   �%SPACES15% �     �%SPACES12%
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%
ECHO. � Limit Break                      �                   �%SPACES15% �   � �%SPACES12%                    
ECHO. � ����������                       �                   �%SPACES15% �   � �%SPACES12%                    
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%                   
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES15% ���ĳ��%SPACES12%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES15%  �   � %SPACES12%                   
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �%SPACES20%  ���Ŀ        
ECHO. � MP:15/50                         � Blind             �%SPACES20%  �  O�        
ECHO. � ��۰������                       �                   �%SPACES20%  �   �        
ECHO. �                                  �                   �%SPACES20%  �����        
ECHO. � AP:0/10                          �                   �%SPACES20% ��� �Ŀ       
ECHO. � ����������                       �                   �%SPACES20% �     �       
ECHO. �                                  �                   �%SPACES20% �   ��������  
ECHO. � Limit Break                      �                   �%SPACES20% �     �         
ECHO. � ����������                       �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �        %STATICSMALLDOGENEMY1-16%
ECHO. �                                  �                   �%SPACES20% �������        %STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES20%  �   �         %STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES20%  �   �         %STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES20%  �   �         %STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES20%  �   �                           
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:81/200         �
ECHO. � �������۰�                       � ���۰�����        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         � Blind             �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
ECHO.
ECHO Using Super Steal you have stolen 1 X-Potion
ECHO.
CALL :WAITFORTHREE
CLS
ECHO.
ECHO. Round 9
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:80/100                        � HP:0/200          �
ECHO. � �������۰�                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:15/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��۰������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%                    
ECHO. � ����������                       �                   � �   � �       %SPACES20%                    
ECHO. �                                  �                   � �   � �       %SPACES20%                   
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%%STATICSMALLDOGENEMY1-17% 
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������  �   �        %SPACES20%                   
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
ECHO. ������������������������������������������������������Ŀ
ECHO. �                                                      �
ECHO. � Level 1                                              �
ECHO. � Exp:0/200                                  (+412)    �
ECHO. � ����������                                           �
ECHO. �                                                      �
ECHO. � Gil:0                                      (+100)    �
ECHO. �                                                      �
ECHO. � Items:                                               �
ECHO. � 0 Ether                                    (+1)      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. � Equipment:                                           �
ECHO. � 0 Morph Suit                               (+1)      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. ��������������������������������������������������������
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
ECHO. ������������������������������������������������������Ŀ
ECHO. �                                                      �
ECHO. � Level 3                                    (+2)      �
ECHO. � Exp:12/200                                           �
ECHO. � ۰��������                                           �
ECHO. �                                                      �
ECHO. � Gil:100                                              �
ECHO. �                                                      �
ECHO. � Items:                                               �
ECHO. � 1 Ether                                              �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. � Equipment:                                           �
ECHO. � 1 Morph Suit                                         �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. �                                                      �
ECHO. ��������������������������������������������������������
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
ECHO. ����������������������������������������������������������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � HP:1000/1000 Blind     Auto-Life � HP:1000/1000      � Weakness  Resist    E.Immune  Absorb    S.Immune  �
ECHO. � ����������   Silence   Half MP   � ����������        �                                                   �
ECHO. �              Poison    Zero MP   �                   � Fire      Fire      Fire      Fire      Blind     �
ECHO. � MP:1000/1000 Slow      Half AP   � Blind             � Ice       Ice       Ice       Ice       Silence   �
ECHO. � ����������   Sleep     Zero AP   � Silence           � Electric  Electric  Electric  Electric  Poison    �
ECHO. �              Confusion Meditate  � Poison            � Water     Water     Water     Water     Slow      �
ECHO. � AP:1000/1000 Stop      Focus     � Slow              � Earth     Earth     Earth     Earth     Sleep     �
ECHO. � ����������   Haste     Aim       � Sleep             � Demi      Demi      Demi      Demi      Confusion �
ECHO. �              Regen     Hide      � Confusion         � Forbidden Forbidden Forbidden Forbidden Stop      �
ECHO. � Limit Break  Protect   Inc Crit  � Stop              �                                                   �
ECHO. � ����������   Shell     Break Lim � Haste             �                                                   �
ECHO. �              Reflect   AP Gain   � Regen             � Exp:1000                 Gil:1000                 �
ECHO. �                                  � Protect           �                                                   �
ECHO. �                                  � Shell             � Yorkshire Terriers are small canine creatures     �
ECHO. �                                  � Reflect           � Don't set it on fire, I have a little one and     �
ECHO. �                                  �                   � they most certainly don't like that^^!              �
ECHO. �                                  �                   �                                                   �
ECHO. ������������������������������������������������������������������������������������������������������������ 
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

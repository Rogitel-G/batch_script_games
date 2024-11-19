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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
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
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �%SPACES7%  ���Ŀ        %SPACES13%
ECHO. � MP:50/50                         �                   �%SPACES7%  �  O�        %SPACES13%
ECHO. � ����������                       �                   �%SPACES7%  �   �        %SPACES13%
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
ECHO Attempting to catch...
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �%SPACES15%  ���Ŀ %SPACES12%
ECHO. � MP:50/50                         �                   �%SPACES15%  �  O� %SPACES12%
ECHO. � ����������                       �                   �%SPACES15%  �   � %SPACES12%
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
ECHO Attempting to catch...
ECHO.
ECHO ...
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �%SPACES20%  ���Ŀ        
ECHO. � MP:50/50                         �                   �%SPACES20%  �  O�        
ECHO. � ����������                       �                   �%SPACES20%  �   �        
ECHO. �                                  �                   �%SPACES20%  �����        
ECHO. � AP:0/10                          �                   �%SPACES20% ��� �Ŀ       
ECHO. � ����������                       �                   �%SPACES20% �     �       
ECHO. �                                  �                   �%SPACES20% �   ��������  
ECHO. � Limit Break                      �                   �%SPACES20% �     �             
ECHO. � ����������                       �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �       %STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES20% �������       %STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES20%  �   �                           
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
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
ECHO %ENEMYNAME% attacks
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � ����������                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
ECHO %ENEMYNAME%'s attack did 8 damage^^!
ECHO.
CALL :WAITFORONE
GOTO :EOF

:ROUND2CHOICE
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � ��������۰                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � ��������۰                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � ��������۰                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � ��������۰                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � ��������۰                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � ��������۰                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � ����������                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ����������                       �                   � �     �       %SPACES20%
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
ECHO Rabies Bite did 18 damage^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:50/50          �
ECHO. � ������۰��                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � ����������                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:0/10                          �                   � ��� �Ŀ       �����   %SPACES12%
ECHO. � ����������                       �                   � �     �       ������� %SPACES12%
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
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:50/50          �
ECHO. � ������۰��                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � ����������                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES6%�����   %SPACES6%
ECHO. � ����������                       �                   � �     �       %SPACES6%������� %SPACES6%
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
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:50/50          �
ECHO. � ������۰��                       � ����������        �
ECHO. �                                  �                   �  ���Ŀ        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � ����������                       �                   �  �   �        
ECHO. �                                  �                   �  �����        
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES12%�����   
ECHO. � ����������                       �                   � �     �       %SPACES12%������� 
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � ������۰��                       � ۰��������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:45/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��������۰                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � ������۰��                       � ۰��������        �
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:45/50                         �                   �  �  O�        %SPACES20%
ECHO. � ��������۰                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  �����        %SPACES20%
ECHO. � AP:4/10                          �                   � ��� �Ŀ       %SPACES20%
ECHO. � ���۰�����                       �                   � �     �       %SPACES20%
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
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � ������۰��                       � ۰��������        �
ECHO. �                                  �                   �%SPACES7%  ���Ŀ        %SPACES13%
ECHO. � MP:45/50                         �                   �%SPACES7%  �  O�        %SPACES13%
ECHO. � ��������۰                       �                   �%SPACES7%  �   �        %SPACES13%
ECHO. �                                  �                   �%SPACES7%  �����        %SPACES13%
ECHO. � AP:4/10                          �                   �%SPACES7% ��� �Ŀ       %SPACES13%
ECHO. � ���۰�����                       �                   �%SPACES7% �     �       %SPACES13%
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%
ECHO. � Limit Break                      �                   �%SPACES7% �   � �       %SPACES13%      
ECHO. � ��۰������                       �                   �%SPACES7% �   � �       %SPACES13%  
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%  
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES7% ���ĳ��       %SPACES13%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES7%  �   �        %SPACES13%                   
ECHO.
ECHO Attempting to catch...
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � ������۰��                       � ۰��������        �
ECHO. �                                  �                   �%SPACES15%  ���Ŀ %SPACES12%
ECHO. � MP:45/50                         �                   �%SPACES15%  �  O� %SPACES12%
ECHO. � ��������۰                       �                   �%SPACES15%  �   � %SPACES12%
ECHO. �                                  �                   �%SPACES15%  ����� %SPACES12%
ECHO. � AP:4/10                          �                   �%SPACES15% ��� �Ŀ%SPACES12%
ECHO. � ���۰�����                       �                   �%SPACES15% �     �%SPACES12%
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%
ECHO. � Limit Break                      �                   �%SPACES15% �   � �%SPACES12%      
ECHO. � ��۰������                       �                   �%SPACES15% �   � �%SPACES12%  
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%  
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES15% ���ĳ��%SPACES12%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES15%  �   � %SPACES12%                   
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � ������۰��                       � ۰��������        �
ECHO. �                                  �                   �%SPACES20%  ���Ŀ        
ECHO. � MP:45/50                         �                   �%SPACES20%  �  O�        
ECHO. � ��������۰                       �                   �%SPACES20%  �   �        
ECHO. �                                  �                   �%SPACES20%  �����        
ECHO. � AP:4/10                          �                   �%SPACES20% ��� �Ŀ       
ECHO. � ���۰�����                       �                   �%SPACES20% �     �       
ECHO. �                                  �                   �%SPACES20% �   ��������  
ECHO. � Limit Break                      �                   �%SPACES20% �     �             
ECHO. � ��۰������                       �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �       %STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES20% �������       %STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-20%
ECHO. ��������������������������������������������������������%SPACES20%  �   �                          
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
ECHO. ����������������������������������������������������������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � HP:74/100                        � HP:2/50           � Weakness  Resist    E.Immune  Absorb    S.Immune  �
ECHO. � ������۰��                       � ۰��������        �                                                   �
ECHO. �                                  �                   � Fire                                              �
ECHO. � MP:45/50                         �                   �                                                   �
ECHO. � ��������۰                       �                   �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � AP:4/10                          �                   �                                                   �
ECHO. � ���۰�����                       �                   �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � Limit Break                      �                   �                                                   �
ECHO. � ��۰������                       �                   � Exp:1000                 Gil:1000                 �
ECHO. �                                  �                   �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. �                                  �                   � Yorkshire Terriers are small canine creatures     �
ECHO. �                                  �                   � Don't set it on fire, I have a little one and     �
ECHO. �                                  �                   � they most certainly don't like that^^!              �
ECHO. �                                  �                   �                                                   �
ECHO. ������������������������������������������������������������������������������������������������������������
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

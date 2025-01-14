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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 같같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 같같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 1
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �%SPACES7%  旼컴�        %SPACES13%
ECHO. � MP:50/50                         �                   �%SPACES7%  �  O�        %SPACES13%
ECHO. � 栢栢栢栢栢                       �                   �%SPACES7%  �   �        %SPACES13%
ECHO. �                                  �                   �%SPACES7%  읓컫�        %SPACES13%
ECHO. � AP:0/10                          �                   �%SPACES7% 旼� 읕�       %SPACES13%
ECHO. � 같같같같같                       �                   �%SPACES7% �     �       %SPACES13%
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%
ECHO. � Limit Break                      �                   �%SPACES7% �   � �       %SPACES13%      
ECHO. � 같같같같같                       �                   �%SPACES7% �   � �       %SPACES13%  
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%  
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES7% 읓컴냈�       %SPACES13%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸%SPACES7%  �   �        %SPACES13%                   
ECHO.
ECHO Attempting to catch...
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �%SPACES15%  旼컴� %SPACES12%
ECHO. � MP:50/50                         �                   �%SPACES15%  �  O� %SPACES12%
ECHO. � 栢栢栢栢栢                       �                   �%SPACES15%  �   � %SPACES12%
ECHO. �                                  �                   �%SPACES15%  읓컫� %SPACES12%
ECHO. � AP:0/10                          �                   �%SPACES15% 旼� 읕�%SPACES12%
ECHO. � 같같같같같                       �                   �%SPACES15% �     �%SPACES12%
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%
ECHO. � Limit Break                      �                   �%SPACES15% �   � �%SPACES12%      
ECHO. � 같같같같같                       �                   �%SPACES15% �   � �%SPACES12%  
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%  
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES15% 읓컴냈�%SPACES12%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸%SPACES15%  �   � %SPACES12%                   
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �%SPACES20%  旼컴�        
ECHO. � MP:50/50                         �                   �%SPACES20%  �  O�        
ECHO. � 栢栢栢栢栢                       �                   �%SPACES20%  �   �        
ECHO. �                                  �                   �%SPACES20%  읓컫�        
ECHO. � AP:0/10                          �                   �%SPACES20% 旼� 읕�       
ECHO. � 같같같같같                       �                   �%SPACES20% �     �       
ECHO. �                                  �                   �%SPACES20% �   컴컴컴컴  
ECHO. � Limit Break                      �                   �%SPACES20% �     �             
ECHO. � 같같같같같                       �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �       %STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES20% 읓컴컫�       %STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸%SPACES20%  �   �                           
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 같같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% attacks
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 1
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:100/100                       � HP:50/50          �
ECHO. � 栢栢栢栢栢                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%      
ECHO. � 같같같같같                       �                   � �   � �       %SPACES15%  
ECHO. �                                  �                   � �   � �       %SPACES15%  
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES15%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME%'s attack did 8 damage^^!
ECHO.
CALL :WAITFORONE
GOTO :EOF

:ROUND2CHOICE
CLS
ECHO.
ECHO. Round 2
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � 栢栢栢栢方                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 方같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � 栢栢栢栢方                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 方같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � 栢栢栢栢方                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 方같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � 栢栢栢栢方                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 方같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � 栢栢栢栢方                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 方같같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
CALL :WAITFORONE
CLS
ECHO.
ECHO. Round 2
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:92/100                        � HP:50/50          �
ECHO. � 栢栢栢栢方                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢栢                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 같같같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%      
ECHO. � 方같같같같                       �                   � �   � �       %SPACES15%  
ECHO. �                                  �                   � �   � �       %SPACES15%  
ECHO. �                                  �                   � �   � �       %SPACES15%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES15%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES15%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES15%                   
ECHO.
ECHO %ENEMYNAME% used Rabies Bite^^!
ECHO.
ECHO Rabies Bite did 18 damage^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:50/50          �
ECHO. � 栢栢栢方같                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � 栢栢栢栢栢                       �                   �  �   �        
ECHO. �                                  �                   �  읓컫�        
ECHO. � AP:0/10                          �                   � 旼� 읕�       갚굉�   %SPACES12%
ECHO. � 같같같같같                       �                   � �     �       갚굉꾼� %SPACES12%
ECHO. �                                  �                   � �   컴컴컴컴  갚굉꾼栢%SPACES12%
ECHO. � Limit Break                      �                   � �     냐컴컴� 갚굉꾼栢%SPACES12%      
ECHO. � 栢方같같같                       �                   � �     �       갚굉꾼� %SPACES12%  
ECHO. �                                  �                   � �     �       갚굉�   %SPACES12%  
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴컫�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:50/50          �
ECHO. � 栢栢栢方같                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � 栢栢栢栢栢                       �                   �  �   �        
ECHO. �                                  �                   �  읓컫�        
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES6%갚굉�   %SPACES6%
ECHO. � 같같같같같                       �                   � �     �       %SPACES6%갚굉꾼� %SPACES6%
ECHO. �                                  �                   � �   컴컴컴컴  %SPACES6%갚굉꾼栢%SPACES6%
ECHO. � Limit Break                      �                   � �     냐컴컴� %SPACES6%갚굉꾼栢%SPACES6%      
ECHO. � 栢方같같같                       �                   � �     �       %SPACES6%갚굉꾼� %SPACES6%  
ECHO. �                                  �                   � �     �       %SPACES6%갚굉�   %SPACES6%  
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴컫�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                    
ECHO.
ECHO %PLAYERNAME% successfully cast Fire for !OFF%FIREID%MPCOST! MP
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 2
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:50/50          �
ECHO. � 栢栢栢方같                       � 栢栢栢栢栢        �
ECHO. �                                  �                   �  旼컴�        
ECHO. � MP:50/50                         �                   �  �  O�        
ECHO. � 栢栢栢栢栢                       �                   �  �   �        
ECHO. �                                  �                   �  읓컫�        
ECHO. � AP:0/10                          �                   � 旼� 읕�       %SPACES12%갚굉�   
ECHO. � 같같같같같                       �                   � �     �       %SPACES12%갚굉꾼� 
ECHO. �                                  �                   � �   컴컴컴컴  %SPACES12%갚굉꾼栢
ECHO. � Limit Break                      �                   � �     냐컴컴� %SPACES12%갚굉꾼栢      
ECHO. � 栢方같같같                       �                   � �     �       %SPACES12%갚굉꾼�   
ECHO. �                                  �                   � �     �       %SPACES12%갚굉�     
ECHO. �                                  �                   � �     �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴컫�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                    
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � 栢栢栢方같                       � 方같같같같        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:45/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢方                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:4/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 栢栢같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 栢方같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � 栢栢栢方같                       � 方같같같같        �
ECHO. �                                  �                   �  旼컴�        %SPACES20%
ECHO. � MP:45/50                         �                   �  �  O�        %SPACES20%
ECHO. � 栢栢栢栢方                       �                   �  �   �        %SPACES20%
ECHO. �                                  �                   �  읓컫�        %SPACES20%
ECHO. � AP:4/10                          �                   � 旼� 읕�       %SPACES20%
ECHO. � 栢栢같같같                       �                   � �     �       %SPACES20%
ECHO. �                                  �                   � �   � �       %SPACES20%
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%      
ECHO. � 栢方같같같                       �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%  
ECHO. �                                  �                   � �   � �       %SPACES20%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   � 읓컴냈�       %SPACES20%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �  �   �        %SPACES20%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸  �   �        %SPACES20%                   
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 3
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � 栢栢栢方같                       � 方같같같같        �
ECHO. �                                  �                   �%SPACES7%  旼컴�        %SPACES13%
ECHO. � MP:45/50                         �                   �%SPACES7%  �  O�        %SPACES13%
ECHO. � 栢栢栢栢方                       �                   �%SPACES7%  �   �        %SPACES13%
ECHO. �                                  �                   �%SPACES7%  읓컫�        %SPACES13%
ECHO. � AP:4/10                          �                   �%SPACES7% 旼� 읕�       %SPACES13%
ECHO. � 栢栢같같같                       �                   �%SPACES7% �     �       %SPACES13%
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%
ECHO. � Limit Break                      �                   �%SPACES7% �   � �       %SPACES13%      
ECHO. � 栢方같같같                       �                   �%SPACES7% �   � �       %SPACES13%  
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%  
ECHO. �                                  �                   �%SPACES7% �   � �       %SPACES13%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES7% 읓컴냈�       %SPACES13%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES7%  �   �        %SPACES13%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸%SPACES7%  �   �        %SPACES13%                   
ECHO.
ECHO Attempting to catch...
ECHO.
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � 栢栢栢方같                       � 方같같같같        �
ECHO. �                                  �                   �%SPACES15%  旼컴� %SPACES12%
ECHO. � MP:45/50                         �                   �%SPACES15%  �  O� %SPACES12%
ECHO. � 栢栢栢栢方                       �                   �%SPACES15%  �   � %SPACES12%
ECHO. �                                  �                   �%SPACES15%  읓컫� %SPACES12%
ECHO. � AP:4/10                          �                   �%SPACES15% 旼� 읕�%SPACES12%
ECHO. � 栢栢같같같                       �                   �%SPACES15% �     �%SPACES12%
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%
ECHO. � Limit Break                      �                   �%SPACES15% �   � �%SPACES12%      
ECHO. � 栢方같같같                       �                   �%SPACES15% �   � �%SPACES12%  
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%  
ECHO. �                                  �                   �%SPACES15% �   � �%SPACES12%%STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES15% 읓컴냈�%SPACES12%%STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES15%  �   � %SPACES12%%STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸%SPACES15%  �   � %SPACES12%                   
ECHO.
ECHO Attempting to catch...
ECHO.
ECHO ...
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 3
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �
ECHO. �                                  �                   �
ECHO. � HP:74/100                        � HP:2/50           �
ECHO. � 栢栢栢方같                       � 方같같같같        �
ECHO. �                                  �                   �%SPACES20%  旼컴�        
ECHO. � MP:45/50                         �                   �%SPACES20%  �  O�        
ECHO. � 栢栢栢栢方                       �                   �%SPACES20%  �   �        
ECHO. �                                  �                   �%SPACES20%  읓컫�        
ECHO. � AP:4/10                          �                   �%SPACES20% 旼� 읕�       
ECHO. � 栢栢같같같                       �                   �%SPACES20% �     �       
ECHO. �                                  �                   �%SPACES20% �   컴컴컴컴  
ECHO. � Limit Break                      �                   �%SPACES20% �     �             
ECHO. � 栢方같같같                       �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �         
ECHO. �                                  �                   �%SPACES20% �     �       %STATICSMALLDOGENEMY1-16% 
ECHO. �                                  �                   �%SPACES20% 읓컴컫�       %STATICSMALLDOGENEMY1-17%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-18%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-19%
ECHO. �                                  �                   �%SPACES20%  �   �        %STATICSMALLDOGENEMY1-20%
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴켸%SPACES20%  �   �                          
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
ECHO. 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴컫컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � HP:74/100                        � HP:2/50           � Weakness  Resist    E.Immune  Absorb    S.Immune  �
ECHO. � 栢栢栢方같                       � 方같같같같        �                                                   �
ECHO. �                                  �                   � Fire                                              �
ECHO. � MP:45/50                         �                   �                                                   �
ECHO. � 栢栢栢栢方                       �                   �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � AP:4/10                          �                   �                                                   �
ECHO. � 栢栢같같같                       �                   �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. � Limit Break                      �                   �                                                   �
ECHO. � 栢方같같같                       �                   � Exp:1000                 Gil:1000                 �
ECHO. �                                  �                   �                                                   �
ECHO. �                                  �                   �                                                   �
ECHO. �                                  �                   � Yorkshire Terriers are small canine creatures     �
ECHO. �                                  �                   � Don't set it on fire, I have a little one and     �
ECHO. �                                  �                   � they most certainly don't like that^^!              �
ECHO. �                                  �                   �                                                   �
ECHO. 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴컨컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
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

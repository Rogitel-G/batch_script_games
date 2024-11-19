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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:100/100                       � HP:1000/1000      �%SPACES35%
ECHO. � ����������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � ����������                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:100/100                       � HP:1000/1000      �%SPACES35%
ECHO. � ����������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � ����������                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:100/100                       � HP:1000/1000      �%SPACES35%
ECHO. � ����������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � ����������                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:100/100                       � HP:1000/1000      �%SPACES35%
ECHO. � ����������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � ����������                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
ECHO.
ECHO %ENEMYNAME% attacks^^!
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:100/100                       � HP:1000/1000      �%SPACES35%
ECHO. � ����������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES15%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES15%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES15% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES15%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES15%       \        
ECHO. � ����������                       �                   � �     �       %SPACES15%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES15%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES15%    �     \        
ECHO. � ����������                       �                   � �   � �       %SPACES15%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES15% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES15%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES15%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES15%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES15%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES15%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES15%    ��� ���        
ECHO.
ECHO %ENEMYNAME% attacks^^!
CALL :WAITFORZERO
CLS
ECHO.
ECHO. Round 1
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:100/100                       � HP:1000/1000      �%SPACES35%
ECHO. � ����������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � ����������                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
ECHO.
ECHO %ENEMYNAME%'s attack did 81 damage^^!
ECHO.
CALL :WAITFORTWO
GOTO :EOF


:ROUND2CHOICE
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:19/100                        � HP:1000/1000      �%SPACES35%
ECHO. � �۰�������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
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
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:19/100                        � HP:1000/1000      �%SPACES35%
ECHO. � �۰�������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
ECHO.
ECHO You acted first^^!
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Round 2
ECHO. ������������������������������������������������������Ŀ
ECHO. � %PLAYERNAMEVAR% � %ENEMYNAMEVAR% �%SPACES35%
ECHO. �                                  �                   �%SPACES35%
ECHO. � HP:19/100                        � HP:1000/1000      �%SPACES35%
ECHO. � �۰�������                       � ����������        �%SPACES35%
ECHO. �                                  �                   �  ���Ŀ        %SPACES20%
ECHO. � MP:50/50                         �                   �  �  O�        %SPACES20%   ___             
ECHO. � ����������                       �                   �  �   �        %SPACES20% _/�  \            
ECHO. �                                  �                   �  �����        %SPACES20%/      \           
ECHO. � AP:0/10                          �                   � ��� �Ŀ       %SPACES20%       \        
ECHO. � ����������                       �                   � �     �       %SPACES20%\___     \         
ECHO. �                                  �                   � �   � �       %SPACES20%    �     �        
ECHO. � Limit Break                      �                   � �   � �       %SPACES20%    �     \        
ECHO. � �������۰�                       �                   � �   � �       %SPACES20%   /       �       
ECHO. �                                  �                   � �   � �       %SPACES20% �ͳ��      \      
ECHO. �                                  �                   � �   � �       %SPACES20%   �         �   _ 
ECHO. �                                  �                   � ���ĳ��       %SPACES20%    \         \_// 
ECHO. �                                  �                   �  �   �        %SPACES20%     � __  _____/  
ECHO. �                                  �                   �  �   �        %SPACES20%     ��  ��        
ECHO. �                                  �                   �  �   �        %SPACES20%    �ٳ �ٳ        
ECHO. ��������������������������������������������������������  �   �        %SPACES20%    ��� ���        
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

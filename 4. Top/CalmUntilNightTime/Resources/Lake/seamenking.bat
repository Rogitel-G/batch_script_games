SET /a PLAYERXCOORD = %PLAYEROLDXCOORD%
SET /a PLAYERYCOORD = %PLAYEROLDYCOORD%
SET /a STORY23VERSIONNUM = 1
:START
CLS
ECHO.
ECHO %SEAKINGNAME%: Welome outsider, we don't get many surface dwellers around here any more.
ECHO !SPACES%SEAKINGSPACES%! Why have you come here?
ECHO.
ECHO. 1 - I need to get through the misty forest. I'm told you can help?
ECHO. 2 - You need to remove the mist from the forest so I can find %LASTBOSSNAME%
ECHO. 3 - Shut up Seamen Lord. I'll ask the questions^^!
ECHO.
SET /P CHOICE1=
ECHO.
IF "%CHOICE1%" EQU "1" (
	GOTO :%CHOICE1%
) ELSE IF "%CHOICE1%" EQU "2" (
	GOTO :%CHOICE1%
) ELSE IF "%CHOICE1%" EQU "3" (
	GOTO :%CHOICE1%
) ELSE (
	GOTO :START
)

:1
CLS
ECHO.
ECHO %SEAKINGNAME%: I do have the power to remove the mist but that won't happen. I conjured the mist long
ECHO !SPACES%SEAKINGSPACES%! ago to protect my people from %LASTBOSSNAME% and while there's air in my
ECHO !SPACES%SEAKINGSPACES%! lungs you won't see that mist removed.
ECHO.
ECHO. 1 - That's why I want it removed, I'm after %LASTBOSSNAME%^^!
ECHO. 2 - So if there wasn't air in your lungs...
ECHO. 3 - Aren't you the king of an underwater kingdom? Why do you breathe air?
ECHO.
SET /P CHOICE2=
ECHO.
IF "%CHOICE2%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%
) ELSE IF "%CHOICE2%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%
) ELSE IF "%CHOICE2%" EQU "3" (
	GOTO :%CHOICE1%-%CHOICE2%
) ELSE (
	GOTO :%CHOICE1%
)

:1-1
CLS
ECHO.
ECHO %SEAKINGNAME%: You can't be serious? A weak mortal like you thinks he can defeat %LASTBOSSNAME%?
ECHO.
ECHO. 1 - He's taken everything from me. I'll kill him if it's the last thing I do^^!
ECHO. 2 - Fine. I'm going to find a way to remove the mist with our without your help^^!
ECHO. 3 - Who you calling weak? I'll kick your head in.
ECHO.
SET /P CHOICE3=
ECHO.
IF "%CHOICE3%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE IF "%CHOICE3%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE IF "%CHOICE3%" EQU "3" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%
)

:1-1-1
CLS
ECHO.
ECHO %SEAKINGNAME%: I'm sorry, I can't remove the mist, it protects my people.
ECHO.
ECHO. 1 - I understand...
ECHO. 2 - Fine. I'm going to find a way to remove the mist with our without your help^^!
ECHO.
SET /P CHOICE4=
ECHO.
IF "%CHOICE4%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%-%CHOICE4%
) ELSE IF "%CHOICE4%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%-%CHOICE4%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
)

:1-1-1-1
CLS
ECHO.
ECHO %SEAKINGNAME%: My thoughts are with your friends and family surface dweller
ECHO.
pause
GOTO :EOF

:1-1-1-2
CLS
ECHO.
ECHO %SEAKINGNAME%: I can't let you do that. Guards seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:1-1-2
CLS
ECHO.
ECHO %SEAKINGNAME%: I can't let you do that. Guards seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:1-1-3
CLS
ECHO.
ECHO %SEAKINGNAME%: Guards seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:1-2
CLS
ECHO.
ECHO %SEAKINGNAME%: What exactly are you trying to imply surface dweller
ECHO.
ECHO. 1 - I'm-a kill ya^^!
ECHO. 2 - Nothing, nevermind
ECHO.
SET /P CHOICE3=
ECHO.
IF "%CHOICE3%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE IF "%CHOICE3%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%
)

:1-2-1
CLS
ECHO.
ECHO %SEAKINGNAME%: Guards seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:1-2-2
CLS
ECHO.
ECHO %SEAKINGNAME%: It was nice talking to you surface dweller
ECHO.
GOTO :EOF

:1-3
CLS
ECHO.
ECHO %SEAKINGNAME%: Plot convenience. Get to the point surface dweller
ECHO.
ECHO. 1 - I'm going to kill you to remove the mist
ECHO. 2 - I'm not going to kill you to remove the mist
ECHO.
SET /P CHOICE3=
ECHO.
IF "%CHOICE3%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE IF "%CHOICE3%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%
)

:1-3-1
CLS
ECHO.
ECHO %SEAKINGNAME%: Guards seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:1-3-2
CLS
ECHO.
ECHO %SEAKINGNAME%: I'm awfully glad about that surface dweller
ECHO.
GOTO :EOF

:2
CLS
ECHO.
ECHO %SEAKINGNAME%: I'm sorry, I can't do that. If I removed the mist %LASTBOSSNAME% could come
ECHO !SPACES%SEAKINGSPACES%! here and kill my people
ECHO.
ECHO. 1 - You do know he creates inter-dimensional portals, right?
ECHO. 2 - Ok, sorry I asked
ECHO.
SET /P CHOICE2=
ECHO.
IF "%CHOICE2%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%
) ELSE IF "%CHOICE2%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%
) ELSE (
	GOTO :%CHOICE1%
)

:2-1
CLS
ECHO.
ECHO %SEAKINGNAME%: I do, but my people don't. The mist makes them feel safe and I'm not about to sacrifice
ECHO !SPACES%SEAKINGSPACES%! that at the foolish request of an outsider.
ECHO.
ECHO. 1 - So the mist is useless and you know it??
ECHO. 2 - So you could remove the mist and it wouldn't affect the safety of your people?
ECHO. 3 - I understand, you need to keep the peace. Forget I asked.
ECHO.
SET /P CHOICE3=
IF "%CHOICE3%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE IF "%CHOICE3%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE IF "%CHOICE3%" EQU "3" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%
)

:2-1-1
CLS
ECHO.
ECHO %SEAKINGNAME%: It's far from useless, the mist holds order in my kingdom. Without it there would be chaos
ECHO.
ECHO. 1 - You're a fraud^^! These people aren't safe from %LASTBOSSNAME% and you know it^^!
ECHO. 2 - I understand, forget I asked.
ECHO.
SET /P CHOICE4=
IF "%CHOICE4%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%-%CHOICE4%
) ELSE IF "%CHOICE4%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%-%CHOICE4%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
)

:2-1-1-1
CLS
ECHO.
ECHO %SEAKINGNAME%: Guards, seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:2-1-1-2
CLS
ECHO.
ECHO %SEAKINGNAME%: I thank you for your understanding surface dweller
ECHO.
GOTO :EOF

:2-1-2
CLS
ECHO.
ECHO %SEAKINGNAME%: It would affect safety, the mist holds order in my kingdom. Without it there would be chaos
ECHO.
ECHO. 1 - No, the mist is a sign of your betrayal of each one of your subjects^^!
ECHO. 2 - I understand, forget I asked.
ECHO.
SET /P CHOICE4=
IF "%CHOICE4%" EQU "1" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%-%CHOICE4%
) ELSE IF "%CHOICE4%" EQU "2" (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%-%CHOICE4%
) ELSE (
	GOTO :%CHOICE1%-%CHOICE2%-%CHOICE3%
)

:2-1-2-1
CLS
ECHO.
ECHO %SEAKINGNAME%: Guards, seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF

:2-1-2-2
CLS
ECHO.
ECHO %SEAKINGNAME%: I thank you for your understanding surface dweller
ECHO.
GOTO :EOF

:2-1-3
CLS
ECHO.
ECHO %SEAKINGNAME%: I thank you for your understanding surface dweller
ECHO.
GOTO :EOF

:2-2
CLS
ECHO.
ECHO %SEAKINGNAME%: I thank you for your understanding surface dweller
ECHO.
GOTO :EOF

:3
CLS
ECHO.
ECHO %SEAKINGNAME%: You'll learn to watch your tongue surface dweller. Guards, seize him^^!
ECHO.
CALL "%LAKERESOURCEPATH%\seamenkingbattle.bat"
GOTO :EOF
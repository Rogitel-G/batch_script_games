
:SETUPDISPLAYCELLS
SET %MAP%TP=    �
SET %MAP%BM=    �
SET /a COUNT = 0
:LIMITLOOP
SET /a COUNT = %COUNT% + 1
SET %MAP%TP=!%MAP%TP!%EDGE%
SET %MAP%BM=!%MAP%BM!%EDGE%
IF %COUNT% LSS !%MAP%XLIMIT! (
	GOTO :LIMITLOOP
)
SET %MAP%TP=!%MAP%TP!�
SET %MAP%BM=!%MAP%BM!�
IF !%MAP%UNDERWATER! EQU 0 (
	SET %MAP%PLAYER-A=    
	SET %MAP%PLAYER-B= -�- 
	SET %MAP%PLAYER-C= / \ 
) ELSE (
	SET %MAP%PLAYER-A=    
	SET %MAP%PLAYER-B=  �- 
	SET %MAP%PLAYER-C= /   
)
SET /a YCOUNT = 0
:DISPLAYYLOOP
SET /a YCOUNT = %YCOUNT% + 1
SET /a XCOUNT = 0
:DISPLAYXLOOP
SET /a XCOUNT = %XCOUNT% + 1
SET TEMP=!%MAP%%YCOUNT%-%XCOUNT%!
SET %MAP%%YCOUNT%-%XCOUNT%-A=!%TEMP%A!
SET %MAP%%YCOUNT%-%XCOUNT%-B=!%TEMP%B!
SET %MAP%%YCOUNT%-%XCOUNT%-C=!%TEMP%C!
IF %XCOUNT% LSS !%MAP%XLIMIT! (
	GOTO :DISPLAYXLOOP
) ELSE IF %YCOUNT% LSS !%MAP%YLIMIT! (
	GOTO :DISPLAYYLOOP
)
GOTO :EOF
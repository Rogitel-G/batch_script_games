GOTO :BLACKJACKWELCOME
:PLAYAGAIN
CLS
ECHO.
ECHO %CASINOOWNERNAME%: Thank you for playing at Three Feathers, may your life be filled with the song of the sparrow.
ECHO.
ECHO %CASINOOWNERSPACES%  Would you like to play again sir?
ECHO.
ECHO. 1 - Yes
ECHO. 0 - No
ECHO.
SET /P BLACKJACKLEAVE=
ECHO.
IF "%BLACKJACKLEAVE%" EQU "0" (
	GOTO :EOF
) ELSE IF "%BLACKJACKLEAVE%" EQU "" (
	GOTO :PLAYAGAIN
) ELSE IF "%BLACKJACKLEAVE%" EQU "1" (
	ECHO.
) ELSE (
	GOTO :PLAYAGAIN
)
:BLACKJACKWELCOME
SET /a BLACKJACKPLAYEDTOTAL = %BLACKJACKPLAYEDTOTAL%+1
SET /a PLAYERBLACKJACKWIN = 0
SET /a DEALERCARDTOTALVALUE = 0
SET /a BLACKJACKBACK = 0
SET /a PLAYERCARD1ACE = 0
SET /a PLAYERCARD2ACE = 0
SET /a PLAYERCARD3ACE = 0
SET /a PLAYERCARD4ACE = 0
SET /a PLAYERCARD5ACE = 0
SET /a DEALERCARD1ACE = 0
SET /a DEALERCARD2ACE = 0
SET /a DEALERCARD3ACE = 0
SET /a DEALERCARD4ACE = 0
SET /a DEALERCARD5ACE = 0
CLS
ECHO.
ECHO You have !%GILVAR%! Gil
ECHO.
ECHO %CASINOOWNERNAME%: Welcome to the blackjack table, may luck run through you like the spirit of the buffalo.
ECHO.
ECHO. Bet 0 to leave
:SETBETAMOUNT
ECHO.
SET /P BLACKJACKBETAMOUNT=
ECHO.
IF "%BLACKJACKBETAMOUNT%" EQU "" (
	ECHO %CASINOOWNERNAME%: You must bet something sir
	GOTO :SETBETAMOUNT
) ELSE IF "%BLACKJACKBETAMOUNT%" EQU "0" (
	SET /a BLACKJACKBACK = 1
	GOTO :EOF
)
IF %BLACKJACKBETAMOUNT% LSS -9999 (
	ECHO %CASINOOWNERNAME%: Stop being silly
	ECHO.
	GOTO :SETBETAMOUNT
) ELSE IF %BLACKJACKBETAMOUNT% LSS 0 (
	ECHO %CASINOOWNERNAME%: Negative betting is not allowed
	ECHO.
	ECHO %CASINOOWNERSPACES%  Get out of my casino
	ECHO.
	SET /a CASINOBACK = 1
	SET /a PLAYERXCOORD = 9
	SET /a PLAYERYCOORD = 7
	pause
	GOTO :EOF
) ELSE IF !%GILVAR%! LSS %BLACKJACKBETAMOUNT% (
	ECHO %CASINOOWNERNAME%: You don't have enough money for that
	ECHO.
	ECHO %CASINOOWNERSPACES%  Try again
	ECHO.
	GOTO :SETBETAMOUNT
)
SET /a %GILVAR% = !%GILVAR%!-%BLACKJACKBETAMOUNT%
:SHUFFLECARDS
SET /a PLAYERFIVECARDTRICK = 0
SET /a DEALERFIVECARDTRICK = 0
SET /a PLAYERBLACKJACK = 0
SET /a DEALERBLACKJACK = 0
SET /a PLAYERBUST = 0
SET /a DEALERBUST = 0
ECHO.
ECHO. Shuffling Cards...
ECHO.
CALL :WAITFORTHREE
SET /a COUNT = 0
:LOOP
SET /a COUNT=%COUNT%+1
SET /a CARD%COUNT%ACTIVE = 1
IF %COUNT% LSS 52 (
	GOTO :LOOP
)
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º     º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  ?  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º     º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                          
ECHO                 º     º     º     º                           
ECHO                 º     º     º     º                  
ECHO Player Cards    º  ?  º     º  ?  º                   
ECHO                 º     º     º     º                   
ECHO                 º     º     º     º                   
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                           
ECHO.
SET /a PLAYERCARDCOUNT = 1
SET /a DEALERCARDCOUNT = 1
CALL :SETPLAYERCARDVALUE
CALL :SETDEALERCARDVALUE
CALL :DEALCARDS
CALL :GAMEWINQUERY
CALL :PLAYAGAIN
GOTO :EOF


:SETPLAYERCARDVALUE
SET /a PLAYERCARD%PLAYERCARDCOUNT%DISPLAY=%RANDOM% %% 13 + 1
SET /a PLAYERCARD%PLAYERCARDCOUNT%VALUEID = !PLAYERCARD%PLAYERCARDCOUNT%DISPLAY!
SET /a PLAYERCARD%PLAYERCARDCOUNT%VALUE = !PLAYERCARD%PLAYERCARDCOUNT%DISPLAY!
IF !PLAYERCARD%PLAYERCARDCOUNT%VALUEID! EQU 1 (
	SET /a PLAYERCARD%PLAYERCARDCOUNT%ACE = 1
	SET PLAYERCARD%PLAYERCARDCOUNT%DISPLAY=A
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%VALUEID! EQU 10 (
	SET PLAYERCARD%PLAYERCARDCOUNT%DISPLAY=X
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%VALUEID! EQU 11 (
	SET PLAYERCARD%PLAYERCARDCOUNT%DISPLAY=J
	SET /a PLAYERCARD%PLAYERCARDCOUNT%VALUE = 10
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%VALUEID! EQU 12 (
	SET PLAYERCARD%PLAYERCARDCOUNT%DISPLAY=Q
	SET /a PLAYERCARD%PLAYERCARDCOUNT%VALUE = 10
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%VALUEID! EQU 13 (
	SET PLAYERCARD%PLAYERCARDCOUNT%DISPLAY=K
	SET /a PLAYERCARD%PLAYERCARDCOUNT%VALUE = 10
)
SET /a PLAYERCARD%PLAYERCARDCOUNT%SUITVALUE=%RANDOM% %% 4 + 1
IF !PLAYERCARD%PLAYERCARDCOUNT%SUITVALUE! EQU 1 (
	SET PLAYERCARD%PLAYERCARDCOUNT%SUIT=
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%SUITVALUE! EQU 2 (
	SET PLAYERCARD%PLAYERCARDCOUNT%SUIT=
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%SUITVALUE! EQU 3 (
	SET PLAYERCARD%PLAYERCARDCOUNT%SUIT=
) ELSE IF !PLAYERCARD%PLAYERCARDCOUNT%SUITVALUE! EQU 4 (
	SET PLAYERCARD%PLAYERCARDCOUNT%SUIT=
)
CALL :PLAYERCARDINDECK
IF %CARDINDECK% EQU 0 (
	GOTO :SETPLAYERCARDVALUE
)
SET /a PLAYERCARDCOUNT=%PLAYERCARDCOUNT%+1
IF %PLAYERCARDCOUNT% LSS 3 (
	CALL :SETPLAYERCARDVALUE
)
CALL :LUCKEFFECT
GOTO :EOF


:SETDEALERCARDVALUE
SET /a DEALERCARD%DEALERCARDCOUNT%DISPLAY=%RANDOM% %% 13 + 1
SET /a DEALERCARD%DEALERCARDCOUNT%VALUEID = !DEALERCARD%DEALERCARDCOUNT%DISPLAY!
SET /a DEALERCARD%DEALERCARDCOUNT%VALUE = !DEALERCARD%DEALERCARDCOUNT%DISPLAY!
IF !DEALERCARD%DEALERCARDCOUNT%VALUEID! EQU 10 (
	SET DEALERCARD%DEALERCARDCOUNT%DISPLAY=X
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%VALUEID! EQU 11 (
	SET DEALERCARD%DEALERCARDCOUNT%DISPLAY=J
	SET /a DEALERCARD%DEALERCARDCOUNT%VALUE = 10
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%VALUEID! EQU 12 (
	SET DEALERCARD%DEALERCARDCOUNT%DISPLAY=Q
	SET /a DEALERCARD%DEALERCARDCOUNT%VALUE = 10
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%VALUEID! EQU 13 (
	SET DEALERCARD%DEALERCARDCOUNT%DISPLAY=K
	SET /a DEALERCARD%DEALERCARDCOUNT%VALUE = 10
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%VALUEID! EQU 1 (
	SET /a DEALERCARD%DEALERCARDCOUNT%ACE = 1
	SET DEALERCARD%DEALERCARDCOUNT%DISPLAY=A
	SET /a DEALERCARD%DEALERCARDCOUNT%VALUE = 11
)
SET /a DEALERCARD%DEALERCARDCOUNT%SUITVALUE=%RANDOM% %% 4 + 1
IF !DEALERCARD%DEALERCARDCOUNT%SUITVALUE! EQU 1 (
	SET DEALERCARD%DEALERCARDCOUNT%SUIT=
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%SUITVALUE! EQU 2 (
	SET DEALERCARD%DEALERCARDCOUNT%SUIT=
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%SUITVALUE! EQU 3 (
	SET DEALERCARD%DEALERCARDCOUNT%SUIT=
) ELSE IF !DEALERCARD%DEALERCARDCOUNT%SUITVALUE! EQU 4 (
	SET DEALERCARD%DEALERCARDCOUNT%SUIT=
)
CALL :DEALERCARDINDECK
IF %CARDINDECK% EQU 0 (
	GOTO :SETDEALERCARDVALUE
)
SET /a DEALERCARDCOUNT=%DEALERCARDCOUNT%+1

GOTO :EOF


:DEALCARDS
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º     º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  ?  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º     º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                          
ECHO                 º     º     º     º                           
ECHO                 º     º     º     º                  
ECHO Player Cards    º  ?  º     º  ?  º                   
ECHO                 º     º     º     º                   
ECHO                 º     º     º     º                   
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                           
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                   
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                          
ECHO                 º     º     º     º                           
ECHO                 º     º     º     º                  
ECHO Player Cards    º  ?  º     º  ?  º                   
ECHO                 º     º     º     º                   
ECHO                 º     º     º     º                   
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                           
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                    
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                          
ECHO                 º %PLAYERCARD1SUIT%   º     º     º                           
ECHO                 º     º     º     º                  
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  ?  º                   
ECHO                 º     º     º     º                   
ECHO                 º   %PLAYERCARD1SUIT% º     º     º                   
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                           
ECHO.
CALL :WAITFORTWO
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º
ECHO                 º     º     º     º   
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º
ECHO                 º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼  
ECHO.
IF %PLAYERCARD1ACE% EQU 1 (
	CALL :PLAYERACEQUERY1
)
IF %PLAYERCARD2ACE% EQU 1 (
	CALL :PLAYERACEQUERY2
)
ECHO.
SET /a PLAYERCARDTOTALVALUE = %PLAYERCARD1VALUE% + %PLAYERCARD2VALUE%
IF %PLAYERCARDTOTALVALUE% EQU 21 (
	ECHO. BLACK JACK
	SET /a PLAYERBLACKJACK = 1
	GOTO :EOF
)
ECHO.
ECHO Player has %PLAYERCARDTOTALVALUE%
ECHO.
CALL :PLAYERBUSTQUERY
IF %PLAYERBUST% EQU 1 (
	GOTO :EOF
)
ECHO. 1 - Hit me
ECHO. 2 - I'll stick
ECHO.
SET /P PLAYERMOVE1=
IF "%PLAYERMOVE1%" EQU "1" (
	CALL :PLAYERHIT1
) ELSE IF "%PLAYERMOVE1%" EQU "2" (
	CALL :PLAYERSTICK1
) ELSE IF "%PLAYERMOVE1%" EQU "" (
	GOTO :DEALCARDS
) ELSE (
	GOTO :DEALCARDS
)
GOTO :EOF


	
:PLAYERHIT1
CALL :SETPLAYERCARDVALUE
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                     
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º                      
ECHO                 º     º     º     º     º     º             
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º              
ECHO                 º     º     º     º     º     º             
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º              
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                        
ECHO.
IF %PLAYERCARD3ACE% EQU 1 (
	CALL :PLAYERACEQUERY3
)
ECHO.
SET /a PLAYERCARDTOTALVALUE = %PLAYERCARD1VALUE% + %PLAYERCARD2VALUE% + %PLAYERCARD3VALUE%
ECHO.
ECHO Player has %PLAYERCARDTOTALVALUE%
ECHO.
CALL :PLAYERBUSTQUERY
IF %PLAYERBUST% EQU 1 (
	GOTO :EOF
)
ECHO.
ECHO. 1 - Hit me
ECHO. 2 - I'll stick
ECHO.
SET /P PLAYERMOVE2=
IF "%PLAYERMOVE2%" EQU "1" (
	CALL :PLAYERHIT2
) ELSE IF "%PLAYERMOVE2%" EQU "2" (
	CALL :PLAYERSTICK2
) ELSE IF "%PLAYERMOVE2%" EQU "" (
	GOTO :PLAYERHIT1
) ELSE (
	GOTO :PLAYERHIT1
)
GOTO :EOF

	
:PLAYERHIT2
CALL :SETPLAYERCARDVALUE
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼            
ECHO.
IF %PLAYERCARD4ACE% EQU 1 (
	CALL :PLAYERACEQUERY4
)
ECHO.
SET /a PLAYERCARDTOTALVALUE = %PLAYERCARD1VALUE% + %PLAYERCARD2VALUE% + %PLAYERCARD3VALUE% + %PLAYERCARD4VALUE%
ECHO.
ECHO Player has %PLAYERCARDTOTALVALUE%
ECHO.
CALL :PLAYERBUSTQUERY
IF %PLAYERBUST% EQU 1 (
	GOTO :EOF
)
ECHO.
ECHO. 1 - Hit me
ECHO. 2 - I'll stick
ECHO.
SET /P PLAYERMOVE3=
IF "%PLAYERMOVE3%" EQU "1" (
	CALL :PLAYERHIT3
) ELSE IF "%PLAYERMOVE3%" EQU "2" (
	CALL :PLAYERSTICK3
) ELSE IF "%PLAYERMOVE3%" EQU "" (
	GOTO :PLAYERHIT2
) ELSE (
	GOTO :PLAYERHIT2
)
GOTO :EOF


:PLAYERHIT3
CALL :SETPLAYERCARDVALUE
CLS
ECHO.
ECHO. Dealing Cards...
ECHO.
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º     º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  ?  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º     º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º     º %PLAYERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º     º  %PLAYERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º     º   %PLAYERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.
IF %PLAYERCARD5ACE% EQU 1 (
	CALL :PLAYERACEQUERY5
)
ECHO.
SET /a PLAYERCARDTOTALVALUE = %PLAYERCARD1VALUE% + %PLAYERCARD2VALUE% + %PLAYERCARD3VALUE% + %PLAYERCARD4VALUE% + %PLAYERCARD5VALUE%
ECHO.
ECHO Player has %PLAYERCARDTOTALVALUE%
ECHO.
CALL :PLAYERBUSTQUERY
IF %PLAYERBUST% EQU 1 (
	GOTO :EOF
)
ECHO.
ECHO. 5-Card Trick
SET /a PLAYERFIVECARDTRICK = 1
ECHO.
pause
CALL :PLAYERSTICK4
GOTO :EOF

:PLAYERSTICK1
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. The dealer reveals his second card...
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º
ECHO                 º     º     º     º   
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º
ECHO                 º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼  
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%
CALL :DEALERACEQUERY
IF %DEALERCARDTOTALVALUE% EQU 21 (
	SET DEALERBLACKJACK = 1
	ECHO BLACK JACK
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :DEALERBUSTQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)

CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a third card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º
ECHO                 º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º
ECHO                 º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º
ECHO                 º     º     º     º   
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º
ECHO                 º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼  
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fourth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º
ECHO                 º     º     º     º   
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º
ECHO                 º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼  
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fifth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º     º %DEALERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º     º  %DEALERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º     º   %DEALERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º
ECHO                 º     º     º     º   
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º
ECHO                 º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼  
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%+%DEALERCARD5VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
ECHO. Dealer has a 5-card trick
SET /a DEALERFIVECARDTRICK = 1
CALL :WAITFORTWO
GOTO :EOF
	
	
:PLAYERSTICK2
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. The dealer reveals his second card...
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                     
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º                      
ECHO                 º     º     º     º     º     º             
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º              
ECHO                 º     º     º     º     º     º             
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º              
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼ 
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%
IF %DEALERCARDTOTALVALUE% EQU 21 (
	SET DEALERBLACKJACK = 1
	ECHO BLACK JACK
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)

CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a third card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º
ECHO                 º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º
ECHO                 º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                     
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º                      
ECHO                 º     º     º     º     º     º             
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º              
ECHO                 º     º     º     º     º     º             
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º              
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼ 
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fourth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                     
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º                      
ECHO                 º     º     º     º     º     º             
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º              
ECHO                 º     º     º     º     º     º             
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º              
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼ 
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fifth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º     º %DEALERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º     º  %DEALERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º     º   %DEALERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                     
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º                      
ECHO                 º     º     º     º     º     º             
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º              
ECHO                 º     º     º     º     º     º             
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º              
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼ 
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%+%DEALERCARD5VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
ECHO. Dealer has a 5-card trick
SET /a DEALERFIVECARDTRICK = 1
CALL :WAITFORTWO
GOTO :EOF

	
	
	
:PLAYERSTICK3
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. The dealer reveals his second card...
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼   
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%
IF %DEALERCARDTOTALVALUE% EQU 21 (
	SET DEALERBLACKJACK = 1
	ECHO BLACK JACK
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)

CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a third card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º
ECHO                 º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º
ECHO                 º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼   
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fourth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼   
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fifth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º     º %DEALERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º     º  %DEALERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º     º   %DEALERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼   
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%+%DEALERCARD5VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
ECHO. Dealer has a 5-card trick
SET /a DEALERFIVECARDTRICK = 1
CALL :WAITFORTWO
GOTO :EOF

:PLAYERSTICK4
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. The dealer reveals his second card...
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»                           
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º                                  
ECHO                 º     º     º     º                                 
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º                                  
ECHO                 º     º     º     º                                 
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º                                  
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼                                 
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º     º %PLAYERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º     º  %PLAYERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º     º   %PLAYERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%
IF %DEALERCARDTOTALVALUE% EQU 21 (
	SET DEALERBLACKJACK = 1
	ECHO BLACK JACK
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)

CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a third card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º
ECHO                 º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º
ECHO                 º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º     º %PLAYERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º     º  %PLAYERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º     º   %PLAYERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼ 
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fourth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º
ECHO                 º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º     º %PLAYERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Player Cards   º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º     º  %PLAYERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º     º   %PLAYERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
IF %DEALERCARDTOTALVALUE% GEQ 17 (
	ECHO Dealer Sticks
	ECHO.
	CALL :WAITFORTWO
	GOTO :EOF
)
CALL :SETDEALERCARDVALUE
CLS
ECHO.
ECHO. Dealer receives a fifth card
ECHO.
CALL :WAITFORTWO
ECHO.
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %DEALERCARD1SUIT%   º     º %DEALERCARD2SUIT%   º     º %DEALERCARD3SUIT%   º     º %DEALERCARD4SUIT%   º     º %DEALERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Dealer Cards    º  %DEALERCARD1DISPLAY%  º     º  %DEALERCARD2DISPLAY%  º     º  %DEALERCARD3DISPLAY%  º     º  %DEALERCARD4DISPLAY%  º     º  %DEALERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %DEALERCARD1SUIT% º     º   %DEALERCARD2SUIT% º     º   %DEALERCARD3SUIT% º     º   %DEALERCARD4SUIT% º     º   %DEALERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.                                         
ECHO.                                   
ECHO.                                   
ECHO.                                           
ECHO                 ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»     ÉÍÍÍÍÍ»
ECHO                 º %PLAYERCARD1SUIT%   º     º %PLAYERCARD2SUIT%   º     º %PLAYERCARD3SUIT%   º     º %PLAYERCARD4SUIT%   º     º %PLAYERCARD5SUIT%   º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO Player Cards    º  %PLAYERCARD1DISPLAY%  º     º  %PLAYERCARD2DISPLAY%  º     º  %PLAYERCARD3DISPLAY%  º     º  %PLAYERCARD4DISPLAY%  º     º  %PLAYERCARD5DISPLAY%  º
ECHO                 º     º     º     º     º     º     º     º     º     º
ECHO                 º   %PLAYERCARD1SUIT% º     º   %PLAYERCARD2SUIT% º     º   %PLAYERCARD3SUIT% º     º   %PLAYERCARD4SUIT% º     º   %PLAYERCARD5SUIT% º
ECHO                 ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼     ÈÍÍÍÍÍ¼
ECHO.
ECHO.
SET /a DEALERCARDTOTALVALUE = %DEALERCARD1VALUE%+%DEALERCARD2VALUE%+%DEALERCARD3VALUE%+%DEALERCARD4VALUE%+%DEALERCARD5VALUE%
CALL :DEALERACEQUERY
ECHO. Dealer has %DEALERCARDTOTALVALUE%
CALL :DEALERBUSTQUERY
IF %DEALERBUST% EQU 1 (
	GOTO :EOF
)
CALL :WAITFORTWO
ECHO.
ECHO. You each have a 5-card trick
SET /a BOTHFIVECARD = 1
CALL :WAITFORTWO
GOTO :EOF


















:PLAYERCARDINDECK
SET /a PLAYERCARD%PLAYERCARDCOUNT%ID = !PLAYERCARD%PLAYERCARDCOUNT%VALUEID!*!PLAYERCARD%PLAYERCARDCOUNT%SUITVALUE!
SET /a TEMP = !PLAYERCARD%PLAYERCARDCOUNT%ID!
IF !CARD%TEMP%ACTIVE! EQU 1 (
	SET /a CARDINDECK = 1
) ELSE (
	SET /a CARDINDECK = 0
)
GOTO :EOF

:DEALERCARDINDECK
SET /a DEALERCARD%DEALERCARDCOUNT%ID = !DEALERCARD%DEALERCARDCOUNT%VALUEID!*!DEALERCARD%DEALERCARDCOUNT%SUITVALUE!
SET /a TEMP = !DEALERCARD%DEALERCARDCOUNT%ID!
IF !CARD%TEMP%ACTIVE! EQU 1 (
	SET /a CARDINDECK = 1
) ELSE (
	SET /a CARDINDECK = 0
)
GOTO :EOF

:PLAYERBUSTQUERY
IF %PLAYERCARDTOTALVALUE% GTR 21 (
	ECHO.
	ECHO You Bust
	ECHO.
	SET /a PLAYERBUST = 1
)
GOTO :EOF

:DEALERBUSTQUERY
IF %DEALERCARDTOTALVALUE% GTR 21 (
	ECHO.
	ECHO Dealer Bust
	ECHO.
	SET /a DEALERBUST = 1
)
GOTO :EOF

:GAMEWINQUERY
IF %PLAYERBUST% EQU 1 (
	CALL :DEALERWIN
) ELSE IF %DEALERBUST% EQU 1 (
	CALL :PLAYERWIN
) ELSE IF %DEALERBLACKJACK% EQU 1 (
	CALL :DEALERWIN
) ELSE IF %PLAYERBLACKJACK% EQU 1 (
	CALL :PLAYERWIN
) ELSE IF %PLAYERFIVECARDTRICK% EQU 1 (
	CALL :PLAYERWIN
) ELSE IF %DEALERFIVECARDTRICK% EQU 1 (
	CALL :DEALERWIN
) ELSE (
	ECHO Dealer has %DEALERCARDTOTALVALUE%
	ECHO.
	ECHO Player has %PLAYERCARDTOTALVALUE%
	ECHO.
	IF %DEALERCARDTOTALVALUE% GEQ %PLAYERCARDTOTALVALUE% (
		CALL :DEALERWIN
	) ELSE (
		CALL :PLAYERWIN
	)
)
GOTO :EOF


:PLAYERWIN
ECHO. Player Wins.
SET /a BLACKJACKPROFIT = %BLACKJACKPROFIT%+%BLACKJACKBETAMOUNT%
SET /a BLACKJACKWINTOTAL = %BLACKJACKWINTOTAL%+1
ECHO.
SET /a %GILVAR% = !%GILVAR%! + %BLACKJACKBETAMOUNT% + %BLACKJACKBETAMOUNT%
ECHO. You have won %BLACKJACKBETAMOUNT% Gil
ECHO.
pause
GOTO :EOF

:DEALERWIN
ECHO. Dealer Wins.
SET /a BLACKJACKPROFIT = %BLACKJACKPROFIT%-%BLACKJACKBETAMOUNT%
SET /a BLACKJACKLOSETOTAL = %BLACKJACKLOSETOTAL%+1
ECHO.
pause
GOTO :EOF

:PLAYERACEQUERY1
ECHO You have drawn an ace, what value would you like it to take?
ECHO.
ECHO. 1 - 1
ECHO. 2 - 11
ECHO.
SET /P PLAYERCARD1VALUE=
ECHO.
IF "%PLAYERCARD1VALUE%" EQU "1" (
ECHO.
) ELSE IF "%PLAYERCARD1VALUE%" EQU "2" (
	SET /a PLAYERCARD1VALUE = 11
) ELSE (
	GOTO :PLAYERACEQUERY1
)
GOTO :EOF

:PLAYERACEQUERY2
ECHO You have drawn an ace, what value would you like it to take?
ECHO.
ECHO. 1 - 1
ECHO. 2 - 11
ECHO.
SET /P PLAYERCARD2VALUE=
ECHO.
IF "%PLAYERCARD2VALUE%" EQU "1" (
ECHO.
) ELSE IF "%PLAYERCARD2VALUE%" EQU "2" (
	SET /a PLAYERCARD2VALUE = 11
) ELSE (
	GOTO :PLAYERACEQUERY2
)
GOTO :EOF

:PLAYERACEQUERY3
ECHO You have drawn an ace, what value would you like it to take?
ECHO.
ECHO. 1 - 1
ECHO. 2 - 11
ECHO.
SET /P PLAYERCARD3VALUE=
ECHO.
IF "%PLAYERCARD3VALUE%" EQU "1" (
ECHO.
) ELSE IF "%PLAYERCARD3VALUE%" EQU "2" (
	SET /a PLAYERCARD3VALUE = 11
) ELSE (
	GOTO :PLAYERACEQUERY3
)
GOTO :EOF
:PLAYERACEQUERY4
ECHO You have drawn an ace, what value would you like it to take?
ECHO.
ECHO. 1 - 1
ECHO. 2 - 11
ECHO.
SET /P PLAYERCARD4VALUE=
ECHO.
IF "%PLAYERCARD4VALUE%" EQU "1" (
ECHO.
) ELSE IF "%PLAYERCARD4VALUE%" EQU "2" (
	SET /a PLAYERCARD4VALUE = 11
) ELSE (
	GOTO :PLAYERACEQUERY4
)
GOTO :EOF
:PLAYERACEQUERY5
ECHO You have drawn an ace, what value would you like it to take?
ECHO.
ECHO. 1 - 1
ECHO. 2 - 11
ECHO.
SET /P PLAYERCARD5VALUE=
ECHO.
IF "%PLAYERCARD5VALUE%" EQU "1" (
ECHO.
) ELSE IF "%PLAYERCARD5VALUE%" EQU "2" (
	SET /a PLAYERCARD5VALUE = 11
) ELSE (
	GOTO :PLAYERACEQUERY5
)
GOTO :EOF

:DEALERACEQUERY
IF %DEALERCARDTOTALVALUE% GTR 21 (
	IF %DEALERCARD1ACE% EQU 1 (
		SET /a DEALERCARD1VALUE = 1
		SET /a DEALERCARDTOTALVALUE = %DEALERCARDTOTALVALUE%-10
	) ELSE IF %DEALERCARD2ACE% EQU 1 (
		SET /a DEALERCARD2VALUE = 1
		SET /a DEALERCARDTOTALVALUE = %DEALERCARDTOTALVALUE%-10
	) ELSE IF %DEALERCARD3ACE% EQU 1 (
		SET /a DEALERCARD3VALUE = 1
		SET /a DEALERCARDTOTALVALUE = %DEALERCARDTOTALVALUE%-10
	) ELSE IF %DEALERCARD4ACE% EQU 1 (
		SET /a DEALERCARD4VALUE = 1
		SET /a DEALERCARDTOTALVALUE = %DEALERCARDTOTALVALUE%-10
	) ELSE IF %DEALERCARD5ACE% EQU 1 (
		SET /a DEALERCARD5VALUE = 1
		SET /a DEALERCARDTOTALVALUE = %DEALERCARDTOTALVALUE%-10
	)
)
GOTO :EOF


:LUCKEFFECT
SET /a RANLUCKFACTOR=%RANDOM% %% %BLACKJACKLUCKFACTOR%
IF %PLAYERLCK% GTR %RANLUCKFACTOR% (
	SET /a PLAYERCARD1ACE = 1
	SET PLAYERCARD1DISPLAY=A
	SET PLAYERCARD2DISPLAY=K
	SET /a PLAYERCARD2VALUE = 10
)
GOTO :EOF

:WAITFORZERO
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

:END

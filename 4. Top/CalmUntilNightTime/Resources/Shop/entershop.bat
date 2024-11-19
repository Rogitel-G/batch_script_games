@ECHO OFF
GOTO :SHOPENTER
REM All of this is for testing the shop
SETLOCAL ENABLEDELAYEDEXPANSION
SET /a SHOPNUM = 1
SET /a PLAYERGIL = 10000
SET /a TRAMPQUESTACTIVE = 0
SET /a SHOPKEEPER%SHOPNUM%ALIVE = 1
SET MAP=TOWN2
SET INITIALRESOURCEPATH=C:\Game\Resources\Setup\Initial
SET NEWRESOURCEPATH=C:\Game\Resources\Setup\New
SET MINERESOURCEPATH=C:\Game\Resources\Mine
SET DYNAMICRESOURCEPATH=C:\Game\Resources\Dynamic
SET SHOPRESOURCEPATH=C:\Game\Resources\Shop
SET MISCRESOURCEPATH=C:\Game\Resources\Misc

CALL "%INITIALRESOURCEPATH%\spellstats.bat"
CALL "%INITIALRESOURCEPATH%\specials.bat"
CALL "%INITIALRESOURCEPATH%\skilllist.bat"
CALL "%INITIALRESOURCEPATH%\itemlist.bat"
CALL "%INITIALRESOURCEPATH%\weaponstats.bat"
CALL "%INITIALRESOURCEPATH%\armourstats.bat"
CALL "%INITIALRESOURCEPATH%\accessorystats.bat"
CALL "%INITIALRESOURCEPATH%\settabsvars.bat"
SET /a COUNT = 0
:LOOPSTART
SET /a COUNT=%COUNT%+1
SET /a PLAYERITEM%COUNT%NUM = 0
IF %COUNT% LSS %ITEMTOTAL% (
	GOTO :LOOPSTART
)
SET /a COUNT = 0
:LOOP2START
SET /a COUNT=%COUNT%+1
SET /a PLAYERWEAPON%COUNT%NUM = 0
IF %COUNT% LSS %WEAPONTOTAL% (
	GOTO :LOOP2START
)
SET /a COUNT = 0
:LOOP3START
SET /a COUNT=%COUNT%+1
SET /a PLAYERARMOUR%COUNT%NUM = 0
IF %COUNT% LSS %ARMOURTOTAL% (
	GOTO :LOOP3START
)
SET /a COUNT = 0
:LOOP4START
SET /a COUNT=%COUNT%+1
SET /a PLAYERACCESSORY%COUNT%NUM = 0
IF %COUNT% LSS %ACCESSORYTOTAL% (
	GOTO :LOOP4START
)

:SHOPENTER
IF %REMOTEACCESS% EQU 0 (
	CALL :SETLOCATION
) ELSE (
	SET /a REMOTEACCESS = 0
)
IF !SHOPKEEPER%SHOPNUM%ALIVE! EQU 0 (
	CALL :SHOPKEEPERDEAD
	GOTO :EOF
)
IF %SHOPWELCOMESEEN% EQU 0 (
	CALL "%SHOPRESOURCEPATH%\shopwelcome.bat"
)
:SHOPWELCOME
IF %SHOPWELCOMESEEN% EQU 0 (
	CALL "%SHOPRESOURCEPATH%\shopwelcome.bat"
) ELSE (

	CALL "%SHOPRESOURCEPATH%\shopdisplay.bat"
	ECHO.
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: Welcome young traveller, what can I interest you in today?
	ECHO. 
)
ECHO. 1 - I'm looking for some Items
ECHO. 2 - Got any Weapons?
ECHO. 3 - Got any Armour?
ECHO. 4 - Got any Accessories?
ECHO. 5 - Can I sell things?
IF %SHOPNUM% EQU 1 (
	ECHO. 6 - Who you calling young? I'm not young
)
IF %TRAMPQUESTACTIVE% EQU 1 (
	ECHO. 7 - How do you feel about the guy who runs the temple?
)
ECHO. 0 - Thanks, I'll be back later
ECHO. 
:SHOPCHOICE
SET /P SHOPCHOICE=
ECHO.
IF "%SHOPCHOICE%" EQU "1" (
	CALL "%SHOPRESOURCEPATH%\itemshop.bat"
) ELSE IF "%SHOPCHOICE%" EQU "2" (
	SET TYPE=weapon
	CALL "%SHOPRESOURCEPATH%\equipmentshop.bat"
) ELSE IF "%SHOPCHOICE%" EQU "3" (
	SET TYPE=armour
	CALL "%SHOPRESOURCEPATH%\equipmentshop.bat"
) ELSE IF "%SHOPCHOICE%" EQU "4" (
	SET TYPE=accessory
	CALL "%SHOPRESOURCEPATH%\equipmentshop.bat"
) ELSE IF "%SHOPCHOICE%" EQU "5" (
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: You can indeed
	ECHO.
	CALL :WAITFORTWO
	CALL "%SHOPRESOURCEPATH%\shopsell.bat"
) ELSE IF "%SHOPCHOICE%" EQU "6" (
	IF %SHOPNUM% EQU 1 (
		CALL "%SHOPRESOURCEPATH%\shopchat.bat"
	) ELSE (
		GOTO :SHOPCHOICE
	)
) ELSE IF "%SHOPCHOICE%" EQU "7" (
	IF %TRAMPQUESTACTIVE% EQU 1 (
		CALL "%SHOPRESOURCEPATH%\templequestchat.bat"
		GOTO :EOF
	) ELSE (
		GOTO :SHOPCHOICE
	)
) ELSE IF "%SHOPCHOICE%" EQU "0" (
	ECHO !SHOPKEEPER%SHOPNUM%NAME!: See you soon^^!
	ECHO.
	CALL :WAITFORTWO
	CALL "%REMOTERESOURCEPATH%\shop.bat"
	GOTO :EOF
) ELSE (
	GOTO :SHOPCHOICE
)
GOTO :SHOPENTER

	
:SETLOCATION
IF /I %MAP% EQU town2 (
	SET /a SHOPNUM = 1
	SET /a PLAYERXCOORD = 3
	SET /a PLAYERYCOORD = 6
) ELSE IF /I %MAP% EQU town3 (
	SET /a SHOPNUM = 2
	SET /a PLAYERXCOORD = 4
	SET /a PLAYERYCOORD = 5
) ELSE IF /I %MAP% EQU town4 (
	SET /a SHOPNUM = 3
	SET /a PLAYERXCOORD = 6
	SET /a PLAYERYCOORD = 3
) ELSE IF /I %MAP% EQU town5 (
	SET /a SHOPNUM = 4
	SET /a PLAYERXCOORD = 8
	SET /a PLAYERYCOORD = 4
) ELSE IF /I %MAP% EQU town6 (
	SET /a SHOPNUM = 5
	SET /a PLAYERXCOORD = 3
	SET /a PLAYERYCOORD = 4
)
GOTO :EOF

:SHOPKEEPERDEAD
CALL :DEADDISPLAY1
ECHO. You enter the shop eager to purchase some new bits and bobs.
CALL :WAITFORTHREE
CALL :DEADDISPLAY2
ECHO. Then you remember that you killed the shopkeeper...
ECHO.
CALL :WAITFORTWO
CALL :DEADDISPLAY3
ECHO. Best get out of here before someone sees you
ECHO.
pause
GOTO :EOF


:DEADDISPLAY1
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                      ÚÄÄÄ¿                                                                         º
ECHO    º                      ³  O³                                                                         º
ECHO    º                      ³   ´                                                                         º
ECHO    º                      ÀÂÄÂÙ                                                                         º
ECHO    º                     ÚÄÙ ÀÄ¿                                                                        º
ECHO    º                     ³     ³                                                                        º
ECHO    º                     ³   ³ ³                                                                        º
ECHO    º                     ³   ³ ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³   ³ ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³   ³ ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ³   ³ ³                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                     ÀÂÄÄ³ÂÙ                                          ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³                                           ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ÚÄÄÂ¿ÚÄÄÄÄÄÄÄÄÄÄ¿                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ³X  ÀÙ          ÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ³   Ú¿  ÄÄÄÄÄÄÄÄÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º                      ³   ³   ÀÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÙ                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
GOTO :EOF

:DEADDISPLAY2
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º          ÚÄÄÄ¿                                                                                     º
ECHO    º          ³  O³                                                                                     º
ECHO    º          ³   ´                                                                                     º
ECHO    º          ÀÂÄÂÙ                                                                                     º
ECHO    º         ÚÄÙ ÀÄ¿                                                                                    º
ECHO    º         ³     ³                                                                                    º
ECHO    º         ³   ³ ³                                                                                    º
ECHO    º         ³   ³ ³                                                      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º         ³   ³ ³                                                      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º         ³   ³ ³                                                      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º         ³   ³ ³                                                      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º         ÀÂÄÄ³ÂÙ                                                      ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º          ³   ³                                                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º          ³   ³               ÚÄÄÂ¿ÚÄÄÄÄÄÄÄÄÄÄ¿                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º          ³   ³               ³X  ÀÙ          ÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º          ³   ³               ³   Ú¿  ÄÄÄÄÄÄÄÄÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º          ³   ³               ÀÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÙ                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
GOTO :EOF

:DEADDISPLAY3
CLS
ECHO.
ECHO    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    º                                                                                                    º
ECHO    ºÚÄÄÄ¿                                                                                               º
ECHO    º³  O³                                                                                               º
ECHO    º³   ´                                                                                               º
ECHO    ºÀÂÄÂÙ                                                                                               º
ECHO    ºÄÙ ÀÄ¿                                                                                              º
ECHO    º     ³                                                                                              º
ECHO    º   ³ ³                                                                                              º
ECHO    º   ³ ³                                                                ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º   ³ ³                                                                ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º   ³ ³                                                                ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º   ³ ³                                                                ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    ºÂÄÄ³ÂÙ                                                                ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º³   ³                                                                 ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º³   ³                         ÚÄÄÂ¿ÚÄÄÄÄÄÄÄÄÄÄ¿                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º³   ³                         ³X  ÀÙ          ÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º³   ³                         ³   Ú¿  ÄÄÄÄÄÄÄÄÃÄÄÄÄÄ                  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    º³   ³                         ÀÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÙ                       ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
ECHO    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
ECHO.
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
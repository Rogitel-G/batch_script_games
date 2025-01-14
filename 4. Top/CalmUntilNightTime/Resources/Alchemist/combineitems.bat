SET /a SPACESMAX = 38
CLS
:SLOTSET
CALL :SLOTNUM
IF %SLOTNUM% EQU 0 (
	GOTO :EOF
)
:NAMESET
CALL :NAMEITEM
IF %NAMEITEMBACK% EQU 1 (
	GOTO :SLOTSET
)
:ITEMNUMBERSET
CALL :ITEMNUMBER
IF %ITEMNUMBERBACK% EQU 1 (
	GOTO :NAMESET
)
:ITEM1SET
CALL :ITEM1
IF %ITEM1BACK% EQU 1 (
	GOTO :ITEMNUMBERSET
)
:ITEM2SET
CALL :ITEM2
IF %ITEM2BACK% EQU 1 (
	GOTO :ITEM1SET
)
IF %ITEMNUMBER% EQU 2 (
	GOTO :EFFECTSSET
)
:ITEM3SET
CALL :ITEM3
IF %ITEM3BACK% EQU 1 (
	GOTO :ITEM2SET
)
IF %ITEMNUMBER% EQU 3 (
	GOTO :EFFECTSSET
)
:ITEM4SET
CALL :ITEM4
IF %ITEM4BACK% EQU 1 (
	GOTO :ITEM3SET
)
IF %ITEMNUMBER% EQU 4 (
	GOTO :EFFECTSSET
)
:ITEM5SET
CALL :ITEM5
IF %ITEM5BACK% EQU 1 (
	GOTO :ITEM4SET
)
:EFFECTSSET
CALL :EFFECTS
:CONFIRMATIONSET
CALL :CONFIRMATION
IF %CONFIRMATIONBACK% EQU 1 (
	IF %ITEMNUMBER% EQU 2 (
		SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! + 1
		GOTO :ITEM2SET
	) ELSE IF %ITEMNUMBER% EQU 3 (
		SET /a PLAYERITEM%ITEM3%NUM = !PLAYERITEM%ITEM3%NUM! + 1
		GOTO :ITEM3SET
	) ELSE IF %ITEMNUMBER% EQU 4 (
		SET /a PLAYERITEM%ITEM4%NUM = !PLAYERITEM%ITEM4%NUM! + 1
		GOTO :ITEM4SET
	) ELSE IF %ITEMNUMBER% EQU 5 (
		SET /a PLAYERITEM%ITEM5%NUM = !PLAYERITEM%ITEM5%NUM! + 1
		GOTO :ITEM5SET
	)
)
GOTO :EOF














:SLOTNUM
CALL :INITIALISEBACKS
SET /a AVAILABLESLOTS = %PLAYERLVL%/10
IF %AVAILABLESLOTS% GTR 9 (
	SET /a AVAILABLESLOTS = 9
)
IF EXIST "%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat" (
	CALL "%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat"
)
CLS
ECHO.
IF %AVAILABLESLOTS% EQU 0 (
	ECHO %ALCHEMISTNAME%: Sorry you're not a high enough level to create items yet...
	ECHO.
	SET /a SLOTNUM = 0
	pause
	GOTO :EOF
) ELSE IF %AVAILABLESLOTS% EQU 1 (
	ECHO %ALCHEMISTNAME%: You can hold %AVAILABLESLOTS% custom item
) ELSE IF %AVAILABLESLOTS% GEQ 2 (	
	ECHO %ALCHEMISTNAME%: You can hold %AVAILABLESLOTS% custom items
)
ECHO.
ECHO            Select a custom item slot
ECHO.
IF %AVAILABLESLOTS% GEQ 1 (
ECHO. 1 - %ITEMSLOT1NAME%
)
IF %AVAILABLESLOTS% GEQ 2 (
ECHO. 2 - %ITEMSLOT2NAME%
)
IF %AVAILABLESLOTS% GEQ 3 (
ECHO. 3 - %ITEMSLOT3NAME%
)
IF %AVAILABLESLOTS% GEQ 4 (
ECHO. 4 - %ITEMSLOT4NAME%
)
IF %AVAILABLESLOTS% GEQ 5 (
ECHO. 5 - %ITEMSLOT5NAME%
)
IF %AVAILABLESLOTS% GEQ 6 (
ECHO. 6 - %ITEMSLOT6NAME%
)
IF %AVAILABLESLOTS% GEQ 7 (
ECHO. 7 - %ITEMSLOT7NAME%
)
IF %AVAILABLESLOTS% GEQ 8 (
ECHO. 8 - %ITEMSLOT8NAME%
)
IF %AVAILABLESLOTS% GEQ 9 (
ECHO. 9 - %ITEMSLOT9NAME%
)
ECHO. 0 - Back
ECHO.
:SLOTCHOICE
SET /P SLOTNUM=
ECHO.
IF "%SLOTNUM%" EQU "" (
	GOTO :SLOTCHOICE
)
IF %SLOTNUM% GTR %AVAILABLESLOTS% (
	GOTO :SLOTCHOICE
) ELSE IF %SLOTNUM% LSS 0 (
	GOTO :SLOTCHOICE
) ELSE IF %SLOTNUM% EQU 0 (
	GOTO :EOF
)
GOTO :EOF


:NAMEITEM
CLS
CALL :INITIALISEBACKS
ECHO.
ECHO %ALCHEMISTNAME%: What would you like to call your item? (1 word)
ECHO.
ECHO            0 to exit
ECHO.
SET /P ITEMNAME=
ECHO.
IF "%ITEMNAME%" EQU "" (
	GOTO :NAMEITEM
) ELSE IF "%ITEMNAME%" EQU "0" (
	SET /a NAMEITEMBACK = 1
)
GOTO :EOF

:ITEMNUMBER
CLS
CALL :INITIALISEBACKS
ECHO.
ECHO. !SPECIALITEM%CMBSTONEID%NAME!s - !PLAYERSPECIALITEM%CMBSTONEID%NUM!
ECHO. Gil - %PLAYERGIL%
ECHO.
ECHO %ALCHEMISTNAME%: How many items would you like to combine?
ECHO.
ECHO. 1 - Just combine two items for me this time      1 !SPECIALITEM%CMBSTONEID%NAME!
IF %BEATALCHEMISTMON1% EQU 1 (
	ECHO. 2 - I'd like to combine 3 items please           2 !SPECIALITEM%CMBSTONEID%NAME!s
)
IF %BEATALCHEMISTMON2% EQU 1 (
	ECHO. 3 - I'd like to combine 4 items please           3 !SPECIALITEM%CMBSTONEID%NAME!s
)
IF %BEATALCHEMISTMON3% EQU 1 (
	ECHO. 4 - I'd like to combine 5 items please           4 !SPECIALITEM%CMBSTONEID%NAME!s
)
IF %BEATALCHEMISTMON3% EQU 1 (
	ECHO. 5 - The number selections for this are just awkward, what gives?
)
ECHO. 0 - Back
ECHO.
:ITEMNUMBERCHOICE
SET /P ITEMNUMBERCHOICE=
ECHO.
IF "%ITEMNUMBERCHOICE%" EQU "1" (
	SET /a ITEMNUMBER = 2
) ELSE IF "%ITEMNUMBERCHOICE%" EQU "2" (
	IF %BEATALCHEMISTMON1% EQU 1 (
		SET /a ITEMNUMBER = 3
	) ELSE (
		GOTO :ITEMNUMBERCHOICE
	)
) ELSE IF "%ITEMNUMBERCHOICE%" EQU "3" (
	IF %BEATALCHEMISTMON2% EQU 1 (
		SET /a ITEMNUMBER = 4
	) ELSE (
		GOTO :ITEMNUMBERCHOICE
	)
) ELSE IF "%ITEMNUMBERCHOICE%" EQU "4" (
	IF %BEATALCHEMISTMON3% EQU 1 (
		SET /a ITEMNUMBER = 5
	) ELSE (
		GOTO :ITEMNUMBERCHOICE
	)
) ELSE IF "%ITEMNUMBERCHOICE%" EQU "5" (
	IF %BEATALCHEMISTMON3% EQU 1 (
		ECHO %ALCHEMISTNAME%: Oh I'm sorry, are the number conventions better in the item
		ECHO            creation section of your game that's made entirely of batch code?
		ECHO.
		CALL :WAITFORTHREE
		ECHO            ...Wanker. Choose again
		ECHO.
		CALL :WAITFORTWO
		GOTO :ITEMNUMBER
	) ELSE (
		GOTO :ITEMNUMBERCHOICE
	)
) ELSE IF "%ITEMNUMBERCHOICE%" EQU "0" (
	SET /a ITEMNUMBERBACK = 1
) ELSE (
	GOTO :ITEMNUMBERCHOICE
)
SET /a COMBINESTONECOST = %ITEMNUMBER% - 1
GOTO :EOF


:ITEM1
CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistcombine.bat"
:ITEM1CHOOSEITEM
CLS
ECHO.
ECHO Choose the first Item you want to combine
ECHO.
IF %DYNAMICITEMTOTAL% EQU 0 (
	GOTO :ITEM1NOITEMS
)
SET /a COUNT = 0
:ITEM1LOOPSTART
SET /a COUNT = %COUNT%+1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICITEM%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICITEM%COUNT%NAME!!SPACES%SPACENUM%!!DYNAMICITEM%COUNT%NUM! Remaining
IF %COUNT% LSS %DYNAMICITEMTOTAL% (
	GOTO :ITEM1LOOPSTART
) 
:ITEM1NOITEMS
ECHO. 0 - Back
ECHO.
SET /P DYNAMICITEMCHOICE=
ECHO.
IF "%DYNAMICITEMCHOICE%" EQU "" (
	ECHO Stop it dickhead
	ECHO.
	CALL :WAITFORONE
	CALL :ITEM1CHOOSEITEM
) 
IF "%DYNAMICITEMCHOICE%" NEQ "" (
	IF %DYNAMICITEMCHOICE% EQU 0 (
		SET /a ITEM1BACK = 1
		GOTO :EOF
	) ELSE IF %DYNAMICITEMCHOICE% GTR %DYNAMICITEMTOTAL% (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM1CHOOSEITEM
	) ELSE IF %DYNAMICITEMCHOICE% LSS 0 (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM1CHOOSEITEM
	)
	IF !DYNAMICITEM%DYNAMICITEMCHOICE%NUM! LSS 1 (
		ECHO. You do not have any of those
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM1CHOOSEITEM
	)
)
CALL :ITEM1IDCOMPARE
CALL :ITEM1REDUCEITEMNUMBER
GOTO :EOF


:ITEM1IDCOMPARE
SET /a COUNT = 0
:ITEM1LOOP2START
SET /a COUNT=%COUNT%+1
IF "!ITEM%COUNT%NAME!" EQU "!DYNAMICITEM%DYNAMICITEMCHOICE%NAME!" (
	SET /a ITEM1 = %COUNT%
	GOTO :EOF
)
IF %COUNT% LSS %ITEMTOTAL% (
	CALL :ITEM1LOOP2START
)
GOTO :EOF

:ITEM1REDUCEITEMNUMBER
SET /a PLAYERITEM%ITEM1%NUM = !PLAYERITEM%ITEM1%NUM! - 1
GOTO :EOF




:ITEM2
CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistcombine.bat"
:ITEM2CHOOSEITEM
CLS
ECHO.
ECHO Choose the second Item you want to combine
ECHO.
IF %DYNAMICITEMTOTAL% EQU 0 (
	GOTO :ITEM2NOITEMS
)
SET /a COUNT = 0
:ITEM2LOOPSTART
SET /a COUNT = %COUNT%+1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICITEM%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICITEM%COUNT%NAME!!SPACES%SPACENUM%!!DYNAMICITEM%COUNT%NUM! Remaining
IF %COUNT% LSS %DYNAMICITEMTOTAL% (
	GOTO :ITEM2LOOPSTART
) 
:ITEM2NOITEMS
ECHO. 0 - Back
ECHO.
SET /P DYNAMICITEMCHOICE=
ECHO.
IF "%DYNAMICITEMCHOICE%" EQU "" (
	ECHO Stop it dickhead
	ECHO.
	CALL :WAITFORONE
	CALL :ITEM2CHOOSEITEM
) 
IF "%DYNAMICITEMCHOICE%" NEQ "" (
	IF %DYNAMICITEMCHOICE% EQU 0 (
		SET /a ITEM2BACK = 1
		SET /a PLAYERITEM%ITEM1%NUM = !PLAYERITEM%ITEM1%NUM! + 1
		GOTO :EOF
	) ELSE IF %DYNAMICITEMCHOICE% GTR %DYNAMICITEMTOTAL% (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM2CHOOSEITEM
	) ELSE IF %DYNAMICITEMCHOICE% LSS 0 (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM2CHOOSEITEM
	)
	IF !DYNAMICITEM%DYNAMICITEMCHOICE%NUM! LSS 1 (
		ECHO. You do not have any of those
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM2CHOOSEITEM
	)
)
CALL :ITEM2IDCOMPARE
CALL :ITEM2REDUCEITEMNUMBER
GOTO :EOF


:ITEM2IDCOMPARE
SET /a COUNT = 0
:ITEM2LOOP2START
SET /a COUNT=%COUNT%+1
IF "!ITEM%COUNT%NAME!" EQU "!DYNAMICITEM%DYNAMICITEMCHOICE%NAME!" (
	SET /a ITEM2 = %COUNT%
	GOTO :EOF
)
IF %COUNT% LSS %ITEMTOTAL% (
	CALL :ITEM2LOOP2START
)
GOTO :EOF

:ITEM2REDUCEITEMNUMBER
SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! - 1
GOTO :EOF



:ITEM3
CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistcombine.bat"
:ITEM3CHOOSEITEM
CLS
ECHO.
ECHO Choose the third Item you want to combine
ECHO.
IF %DYNAMICITEMTOTAL% EQU 0 (
	GOTO :ITEM3NOITEMS
)
SET /a COUNT = 0
:ITEM3LOOPSTART
SET /a COUNT = %COUNT%+1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICITEM%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICITEM%COUNT%NAME!!SPACES%SPACENUM%!!DYNAMICITEM%COUNT%NUM! Remaining
IF %COUNT% LSS %DYNAMICITEMTOTAL% (
	GOTO :ITEM3LOOPSTART
) 
:ITEM3NOITEMS
ECHO. 0 - Back
ECHO.
SET /P DYNAMICITEMCHOICE=
ECHO.
IF "%DYNAMICITEMCHOICE%" EQU "" (
	ECHO Stop it dickhead
	ECHO.
	CALL :WAITFORONE
	CALL :ITEM3CHOOSEITEM
) 
IF "%DYNAMICITEMCHOICE%" NEQ "" (
	IF %DYNAMICITEMCHOICE% EQU 0 (
		SET /a ITEM3BACK = 1
		SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! + 1
		GOTO :EOF
	) ELSE IF %DYNAMICITEMCHOICE% GTR %DYNAMICITEMTOTAL% (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM3CHOOSEITEM
	) ELSE IF %DYNAMICITEMCHOICE% LSS 0 (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM3CHOOSEITEM
	)
	IF !DYNAMICITEM%DYNAMICITEMCHOICE%NUM! LSS 1 (
		ECHO. You do not have any of those
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM3CHOOSEITEM
	)
)
CALL :ITEM3IDCOMPARE
CALL :ITEM3REDUCEITEMNUMBER
GOTO :EOF


:ITEM3IDCOMPARE
SET /a COUNT = 0
:ITEM3LOOP2START
SET /a COUNT=%COUNT%+1
IF "!ITEM%COUNT%NAME!" EQU "!DYNAMICITEM%DYNAMICITEMCHOICE%NAME!" (
	SET /a ITEM3 = %COUNT%
	GOTO :EOF
)
IF %COUNT% LSS %ITEMTOTAL% (
	CALL :ITEM3LOOP2START
)
GOTO :EOF

:ITEM3REDUCEITEMNUMBER
SET /a PLAYERITEM%ITEM3%NUM = !PLAYERITEM%ITEM3%NUM! - 1
GOTO :EOF



:ITEM4
CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistcombine.bat"
:ITEM4CHOOSEITEM
CLS
ECHO.
ECHO Choose the fourth Item you want to combine
ECHO.
IF %DYNAMICITEMTOTAL% EQU 0 (
	GOTO :ITEM4NOITEMS
)
SET /a COUNT = 0
:ITEM4LOOPSTART
SET /a COUNT = %COUNT%+1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICITEM%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICITEM%COUNT%NAME!!SPACES%SPACENUM%!!DYNAMICITEM%COUNT%NUM! Remaining
IF %COUNT% LSS %DYNAMICITEMTOTAL% (
	GOTO :ITEM4LOOPSTART
) 
:ITEM4NOITEMS
ECHO. 0 - Back
ECHO.
SET /P DYNAMICITEMCHOICE=
ECHO.
IF "%DYNAMICITEMCHOICE%" EQU "" (
	ECHO Stop it dickhead
	ECHO.
	CALL :WAITFORONE
	CALL :ITEM4CHOOSEITEM
) 
IF "%DYNAMICITEMCHOICE%" NEQ "" (
	IF %DYNAMICITEMCHOICE% EQU 0 (
		SET /a ITEM4BACK = 1
		SET /a PLAYERITEM%ITEM3%NUM = !PLAYERITEM%ITEM3%NUM! + 1
		GOTO :EOF
	) ELSE IF %DYNAMICITEMCHOICE% GTR %DYNAMICITEMTOTAL% (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM4CHOOSEITEM
	) ELSE IF %DYNAMICITEMCHOICE% LSS 0 (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM4CHOOSEITEM
	)
	IF !DYNAMICITEM%DYNAMICITEMCHOICE%NUM! LSS 1 (
		ECHO. You do not have any of those
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM4CHOOSEITEM
	)
)
CALL :ITEM4IDCOMPARE
CALL :ITEM4REDUCEITEMNUMBER
GOTO :EOF


:ITEM4IDCOMPARE
SET /a COUNT = 0
:ITEM4LOOP2START
SET /a COUNT=%COUNT%+1
IF "!ITEM%COUNT%NAME!" EQU "!DYNAMICITEM%DYNAMICITEMCHOICE%NAME!" (
	SET /a ITEM4 = %COUNT%
	GOTO :EOF
)
IF %COUNT% LSS %ITEMTOTAL% (
	CALL :ITEM4LOOP2START
)
GOTO :EOF

:ITEM4REDUCEITEMNUMBER
SET /a PLAYERITEM%ITEM4%NUM = !PLAYERITEM%ITEM4%NUM! - 1
GOTO :EOF




:ITEM5
CALL "%DYNAMICRESOURCEPATH%\dynamicitemlistcombine.bat"
:ITEM5CHOOSEITEM
CLS
ECHO.
ECHO Choose the fifth Item you want to combine
ECHO.
IF %DYNAMICITEMTOTAL% EQU 0 (
	GOTO :ITEM5NOITEMS
)
SET /a COUNT = 0
:ITEM5LOOPSTART
SET /a COUNT = %COUNT%+1
SET /a SPACENUM = %SPACESMAX% - !DYNAMICITEM%COUNT%NAMELENGTH!
ECHO. %COUNT% - !DYNAMICITEM%COUNT%NAME!!SPACES%SPACENUM%!!DYNAMICITEM%COUNT%NUM! Remaining
IF %COUNT% LSS %DYNAMICITEMTOTAL% (
	GOTO :ITEM5LOOPSTART
) 
:ITEM5NOITEMS
ECHO. 0 - Back
ECHO.
SET /P DYNAMICITEMCHOICE=
ECHO.
IF "%DYNAMICITEMCHOICE%" EQU "" (
	ECHO Stop it dickhead
	ECHO.
	CALL :WAITFORONE
	CALL :ITEM5CHOOSEITEM
) 
IF "%DYNAMICITEMCHOICE%" NEQ "" (
	IF %DYNAMICITEMCHOICE% EQU 0 (
		SET /a ITEM5BACK = 1
		SET /a PLAYERITEM%ITEM4%NUM = !PLAYERITEM%ITEM4%NUM! + 1
		GOTO :EOF
	) ELSE IF %DYNAMICITEMCHOICE% GTR %DYNAMICITEMTOTAL% (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM5CHOOSEITEM
	) ELSE IF %DYNAMICITEMCHOICE% LSS 0 (
		ECHO Stop it dickhead
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM5CHOOSEITEM
	)
	IF !DYNAMICITEM%DYNAMICITEMCHOICE%NUM! LSS 1 (
		ECHO. You do not have any of those
		ECHO.
		CALL :WAITFORONE
		CALL :ITEM5CHOOSEITEM
	)
)
CALL :ITEM5IDCOMPARE
CALL :ITEM5REDUCEITEMNUMBER
GOTO :EOF


:ITEM5IDCOMPARE
SET /a COUNT = 0
:ITEM5LOOP2START
SET /a COUNT=%COUNT%+1
IF "!ITEM%COUNT%NAME!" EQU "!DYNAMICITEM%DYNAMICITEMCHOICE%NAME!" (
	SET /a ITEM5 = %COUNT%
	GOTO :EOF
)
IF %COUNT% LSS %ITEMTOTAL% (
	CALL :ITEM5LOOP2START
)
GOTO :EOF

:ITEM5REDUCEITEMNUMBER
SET /a PLAYERITEM%ITEM5%NUM = !PLAYERITEM%ITEM5%NUM! - 1
GOTO :EOF



:EFFECTS
SET /a EFFECTSNUM = 0
SET /a ITEMNUM = 0
:EFFECTLOOP1START
SET /a ITEMNUM = %ITEMNUM%+1
SET TEMP=!ITEM%ITEMNUM%!
SET /a EFFECTSNUM = %EFFECTSNUM% + !ITEM%TEMP%EFFECTSNUM!
IF %ITEMNUM% LSS %ITEMNUMBER% (
	GOTO :EFFECTLOOP1START
)
SET /a EFFECTNUM = 0
SET /a ITEMEFFECTNUM = 0
SET /a ITEMNUM = 1
:EFFECTLOOP2START
SET /a ITEMID = !ITEM%ITEMNUM%!
SET /a EFFECTNUM = %EFFECTNUM%+1
SET /a ITEMEFFECTNUM = %ITEMEFFECTNUM%+1
SET ITEMEFFECT%EFFECTNUM%TYPE=!ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%TYPE!
SET ITEMEFFECT%EFFECTNUM%TARGET=!ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%TARGET!
SET ITEMEFFECT%EFFECTNUM%ATTRIBUTE=!ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%ATTRIBUTE!
SET ITEMEFFECT%EFFECTNUM%ELEMENT=!ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%ELEMENT!
SET /a ITEMEFFECT%EFFECTNUM%TURNCOUNT = !ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%TURNCOUNT!
SET /a ITEMEFFECT%EFFECTNUM%AMOUNT = !ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%AMOUNT!
SET /a ITEMEFFECT%EFFECTNUM%FIXEDAMOUNT = !ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%FIXEDAMOUNT!
SET ITEMEFFECT%EFFECTNUM%TEXT=!ITEM%ITEMID%EFFECT%ITEMEFFECTNUM%TEXT!
IF %ITEMEFFECTNUM% LSS !ITEM%ITEMID%EFFECTSNUM! (
	GOTO :EFFECTLOOP2START
) ELSE IF %ITEMNUM% LSS %ITEMNUMBER% (
	SET /a ITEMNUM = %ITEMNUM%+1
	SET /a ITEMEFFECTNUM = 0
	GOTO :EFFECTLOOP2START
)
GOTO :EOF



:CONFIRMATION
CALL :INITIALISEBACKS
CLS
ECHO.
ECHO %ALCHEMISTNAME%: This will combine the effects of the following items
ECHO.
SET /a COUNT = 0
:CONFIRMATIONLOOPSTART
SET /a COUNT = %COUNT%+1
SET TEMP=!ITEM%COUNT%!
ECHO. !ITEM%TEMP%NAME!
IF %COUNT% LSS %ITEMNUMBER% (
	GOTO :CONFIRMATIONLOOPSTART
)
ECHO.
ECHO %ALCHEMISTNAME%: Would you like to create %ITEMNAME%? It'll cost %COMBINESTONECOST% !SPECIALITEM%CMBSTONEID%NAME!s
ECHO.
ECHO. !SPECIALITEM%CMBSTONEID%NAME!s - !PLAYERSPECIALITEM%CMBSTONEID%NUM!
ECHO.
ECHO. 1 - Yes
ECHO. 2 - No
ECHO. 0 - Back
ECHO.
:CONFIRMATIONCHOICE
SET /P CONFIRMATIONCHOICE=
IF "%CONFIRMATIONCHOICE%" EQU "1" (
	IF !PLAYERSPECIALITEM%CMBSTONEID%NUM! GEQ %COMBINESTONECOST% (
		CALL :CREATEITEM
	) ELSE (
		ECHO %ALCHEMISTNAME%: You don't have enough !SPECIALITEM%CMBSTONEID%NAME!s
		ECHO.
		CALL :WAITFORTHREE
		GOTO :CONFIRMATION
	)
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "2" (
	ECHO %ALCHEMISTNAME%: Ok, come back if you change your mind
	CALL :RETURNITEMS
) ELSE IF "%CONFIRMATIONCHOICE%" EQU "0" (
	SET /a CONFIRMATIONBACK = 1
) ELSE (
	GOTO :CONFIRMATIONCHOICE
)
GOTO :EOF



:CREATEITEM
SET /a PLAYERSPECIALITEM%CMBSTONEID%NUM = !PLAYERSPECIALITEM%CMBSTONEID%NUM!-%COMBINESTONECOST%
CALL :ITEMNAMELENGTH
CALL :SETGENERAL


:SETITEM
ECHO SET ITEMNAME=%ITEMNAME%>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET /a ITEMEFFECTSNUM = %EFFECTSNUM% >> "%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
SET /a EFFECTNUM = 0
:SETLOOP1START
SET /a EFFECTNUM = %EFFECTNUM% + 1
ECHO SET ITEMEFFECT%EFFECTNUM%TYPE=!ITEMEFFECT%EFFECTNUM%TYPE!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET ITEMEFFECT%EFFECTNUM%TARGET=!ITEMEFFECT%EFFECTNUM%TARGET!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET ITEMEFFECT%EFFECTNUM%ATTRIBUTE=!ITEMEFFECT%EFFECTNUM%ATTRIBUTE!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET ITEMEFFECT%EFFECTNUM%ELEMENT=!ITEMEFFECT%EFFECTNUM%ELEMENT!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET /a ITEMEFFECT%EFFECTNUM%TURNCOUNT = !ITEMEFFECT%EFFECTNUM%TURNCOUNT!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET /a ITEMEFFECT%EFFECTNUM%AMOUNT = !ITEMEFFECT%EFFECTNUM%AMOUNT!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET /a ITEMEFFECT%EFFECTNUM%FIXEDAMOUNT = !ITEMEFFECT%EFFECTNUM%FIXEDAMOUNT!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
ECHO SET ITEMEFFECT%EFFECTNUM%TEXT=!ITEMEFFECT%EFFECTNUM%TEXT!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitem%SLOTNUM%.bat"
IF %EFFECTNUM% LSS %EFFECTSNUM% (
	GOTO :SETLOOP1START
)
SET /a COUNT = 0
:CONSTITUENTSLOOP
SET /a COUNT = %COUNT% + 1
ECHO SET /a ITEMSLOT%SLOTNUM%CONSTITUENT%COUNT% = !ITEM%COUNT%!>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat"
IF %COUNT% LSS %ITEMNUMBER% (
	GOTO :CONSTITUENTSLOOP
)
ECHO SET /a ITEMSLOT%SLOTNUM%CONSTITUENTS = %ITEMNUMBER% >> "%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat"
SET /a CUSTOMITEMSUNLOCKED = 1
ECHO.
ECHO %ITEMNAME% created successfully^^!
ECHO.
pause
GOTO :EOF

:ITEMNAMELENGTH
SET /a ITEMNAMELENGTH = 0
:ITEMNAMELOOPSTART
SET /a ITEMNAMELENGTH += 1
SET SUBSTR=!ITEMNAME:~%ITEMNAMELENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :ITEMNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %ITEMNAMELENGTH% + 1
	SET SUBSTR=!ITEM:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :ITEMNAMELOOPSTART
	)
)
GOTO :EOF

:SETGENERAL
ECHO SET ITEMSLOT%SLOTNUM%NAME=%ITEMNAME%>>"%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat"
ECHO SET /a ITEMSLOT%SLOTNUM%NAMELENGTH=%ITEMNAMELENGTH% >> "%CUSTOMITEMRESOURCEPATH%\Temp\customitemlist.bat"
GOTO :EOF

:RETURNITEMS
IF %ITEMNUMBER% EQU 2 (
	SET /a PLAYERITEM%ITEM1%NUM = !PLAYERITEM%ITEM1%NUM! + 1
	SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! + 1
) ELSE IF %ITEMNUMBER% EQU 3 (
	SET /a PLAYERITEM%ITEM1%NUM = !PLAYERITEM%ITEM1%NUM! + 1
	SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! + 1
	SET /a PLAYERITEM%ITEM3%NUM = !PLAYERITEM%ITEM3%NUM! + 1
) ELSE IF %ITEMNUMBER% EQU 4 (
	SET /a PLAYERITEM%ITEM1%NUM = !PLAYERITEM%ITEM1%NUM! + 1
	SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! + 1
	SET /a PLAYERITEM%ITEM3%NUM = !PLAYERITEM%ITEM3%NUM! + 1
	SET /a PLAYERITEM%ITEM4%NUM = !PLAYERITEM%ITEM4%NUM! + 1
) ELSE IF %ITEMNUMBER% EQU 5 (
	SET /a PLAYERITEM%ITEM1%NUM = !PLAYERITEM%ITEM1%NUM! + 1
	SET /a PLAYERITEM%ITEM2%NUM = !PLAYERITEM%ITEM2%NUM! + 1
	SET /a PLAYERITEM%ITEM3%NUM = !PLAYERITEM%ITEM3%NUM! + 1
	SET /a PLAYERITEM%ITEM4%NUM = !PLAYERITEM%ITEM4%NUM! + 1
	SET /a PLAYERITEM%ITEM5%NUM = !PLAYERITEM%ITEM5%NUM! + 1
)
GOTO :EOF



:INITIALISEBACKS
SET /a NAMEITEMBACK = 0
SET /a ITEMNUMBERBACK = 0
SET /a ITEM1BACK = 0
SET /a ITEM2BACK = 0
SET /a ITEM3BACK = 0
SET /a ITEM4BACK = 0
SET /a ITEM5BACK = 0
SET /a CONFIRMATIONBACK = 0
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


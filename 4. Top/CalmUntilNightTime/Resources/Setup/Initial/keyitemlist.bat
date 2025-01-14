SET /a MINNAMELENGTH = 8
::SET /a MINNAMELENGTH = 1
SET /a COUNT = 0

:KEYITEM1
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Tramp's Eye
SET KEYITEM%COUNT%DESCRIPTION=For some reason, this allows you to enter the cave
SET KEYITEM%COUNT%NICKNAME=TEYE
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM2
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Shopkeeper's Eye
SET KEYITEM%COUNT%DESCRIPTION=This is the eye of the shopkeeper in the first town
SET KEYITEM%COUNT%NICKNAME=SKEYE
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM3
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Mine Key
SET KEYITEM%COUNT%DESCRIPTION=Key to unlock the door to the mine
SET KEYITEM%COUNT%NICKNAME=MINEKEY
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Casino Boss' Ear
SET KEYITEM%COUNT%DESCRIPTION=Proof that you run this town
SET KEYITEM%COUNT%NICKNAME=CBEAR
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Teleportation Stone
SET KEYITEM%COUNT%DESCRIPTION=Allows you to access teleportation devices through the menu
SET KEYITEM%COUNT%NICKNAME=TELESTONE
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Warrior Stone
SET KEYITEM%COUNT%DESCRIPTION=Used to open the portal to hell, also increases your STR and END
SET KEYITEM%COUNT%NICKNAME=MAGSTONE1
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Mage Stone
SET KEYITEM%COUNT%DESCRIPTION=Used to open the portal to hell, also increases your MAG and SPR
SET KEYITEM%COUNT%NICKNAME=MAGSTONE2
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Thief Stone
SET KEYITEM%COUNT%DESCRIPTION=Used to open the portal to hell, also increases your ACC and EVA
SET KEYITEM%COUNT%NICKNAME=MAGSTONE3
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Other Stone
SET KEYITEM%COUNT%DESCRIPTION=Used to open the portal to hell, also increases your SPD and LCK
SET KEYITEM%COUNT%NICKNAME=MAGSTONE4
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%

:KEYITEM4
SET /a COUNT = %COUNT%+1
SET KEYITEM%COUNT%NAME=Conquerer of Nightmares
SET KEYITEM%COUNT%DESCRIPTION=You defeated your nightmares on Hard mode. Well done. Read a book.
SET KEYITEM%COUNT%NICKNAME=NIGHTMAREKEY
SET /a !KEYITEM%COUNT%NICKNAME!ID = %COUNT%


SET /a KEYITEMTOTAL = %COUNT%






:LENGTHCALCULATIONS
SET /a COUNT = 0
:KEYITEMNAMELENGTH
SET /a COUNT = %COUNT% + 1
SET /a KEYITEM%COUNT%NAMELENGTH = %MINNAMELENGTH% - 1
:KEYITEMNAMELOOPSTART
SET /a KEYITEM%COUNT%NAMELENGTH += 1
SET TEMP1=!KEYITEM%COUNT%NAMELENGTH!
SET SUBSTR=!KEYITEM%COUNT%NAME:~%TEMP1%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :KEYITEMNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = !KEYITEM%COUNT%NAMELENGTH! + 1
	SET SUBSTR=!KEYITEM%COUNT%NAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :KEYITEMNAMELOOPSTART
	)
)
IF %COUNT% LSS %KEYITEMTOTAL% (
	GOTO :KEYITEMNAMELENGTH
)
GOTO :EOF
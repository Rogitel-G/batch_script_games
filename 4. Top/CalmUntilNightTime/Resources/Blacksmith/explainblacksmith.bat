:EXPLAINBLACKSMTIH
CLS
ECHO.
ECHO %BLACKSMITHNAME%: What would you like me to explain?
ECHO.
ECHO. 1 - Customising Weapons
ECHO. 2 - Customising Armour
ECHO. 3 - Customising Accessories
ECHO. 4 - Salvaging Weapons
ECHO. 5 - Destroying Armour
ECHO. 6 - Salvaging Accessories
ECHO. 0 - Back
ECHO.
:CHOICE
SET /P CHOICE=
ECHO.
IF "%CHOICE%" EQU "1" (
	CALL :CUSTOMWEAPONS
) ELSE IF "%CHOICE%" EQU "2" (
	CALL :CUSTOMARMOUR
) ELSE IF "%CHOICE%" EQU "3" (
	CALL :CUSTOMACCESSORIES
) ELSE IF "%CHOICE%" EQU "4" (
	CALL :SALVAGEWEAPONS
) ELSE IF "%CHOICE%" EQU "5" (
	CALL :DESTROYARMOUR
) ELSE IF "%CHOICE%" EQU "6" (
	CALL :SALVAGEACCESSORIES
) ELSE IF "%CHOICE%" EQU "0" (
	GOTO :EOF
) ELSE (
	GOTO :CHOICE
)
GOTO :EXPLAINBLACKSMITH

:CUSTOMWEAPONS
CLS
ECHO.
ECHO %BLACKSMITHNAME%: When you create a custom weapon you'll first need to choose a slot.
ECHO             The number of slots you have available is related to your level.
ECHO.
CALL :WAITFORTHREE
ECHO             If you choose an empty slot then you'll need to give a name to your custom
ECHO             weapon and choose a base weapon to customise.
ECHO.
CALL :WAITFORTHREE
ECHO             Remember that you'll lose this weapon as it will form the basis of your
ECHO             custom one^^!
ECHO.
CALL :WAITFORTHREE
ECHO             All the stats and skills of the base weapon will be maintained, you'll
ECHO             just need to add to them.
ECHO.
CALL :WAITFORTHREE
ECHO             If you choose a slot that's already got a custom weapon in it then you'll
ECHO             just be given the option to add stats and skills, you won't be able to rename
ECHO             the weapon and you won't need to choose a base weapon.
ECHO.
pause
ECHO.
ECHO             You can increase the Strength, Magic and Accuracy of a weapon.
ECHO.
CALL :WAITFORTHREE
ECHO             Each stat point you add will cost gil and the equivalent stat stone
ECHO.
CALL :WAITFORTHREE
ECHO             For example, to add one point of strength to a weapon you'll need 1 !SPECIALITEM%STRSTONEID%NAME!
ECHO             and enough gil
ECHO.
pause
ECHO.
ECHO             You can also add skills to a weapon if you have the correct skill stones
ECHO             and some gil
ECHO.
CALL :WAITFORTHREE
ECHO             If you've got plenty of gil then this is worth doing, as you can salvage
ECHO             your custom weapons and get back any skill stones that you imbue your
ECHO             your weapons with.
ECHO.
CALL :WAITFORTHREE
ECHO             If you want to know more about salvaging weapons, just ask^^!
ECHO.
SET /P SECRET=Press any key to continue . . . 
ECHO.
IF /I "%SECRET%" EQU "your" (
	CALL :SECRETUNLOCKED
)
ECHO.
GOTO :EOF

:SECRETUNLOCKED
ECHO HERE^^!
pause
GOTO :EOF

:CUSTOMARMOUR
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This is quite similar to customising weapons, you can create a new
ECHO             custom piece of armour or further customise an existing custom one.
ECHO.
ECHO             Similarly to weapons, you can increase the stats of your custom armour
ECHO             using the relevant stat stones and some gil.
ECHO.
ECHO             The main difference between customising armour and weapons is that
ECHO             custom armour can't have associated skills. Instead, custom armour has
ECHO             resistances to elements or status ailments.
ECHO.
ECHO             When adjusting the elemental properties of a piece of armour, you can
ECHO             remove weaknesses and add strengths/immunities/absorption. When adjusting
ECHO             status properties you can add immunities to armour.
ECHO.
ECHO             It's theoretically possible to have armour that absorbs all elements and
ECHO             make you immune to all status ailments^^!
ECHO.
pause
GOTO :EOF

:CUSTOMACCESSORIES
CLS
ECHO.
ECHO %BLACKSMITHNAME%: This is quite similar to customising weapons, you can create a new
ECHO             custom accessory or further customise an existing custom one.
ECHO.
ECHO             Similarly to weapons, you can increase the stats of your custom accessory
ECHO             using the relevant stat stones and some gil.
ECHO.
ECHO             The main difference between customising accessories and weapons is that
ECHO             custom accessories can't have associated skills. Instead, custom accessories
ECHO             have associated special abilities
ECHO.
ECHO             Some special abilities are incredibly powerful and you can add as many as you
ECHO             like to your custom accessories. Powerful custom accessories are arguably the
ECHO             equipment in the game^^!
pause
GOTO :EOF

:SALVAGEWEAPONS
CLS
ECHO.
ECHO %BLACKSMITHNAME%: You can destroy custom weapons and salvage skill stones from them.
ECHO.
ECHO             For each skill the custom weapon has you will get 1 corresponding skill
ECHO             stone back when you salvage the weapon.
ECHO.
ECHO             Be careful though,  you won't get any stat stones back during the salvage.
ECHO.
pause
GOTO :EOF

:DESTROYARMOUR
CLS
ECHO.
ECHO %BLACKSMITHNAME%: You can destroy custom armour if you really want to. You can't get anything back
ECHO             from destroying armour though so I wouldn't really recommend it unless you have
ECHO             no more empty slots and can't stand any of the names that your custom armour have.
ECHO.
pause
GOTO :EOF

:SALVAGEACCESSORIES
CLS
ECHO.
ECHO %BLACKSMITHNAME%: You can destroy custom accessories and salvage special stones from them.
ECHO.
ECHO             For each special the custom accessory has you will get 1 corresponding special
ECHO             stone back when you salvage the accessory.
ECHO.
ECHO             Be careful though,  you won't get any stat stones back during the salvage.
ECHO.
pause
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
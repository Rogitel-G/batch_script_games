SET RESOURCEPATH=%GAMEPATH%\Resources
SET INITIALRESOURCEPATH=%RESOURCEPATH%\Setup\Initial
SET SETUPRESOURCEPATH=%RESOURCEPATH%\Setup
SET NEWRESOURCEPATH=%RESOURCEPATH%\Setup\New
SET OPTIONSRESOURCEPATH=%RESOURCEPATH%\Options
SET DYNAMICRESOURCEPATH=%RESOURCEPATH%\Dynamic
SET MAPRESOURCEPATH=%RESOURCEPATH%\Map
SET BATTLERESOURCEPATH=%RESOURCEPATH%\Battle
SET BATTLEACTIONRESOURCEPATH=%RESOURCEPATH%\Battle\Action
SET BATTLECHOICERESOURCEPATH=%RESOURCEPATH%\Battle\Choice
SET BATTLEDISPLAYRESOURCEPATH=%RESOURCEPATH%\Battle\Display
SET BATTLESTARTRESOURCEPATH=%RESOURCEPATH%\Battle\Start
SET BATTLETURNSTARTRESOURCEPATH=%RESOURCEPATH%\Battle\Turnstart
SET BATTLESTATUSRESOURCEPATH=%RESOURCEPATH%\Battle\Turnstart\Status
SET BATTLEENDRESOURCEPATH=%RESOURCEPATH%\Battle\End
SET SHOPRESOURCEPATH=%RESOURCEPATH%\Shop
SET TEMPLERESOURCEPATH=%RESOURCEPATH%\Temple
SET CASINORESOURCEPATH=%RESOURCEPATH%\Casino
SET CAVERESOURCEPATH=%RESOURCEPATH%\Cave
SET CASTLERESOURCEPATH=%RESOURCEPATH%\Castle
SET MENURESOURCEPATH=%RESOURCEPATH%\Menu
SET SAVERESOURCEPATH=%RESOURCEPATH%\Saves
SET CUSTOMSPELLRESOURCEPATH=%RESOURCEPATH%\CustomSpells
SET CUSTOMITEMRESOURCEPATH=%RESOURCEPATH%\CustomItems
SET CUSTOMWEAPONRESOURCEPATH=%RESOURCEPATH%\CustomWeapons
SET CUSTOMARMOURRESOURCEPATH=%RESOURCEPATH%\CustomArmour
SET CUSTOMACCESSORYRESOURCEPATH=%RESOURCEPATH%\CustomAccessories
SET TRAMPRESOURCEPATH=%RESOURCEPATH%\Tramp
SET TUTORIALRESOURCEPATH=%RESOURCEPATH%\Tutorial
SET ALCHEMISTRESOURCEPATH=%RESOURCEPATH%\Alchemist
SET BLACKSMITHRESOURCEPATH=%RESOURCEPATH%\Blacksmith
SET TRAININGRESOURCEPATH=%RESOURCEPATH%\Training
SET GURURESOURCEPATH=%RESOURCEPATH%\Guru
SET TELEPORTRESOURCEPATH=%RESOURCEPATH%\Teleport
SET SKILLRESOURCEPATH=%RESOURCEPATH%\Skills
SET ENEMYSKILLRESOURCEPATH=%RESOURCEPATH%\EnemySkills
SET MINIGAMERESOURCEPATH=%RESOURCEPATH%\Minigame
SET MINERESOURCEPATH=%RESOURCEPATH%\Mine
SET FORESTRESOURCEPATH=%RESOURCEPATH%\Forest
SET LAKERESOURCEPATH=%RESOURCEPATH%\Lake
SET MISCRESOURCEPATH=%RESOURCEPATH%\Misc
SET HOMETOWNRESOURCEPATH=%RESOURCEPATH%\HomeTown
SET CUTSCENERESOURCEPATH=%RESOURCEPATH%\CutScenes
SET REMOTERESOURCEPATH=%RESOURCEPATH%\Remote
SET MULTIPLAYERRESOURCEPATH=%RESOURCEPATH%\Multiplayer
SET PORTALRESOURCEPATH=%RESOURCEPATH%\Portal
SET HELLRESOURCEPATH=%RESOURCEPATH%\Hell

SET MUSICPATH=%GAMEPATH%\Music
SET BATTLEMUSICPATH=%MUSICPATH%\Battle
SET MAPMUSICPATH=%MUSICPATH%\Map

SET /a EXITGAME = 0
SET /a MAINMENUBACK = 0

::ECHO START %TIME% > C:\Game\Temp.txt
CALL "%OPTIONSRESOURCEPATH%\options.bat"
START "" "%MINIGAMERESOURCEPATH%\minigame_shortcut"
CALL "%INITIALRESOURCEPATH%\hints.bat"
::CALL "%MISCRESOURCEPATH%\copysaystatic.bat"
CALL "%INITIALRESOURCEPATH%\displayhint.bat"
CALL :LOADTIME
CALL "%INITIALRESOURCEPATH%\settabsvars.bat"
ECHO.
ECHO Loading Animations...
::ECHO Loading Animations... %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\initialanimationsetup.bat"
CALL "%INITIALRESOURCEPATH%\characternames.bat"
ECHO.
ECHO Loading Spells...
::ECHO Loading Spells... %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\spellstats.bat"
CALL "%INITIALRESOURCEPATH%\limitbreaksetup.bat"
ECHO.
ECHO Loading Skills...
::ECHO Loading Skills... %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\skilllist.bat"
CALL "%INITIALRESOURCEPATH%\enemyskilllist.bat"
ECHO.
ECHO Loading Specials...
::ECHO Loading Specials... %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\specials.bat"
CALL "%INITIALRESOURCEPATH%\displayhint.bat"
CALL :LOADTIME
::CALL "%INITIALRESOURCEPATH%\dbzmovestats.bat"
ECHO.
ECHO Loading Items...
::ECHO Loading Items... %TIME% >> C:\Game\Temp.txt
::ECHO itemlist %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\itemlist.bat"
::ECHO specialitemlist %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\specialitemlist.bat"
::ECHO keyitemlist %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\keyitemlist.bat"
CALL "%INITIALRESOURCEPATH%\alchemistprices.bat"
CALL "%INITIALRESOURCEPATH%\itemcreationcosts.bat"
ECHO.
ECHO Loading Equipment...
::ECHO Loading Equipment... %TIME% >> C:\Game\Temp.txt
::ECHO weapons %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\weaponstats.bat"
::ECHO armour %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\armourstats.bat"
::ECHO accessories %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\accessorystats.bat"
CALL "%INITIALRESOURCEPATH%\displayhint.bat"
CALL :LOADTIME
CALL "%INITIALRESOURCEPATH%\luckfactors.bat"
CALL "%INITIALRESOURCEPATH%\enemytotals.bat"
::CALL "%INITIALRESOURCEPATH%\enemystats.bat"
::CALL "%INITIALRESOURCEPATH%\enemyskills.bat"
::CALL "%INITIALRESOURCEPATH%\enemyspells.bat"
::CALL "%INITIALRESOURCEPATH%\enemyvarlengths.bat"
CALL "%INITIALRESOURCEPATH%\casinobuystats.bat"
CALL "%INITIALRESOURCEPATH%\customspellprices.bat"
CALL "%INITIALRESOURCEPATH%\cheststats.bat"
CALL "%INITIALRESOURCEPATH%\bossdisplay.bat"
ECHO.
ECHO Loading Maps...
::ECHO Loading Maps... %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\mapsetup.bat"
::CALL "%INITIALRESOURCEPATH%\displayhint.bat"
CALL "%INITIALRESOURCEPATH%\mapnicknames.bat"
ECHO.
ECHO Loading Misc, nearly there^^!
::ECHO Loading Misc... %TIME% >> C:\Game\Temp.txt
CALL "%INITIALRESOURCEPATH%\teleportlocations.bat"
CALL "%INITIALRESOURCEPATH%\misc.bat"
CALL "%INITIALRESOURCEPATH%\leeroyjenkins.bat"
CALL "%INITIALRESOURCEPATH%\dwarfspecials.bat"
CALL "%INITIALRESOURCEPATH%\minefacilities.bat"
CALL "%INITIALRESOURCEPATH%\minestats.bat"
CALL "%INITIALRESOURCEPATH%\pickaxes.bat"
CALL "%INITIALRESOURCEPATH%\sacks.bat"
CALL "%INITIALRESOURCEPATH%\story.bat"
CALL "%INITIALRESOURCEPATH%\gurufightlist.bat"
CALL "%INITIALRESOURCEPATH%\displayletters.bat"
CALL "%INITIALRESOURCEPATH%\enemyanimations.bat"
CALL "%INITIALRESOURCEPATH%\optionstext.bat"
::ECHO END %TIME% >> C:\Game\Temp.txt
GOTO :EOF

:LOADTIME
ECHO.
ECHO Calm Until Night Time takes about a minute to load.
GOTO :EOF
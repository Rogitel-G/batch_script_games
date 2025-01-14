SET /a MINNAMELENGTH = 3
::SET /a MINNAMELENGTH = 1
SET /a COUNT = 0
:SKILL1
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Heal HP
SET SKILL%COUNT%NICKNAME=HEALHPSKILL
SET SKILL%COUNT%DESCRIPTION=Heals 10 percent of your HP
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERTEMPLEDONATIONTOTAL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 5000
SET SKILL%COUNT%EARNTEXT=Donating !SKILL%COUNT%UNLOCKTHRESHOLD! gil to the temple
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERHEALID%
CALL :SKILLNAMELENGTH

:SKILL1
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Heal HP Plus
SET SKILL%COUNT%NICKNAME=HEALHPSKILLPLUS
SET SKILL%COUNT%DESCRIPTION=Heals 20 percent of your HP
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 30
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEHEALHPSKILL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 20
SET SKILL%COUNT%EARNTEXT=Using Heal HP !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERHEALID%

CALL :SKILLNAMELENGTH

:SKILL1
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Heal MP
SET SKILL%COUNT%NICKNAME=HEALMPSKILL
SET SKILL%COUNT%DESCRIPTION=Heals 10 percent of your MP
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERTEMPLEDONATIONTOTAL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 5000
SET SKILL%COUNT%EARNTEXT=Donating !SKILL%COUNT%UNLOCKTHRESHOLD! gil to the temple
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERHEALID%

CALL :SKILLNAMELENGTH

:SKILL1
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Heal MP Plus
SET SKILL%COUNT%NICKNAME=HEALMPSKILLPLUS
SET SKILL%COUNT%DESCRIPTION=Heals 20 percent of your MP
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 30
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEHEALMPSKILL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 20
SET SKILL%COUNT%EARNTEXT=Using Heal MP !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERHEALID%

CALL :SKILLNAMELENGTH

:SKILL1
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Rest
SET SKILL%COUNT%NICKNAME=RESTSKILL
SET SKILL%COUNT%DESCRIPTION=Fully heals your HP, but puts you asleep for 2-4 turns
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=BATTLEROUNDNUM
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 20
SET SKILL%COUNT%EARNTEXT=Lasting until round !SKILL%COUNT%UNLOCKTHRESHOLD! in a battle
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERHEALID%

CALL :SKILLNAMELENGTH

:SKILL1
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Meditate
SET SKILL%COUNT%NICKNAME=MED
SET SKILL%COUNT%DESCRIPTION=Increases the damage of your next attack
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERTEMPLEDONATIONTOTAL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 1000
SET SKILL%COUNT%EARNTEXT=Donating !SKILL%COUNT%UNLOCKTHRESHOLD! gil to the temple
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %ALLPOSSTATID%

CALL :SKILLNAMELENGTH

:SKILL2
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Focus
SET SKILL%COUNT%NICKNAME=FOC
SET SKILL%COUNT%DESCRIPTION=Increases the damage of your next spell
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERCUSTOMSPELLCREATIONCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 2
SET SKILL%COUNT%EARNTEXT=Creating !SKILL%COUNT%UNLOCKTHRESHOLD! Custom Spells
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %ALLPOSSTATID%
CALL :SKILLNAMELENGTH

:SKILL3
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Aim
SET SKILL%COUNT%NICKNAME=AIM
SET SKILL%COUNT%DESCRIPTION=Doubles your accuracy temporarily
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERMISSCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 20
SET SKILL%COUNT%EARNTEXT=Missing !SKILL%COUNT%UNLOCKTHRESHOLD! times in battle
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %ALLPOSSTATID%
CALL :SKILLNAMELENGTH

:SKILL4
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Hide
SET SKILL%COUNT%NICKNAME=HIDE
SET SKILL%COUNT%DESCRIPTION=Doubles your evasion temporarily
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=DODGESUCCESSCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 30
SET SKILL%COUNT%EARNTEXT=Dodging !SKILL%COUNT%UNLOCKTHRESHOLD! enemy attacks and spells
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %ALLPOSSTATID%
CALL :SKILLNAMELENGTH

:SKILL4
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Tramp Rage
SET SKILL%COUNT%NICKNAME=TRAGE
SET SKILL%COUNT%DESCRIPTION=Applies Meditate, Focus, Aim and Hide, but Poisons and Slows you
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=TRAMPSAVED
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 1
SET SKILL%COUNT%EARNTEXT=Saving the tramp
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %ALLPOSSTATID%
CALL :SKILLNAMELENGTH

:SKILL5
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Minus Strike
SET SKILL%COUNT%NICKNAME=MSTRIKE
SET SKILL%COUNT%DESCRIPTION=Damage is equal to the difference between you Max and Current HP
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=BATTLEWINTOTAL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Winning !SKILL%COUNT%UNLOCKTHRESHOLD! battles
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL5
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Minus Strike Plus
SET SKILL%COUNT%NICKNAME=MSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Damage is the difference between you Max and Current HP, multiplied by a tenth of your level
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEMSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 30
SET SKILL%COUNT%EARNTEXT=Using Minus Strike !SKILL%COUNT%UNLOCKTHRESHOLD! battles
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%

CALL :SKILLNAMELENGTH

:SKILL6
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Self Damage Attack
SET SKILL%COUNT%NICKNAME=SDATT
SET SKILL%COUNT%DESCRIPTION=Does extra damage to the enemy by hurting yourself...somehow...
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 15
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEMSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Minus Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL6
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Self Cripple Attack
SET SKILL%COUNT%NICKNAME=SCATT
SET SKILL%COUNT%DESCRIPTION=Does extra damage to the enemy by crippling yourself because reasons.
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 30
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSESDATT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Self Damage Attack !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%

CALL :SKILLNAMELENGTH

:SKILL7
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Steal
SET SKILL%COUNT%NICKNAME=STL
SET SKILL%COUNT%DESCRIPTION=Steals Items or Equipment from the enemy
SET SKILL%COUNT%ANIMATION=STEAL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERATTACKCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 30
SET SKILL%COUNT%EARNTEXT=Attacking an enemy !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERSTEALITEMID%
CALL :SKILLNAMELENGTH

:SKILL7
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Item Transform
SET SKILL%COUNT%NICKNAME=ITEMTRANS
SET SKILL%COUNT%DESCRIPTION=Transforms an enemy into a lovely item
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=STEALSUCCESSCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 25
SET SKILL%COUNT%EARNTEXT=Stealing !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERSTEALITEMID%
CALL :SKILLNAMELENGTH

:SKILL8
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Scan
SET SKILL%COUNT%NICKNAME=SCAN
SET SKILL%COUNT%DESCRIPTION=Ask a mate about the enemy's weaknesses and stuff
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=WEAKNESSSPELLCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Casting !SKILL%COUNT%UNLOCKTHRESHOLD! spells that enemies are weak to
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %AUTOCATCHID%
CALL :SKILLNAMELENGTH

:SKILL9
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Detect
SET SKILL%COUNT%NICKNAME=DETECT
SET SKILL%COUNT%DESCRIPTION=Ask a mate about what stuff the enemy's got
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSESCAN
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Scanning an enemy !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %AUTOCATCHID%
CALL :SKILLNAMELENGTH

:SKILL10
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Flee
SET SKILL%COUNT%NICKNAME=FLEE
SET SKILL%COUNT%DESCRIPTION=Flee from the battle with no questions asked
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 1
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=RUNSUCCESSCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Successfully running from !SKILL%COUNT%UNLOCKTHRESHOLD! battles
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %AUTOCATCHID%
CALL :SKILLNAMELENGTH

:SKILL11
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=MP Steal
SET SKILL%COUNT%NICKNAME=MPSTEAL
SET SKILL%COUNT%DESCRIPTION=Steal MP from the enemy
SET SKILL%COUNT%ANIMATION=DRAINSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=ALLELEMENTALSPELLSUNLOCKED
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 1
SET SKILL%COUNT%EARNTEXT=Unlocking two ...aga spells for the 4 basic elements
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERHEALID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=MP Attack
SET SKILL%COUNT%NICKNAME=MPATT
SET SKILL%COUNT%DESCRIPTION=Use MP to unleash a powerful attack
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 30
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=MPSTOLENCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 100
SET SKILL%COUNT%EARNTEXT=Stealing !SKILL%COUNT%UNLOCKTHRESHOLD! MP
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=MP and HP Attack
SET SKILL%COUNT%NICKNAME=MPHPATT
SET SKILL%COUNT%DESCRIPTION=Use MP and HP to unleash a powerful attack
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 50
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEMPATT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Using MP Attack !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Power Strike
SET SKILL%COUNT%NICKNAME=POWSTRIKE
SET SKILL%COUNT%DESCRIPTION=Powerful strike that's less accurate but more powerful
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEMED
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Meditating !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Power Strike Plus
SET SKILL%COUNT%NICKNAME=POWSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Even more powerful, even less accurate
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 25
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEPOWSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Using Power Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Targeted Strike
SET SKILL%COUNT%NICKNAME=AIMSTRIKE
SET SKILL%COUNT%DESCRIPTION=Focussed strike with more accuracy but less power
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEAIM
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Aiming !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Targeted Strike Plus
SET SKILL%COUNT%NICKNAME=AIMSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Not as strong as a normal attack, but guaranteed to hit
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEAIMSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Using Targeted Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Induce Random Weakness
SET SKILL%COUNT%NICKNAME=INDUCEWEAKNESSRAN
SET SKILL%COUNT%DESCRIPTION=Causes an enemy to be weak to a random element
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=WEAKNESSSPELLCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Casting !SKILL%COUNT%UNLOCKTHRESHOLD! spells that enemies are weak to
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %INDUCEALLWEAKID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Induce Specific Weakness
SET SKILL%COUNT%NICKNAME=INDUCEWEAKNESS
SET SKILL%COUNT%DESCRIPTION=Causes an enemy to be weak to an element of your choosing
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEINDUCEWEAKNESSRAN
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Inducing !SKILL%COUNT%UNLOCKTHRESHOLD! random elemental weaknesses
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %INDUCEALLWEAKID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Remove Random Status Immunity
SET SKILL%COUNT%NICKNAME=REMSTATIMMRAN
SET SKILL%COUNT%DESCRIPTION=Removes a random status immunity from the enemy
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEINDUCEWEAKNESS
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Inducing !SKILL%COUNT%UNLOCKTHRESHOLD! specific elemental weaknesses
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %REMSTATIMMLIMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Remove Status Immunity
SET SKILL%COUNT%NICKNAME=REMSTATIMM
SET SKILL%COUNT%DESCRIPTION=Removes a status immunity of your choosing from the enemy
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEREMSTATIMMRAN
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Removing !SKILL%COUNT%UNLOCKTHRESHOLD! random status immunities
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %REMSTATIMMLIMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Fire Strike
SET SKILL%COUNT%NICKNAME=FIRESTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with added fire element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=FIRESPELLSCASTCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using fire spells !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %FIREDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Fire Strike Plus
SET SKILL%COUNT%NICKNAME=FIRESTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Powerful attack with added fire element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEFIRESTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Fire Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %FIREDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Ice Strike
SET SKILL%COUNT%NICKNAME=ICESTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with added ice element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=ICESPELLSCASTCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using ice spells !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %ICEDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Ice Strike Plus
SET SKILL%COUNT%NICKNAME=ICESTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Powerful attack with added Ice element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEICESTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Ice Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %ICEDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Electric Strike
SET SKILL%COUNT%NICKNAME=ELECTRICSTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with added electric element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=ELECTRICSPELLSCASTCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using electric spells !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %ELECDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Electric Strike Plus
SET SKILL%COUNT%NICKNAME=ELECTRICSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Powerful attack with added electric element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEELECTRICSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Electric Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %ELECDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Water Strike
SET SKILL%COUNT%NICKNAME=WATERSTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with added water element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=WATERSPELLSCASTCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using water spells !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %WATERDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Water Strike Plus
SET SKILL%COUNT%NICKNAME=WATERSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Powerful attack with added water element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEWATERSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Water Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %WATERDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Earth Strike
SET SKILL%COUNT%NICKNAME=EARTHSTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with added earth element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=EARTHSPELLSCASTCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using earth spells !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %EARTHDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Earth Strike Plus
SET SKILL%COUNT%NICKNAME=EARTHSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Powerful attack with added earth element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEEARTHSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Earth Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %EARTHDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Forbidden Strike
SET SKILL%COUNT%NICKNAME=FORBIDDENSTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with added forbidden element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=FORBIDDENSPELLSCASTCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using forbidden spells !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %FORBDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Forbidden Strike Plus
SET SKILL%COUNT%NICKNAME=FORBIDDENSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Powerful attack with added forbidden element
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEFORBIDDENSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Forbidden Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %FORBDAMID%

CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Quick Strike
SET SKILL%COUNT%NICKNAME=QATTACK
SET SKILL%COUNT%DESCRIPTION=Attack that deals damage based on speed
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 20
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSEFLEE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 5
SET SKILL%COUNT%EARNTEXT=Using the flee skill !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Critical Strike
SET SKILL%COUNT%NICKNAME=CRITICALSTRIKE
SET SKILL%COUNT%DESCRIPTION=Standard attack with increased critical chance
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=CRITICALHITSUCCESSCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Landing !SKILL%COUNT%UNLOCKTHRESHOLD! critical hits
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%
CALL :SKILLNAMELENGTH

:SKILL12
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Critical Strike Plus
SET SKILL%COUNT%NICKNAME=CRITICALSTRIKEPLUS
SET SKILL%COUNT%DESCRIPTION=Standard attack with a guaranteed critical hit
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 25
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERUSECRITICALSTRIKE
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10
SET SKILL%COUNT%EARNTEXT=Using Critical Strike !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %NONELEDAMID%

CALL :SKILLNAMELENGTH

:SKILL13
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Gil Toss
SET SKILL%COUNT%NICKNAME=GILTOSS
SET SKILL%COUNT%DESCRIPTION=Throw gil at the enemy
SET SKILL%COUNT%ANIMATION=ICESPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 1
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=CASINOBOUGHT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 1
SET SKILL%COUNT%EARNTEXT=Buying the casino
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERSTEALGILID%
CALL :SKILLNAMELENGTH

:SKILL14
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Pilfer Gil
SET SKILL%COUNT%NICKNAME=PILGIL
SET SKILL%COUNT%DESCRIPTION=Steal gil from the enemy
SET SKILL%COUNT%ANIMATION=STEAL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 5
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=PLAYERGIL
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 10000
SET SKILL%COUNT%EARNTEXT=Acquiring !SKILL%COUNT%UNLOCKTHRESHOLD! gil
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERSTEALGILID%
CALL :SKILLNAMELENGTH

:SKILL15
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Gil Transform
SET SKILL%COUNT%NICKNAME=GILTRANS
SET SKILL%COUNT%DESCRIPTION=Transform the enemy into lots of gil
SET SKILL%COUNT%ANIMATION=STATUSSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=GILSTOLENCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 5000
SET SKILL%COUNT%EARNTEXT=Pilfering !SKILL%COUNT%UNLOCKTHRESHOLD! gil
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %SUPERSTEALGILID%
CALL :SKILLNAMELENGTH

:SKILL16
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Mug
SET SKILL%COUNT%NICKNAME=MUG
SET SKILL%COUNT%DESCRIPTION=Damages the enemy and steals too
SET SKILL%COUNT%ANIMATION=ATTACK
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 10
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=STEALSUCCESSCOUNT
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 15
SET SKILL%COUNT%EARNTEXT=Stealing !SKILL%COUNT%UNLOCKTHRESHOLD! times
SET /a SKILL%COUNT%PROTECTABLE = 1
SET /a SKILL%COUNT%LIMITBREAK = %SUPERSTEALITEMID%
CALL :SKILLNAMELENGTH

:SKILL17
SET /a COUNT = %COUNT%+1
SET SKILL%COUNT%NAME=Mighty Guard
SET SKILL%COUNT%NICKNAME=MGUARD
SET SKILL%COUNT%DESCRIPTION=Casts Haste, Protect and Shell on the user
SET SKILL%COUNT%ANIMATION=SELFSPELL
SET /a !SKILL%COUNT%NICKNAME!ID = %COUNT%
SET /a SKILL%COUNT%APCOST = 50
SET /a SKILL%COUNT%GILCOST = !SKILL%COUNT%APCOST!*100
SET SKILL%COUNT%UNLOCKFIELD=ALLSUPPORTSPELLSUNLOCKED
SET /a SKILL%COUNT%UNLOCKTHRESHOLD = 1
SET SKILL%COUNT%EARNTEXT=Unlocking Haste, Protect and Shell
SET /a SKILL%COUNT%PROTECTABLE = 0
SET /a SKILL%COUNT%LIMITBREAK = %ALLPOSSTATID%
CALL :SKILLNAMELENGTH

SET /a SKILLTOT = %COUNT%

GOTO :EOF

:SKILLNAMELENGTH
SET /a SKILL%COUNT%NAMELENGTH = %MINNAMELENGTH% - 1
:SKILLNAMELOOPSTART
SET /a SKILL%COUNT%NAMELENGTH += 1
SET TEMP1=!SKILL%COUNT%NAMELENGTH!
SET SUBSTR=!SKILL%COUNT%NAME:~%TEMP1%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :SKILLNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = !SKILL%COUNT%NAMELENGTH! + 1
	SET SUBSTR=!SKILL%COUNT%NAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :SKILLNAMELOOPSTART
	)
)
GOTO :EOF
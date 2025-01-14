SET /a MINNAMELENGTH = 3
::SET /a MINNAMELENGTH = 1
SET /a COUNT = 0
:FIRESPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Fire
SET OFF%COUNT%DESCRIPTION=Low-damage Fire spell
SET OFF%COUNT%ANIMATION=FIRESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 5
SET /a OFF%COUNT%UNLOCKLVL = 1
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Fire
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -5
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:BLIZZARDSPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Blizzard
SET OFF%COUNT%DESCRIPTION=Low-damage Ice spell
SET OFF%COUNT%ANIMATION=ICESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 5
SET /a OFF%COUNT%UNLOCKLVL = 1
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Ice
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -5
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:THUNDERSPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Thunder
SET OFF%COUNT%DESCRIPTION=Electric damage rather than Thunder, but that's always been a big ambiguous...
SET OFF%COUNT%ANIMATION=ELECTRICITYSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 5
SET /a OFF%COUNT%UNLOCKLVL = 1
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Electricity
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -5
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:WATERSPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Water
SET OFF%COUNT%DESCRIPTION=Low-damage Water spell
SET OFF%COUNT%ANIMATION=WATERSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 5
SET /a OFF%COUNT%UNLOCKLVL = 1
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Water
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -5
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:FIRASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Fira
SET OFF%COUNT%DESCRIPTION=Mid-damage Fire spell
SET OFF%COUNT%ANIMATION=FIRESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 10
SET /a OFF%COUNT%UNLOCKLVL = 8
SET OFF%COUNT%PREREQUISITE=Fire
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Fire
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -8
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:BLIZZARASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Blizzara
SET OFF%COUNT%DESCRIPTION=Mid-damage Ice spell
SET OFF%COUNT%ANIMATION=ICESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 10
SET /a OFF%COUNT%UNLOCKLVL = 8
SET OFF%COUNT%PREREQUISITE=Blizzard
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Ice
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -8
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:THUNDARASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Thundara
SET OFF%COUNT%DESCRIPTION=Mid-damage Electric spell
SET OFF%COUNT%ANIMATION=ELECTRICITYSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 10
SET /a OFF%COUNT%UNLOCKLVL = 8
SET OFF%COUNT%PREREQUISITE=Thunder
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Electricity
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -8
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:WATERASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Watera
SET OFF%COUNT%DESCRIPTION=Mid-damage Water spell
SET OFF%COUNT%ANIMATION=WATERSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 10
SET /a OFF%COUNT%UNLOCKLVL = 8
SET OFF%COUNT%PREREQUISITE=Water
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Water
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -8
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:FIRAGASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Firaga
SET OFF%COUNT%DESCRIPTION=High-damage Fire spell
SET OFF%COUNT%ANIMATION=FIRESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 30
SET /a OFF%COUNT%UNLOCKLVL = 16
SET OFF%COUNT%PREREQUISITE=Fira
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Fire
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -20
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:BLIZZAGASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Blizzaga
SET OFF%COUNT%DESCRIPTION=High-damage Ice spell
SET OFF%COUNT%ANIMATION=ICESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 30
SET /a OFF%COUNT%UNLOCKLVL = 16
SET OFF%COUNT%PREREQUISITE=Blizzara
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Ice
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -20
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:THUNDAGASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Thundaga
SET OFF%COUNT%DESCRIPTION=High-damage Electric spell
SET OFF%COUNT%ANIMATION=ELECTRICITYSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 30
SET /a OFF%COUNT%UNLOCKLVL = 16
SET OFF%COUNT%PREREQUISITE=Thundara
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Electricity
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -20
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:WATERAGASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Wateraga
SET OFF%COUNT%DESCRIPTION=High-damage Water spell
SET OFF%COUNT%ANIMATION=WATERSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 30
SET /a OFF%COUNT%UNLOCKLVL = 16
SET OFF%COUNT%PREREQUISITE=Watera
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Water
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -20
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:DRAINSPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Drain
SET OFF%COUNT%DESCRIPTION=Steals the enemy's HP to heal you
SET OFF%COUNT%ANIMATION=DRAINSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 40
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 2
SET OFF%COUNT%EFFECT1ELEMENT=Drain
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -15
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
SET OFF%COUNT%EFFECT2ELEMENT=NONE
SET OFF%COUNT%EFFECT2TYPE=STAT
SET OFF%COUNT%EFFECT2ATTRIBUTE=HP
SET OFF%COUNT%EFFECT2TARGET=ATTACKER
SET /a OFF%COUNT%EFFECT2AMOUNT = 5
SET /a OFF%COUNT%EFFECT2FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT2MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT2MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT2PLAYERTEXT=Your spell healed you by
CALL :SPELLNAMELENGTH


:QUAKESPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Quake
SET OFF%COUNT%DESCRIPTION=Creates an earthquake below your enemy for very high damage
SET OFF%COUNT%ANIMATION=EARTHSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 40
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Earth
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -25
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:DEMISPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Demi
SET OFF%COUNT%DESCRIPTION=Reduces the enemy's HP by a quarter
SET OFF%COUNT%ANIMATION=DEMISPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 50
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Demi
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -1
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:METEORSPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Comet
SET OFF%COUNT%DESCRIPTION=Hits the enemy with a small meteor from space. Still hurts though...
SET OFF%COUNT%ANIMATION=FORBIDDEN1SPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 80
SET /a OFF%COUNT%MPCOST = 50
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=NONE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Forbidden
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -30
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:FLARE
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Flare
SET OFF%COUNT%DESCRIPTION=Very high fire damage, with high accuracy
SET OFF%COUNT%ANIMATION=FIRESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 120
SET /a OFF%COUNT%MPCOST = 40
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=FIRAGA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Fire
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -22
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:FREEZE
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Freeze
SET OFF%COUNT%DESCRIPTION=Very High ice damage that also slows the enemy
SET OFF%COUNT%ANIMATION=ICESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 40
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=BLIZZAGA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 2
SET OFF%COUNT%EFFECT1ELEMENT=Ice
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -22
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
SET OFF%COUNT%EFFECT2ELEMENT=NONE
SET OFF%COUNT%EFFECT2TYPE=STATUS
SET OFF%COUNT%EFFECT2ATTRIBUTE=Slow
SET OFF%COUNT%EFFECT2TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT2AMOUNT = 1
SET /a OFF%COUNT%EFFECT2FIXEDAMOUNT = 1
SET /a OFF%COUNT%EFFECT2MINTURNCOUNT = 3
SET /a OFF%COUNT%EFFECT2MAXTURNCOUNT = 6
SET OFF%COUNT%EFFECT2PLAYERTEXT=now has the !OFF%COUNT%EFFECT2ATTRIBUTE! status active^^!
CALL :SPELLNAMELENGTH

:WAVE
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Wave
SET OFF%COUNT%DESCRIPTION=Very high water damage
SET OFF%COUNT%ANIMATION=WATERSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 40
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=WATERAGA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Water
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -25
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:ZAP
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Zap
SET OFF%COUNT%DESCRIPTION=Very high electric damage
SET OFF%COUNT%ANIMATION=ELECTRICITYSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 40
SET /a OFF%COUNT%UNLOCKLVL = 25
SET OFF%COUNT%PREREQUISITE=THUNDAGA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Electricity
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -25
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:DRAINARASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Drainara
SET OFF%COUNT%DESCRIPTION=Steals lots of the enemy's HP to heal you
SET OFF%COUNT%ANIMATION=DRAINSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=DRAIN
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 2
SET OFF%COUNT%EFFECT1ELEMENT=Drain
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -28
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
SET OFF%COUNT%EFFECT2ELEMENT=NONE
SET OFF%COUNT%EFFECT2TYPE=STAT
SET OFF%COUNT%EFFECT2ATTRIBUTE=HP
SET OFF%COUNT%EFFECT2TARGET=ATTACKER
SET /a OFF%COUNT%EFFECT2AMOUNT = 10
SET /a OFF%COUNT%EFFECT2FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT2MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT2MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT2PLAYERTEXT=Your spell healed you by
CALL :SPELLNAMELENGTH


:QUAKARASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Quakara
SET OFF%COUNT%DESCRIPTION=Creates an earthquake below your enemy for insanely high damage
SET OFF%COUNT%ANIMATION=EARTHSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=QUAKE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Earth
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -35
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:DEMIRASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Demira
SET OFF%COUNT%DESCRIPTION=Reduces the enemy's HP by half
SET OFF%COUNT%ANIMATION=DEMISPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 90
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=DEMI
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Demi
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -1
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:METEORASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Meteor
SET OFF%COUNT%DESCRIPTION=A meteor from space hits the enemy right in the plums
SET OFF%COUNT%ANIMATION=FORBIDDEN1SPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 80
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=COMET
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Forbidden
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -40
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:INFERNO
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Inferno
SET OFF%COUNT%DESCRIPTION=Incredibly high fire damage
SET OFF%COUNT%ANIMATION=FIRESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=FLARE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Fire
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -35
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:ARCTIC
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=ArcticBlast
SET OFF%COUNT%DESCRIPTION=Incredibly high ice damage
SET OFF%COUNT%ANIMATION=ICESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=FREEZE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Ice
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -35
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:LIGHTNING
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Lightning
SET OFF%COUNT%DESCRIPTION=Incredibly high electric damage
SET OFF%COUNT%ANIMATION=ELECTRICITYSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=ZAP
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Electricity
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -35
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:HYDROPUMP
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=HydroPump
SET OFF%COUNT%DESCRIPTION=Incredibly high water damage
SET OFF%COUNT%ANIMATION=WATERSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 70
SET /a OFF%COUNT%UNLOCKLVL = 40
SET OFF%COUNT%PREREQUISITE=WAVE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Water
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -35
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:DRAINAGASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Drainaga
SET OFF%COUNT%DESCRIPTION=Steals loads and loads of the enemy's HP to heal you
SET OFF%COUNT%ANIMATION=DRAINSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=DRAINARA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 2
SET OFF%COUNT%EFFECT1ELEMENT=Drain
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -38
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
SET OFF%COUNT%EFFECT2ELEMENT=NONE
SET OFF%COUNT%EFFECT2TYPE=STAT
SET OFF%COUNT%EFFECT2ATTRIBUTE=HP
SET OFF%COUNT%EFFECT2TARGET=ATTACKER
SET /a OFF%COUNT%EFFECT2AMOUNT = 15
SET /a OFF%COUNT%EFFECT2FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT2MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT2MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT2PLAYERTEXT=Your spell healed you by
CALL :SPELLNAMELENGTH


:QUAKARASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Quakaga
SET OFF%COUNT%DESCRIPTION=Creates an earthquake below your enemy for insanely high damage
SET OFF%COUNT%ANIMATION=EARTHSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=QUAKAGA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Earth
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -45
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


:DEMIRASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Demiga
SET OFF%COUNT%DESCRIPTION=Reduces the enemy's HP by three quarters
SET OFF%COUNT%ANIMATION=DEMISPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 80
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=DEMIRA
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Demi
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -1
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:SHADOWFLARESPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=ShadowFlare
SET OFF%COUNT%DESCRIPTION=A meteor from space hits the enemy right in the plums
SET OFF%COUNT%ANIMATION=FORBIDDEN2SPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 80
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=Meteor
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Forbidden
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -50
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:FIRESTORM
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Firestorm
SET OFF%COUNT%DESCRIPTION=Insanely high fire damage
SET OFF%COUNT%ANIMATION=FIRESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=INFERNO
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Fire
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -45
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:ANTARCTIC
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=IceStorm
SET OFF%COUNT%DESCRIPTION=Insanely high ice damage
SET OFF%COUNT%ANIMATION=ICESPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=ARCTICBLAST
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Ice
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -45
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:STORM
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Storm
SET OFF%COUNT%DESCRIPTION=Insanely high electric damage
SET OFF%COUNT%ANIMATION=ELECTRICITYSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=LIGHTNING
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Electricity
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -45
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:HYDROCANNON
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=HydroCannon
SET OFF%COUNT%DESCRIPTION=Insanely high water damage
SET OFF%COUNT%ANIMATION=WATERSPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 100
SET /a OFF%COUNT%UNLOCKLVL = 50
SET OFF%COUNT%PREREQUISITE=HYDROPUMP
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=Water
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -45
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH

:ULTIMASPELLSTATS
SET /a COUNT=%COUNT%+1
SET OFF%COUNT%SPELL=Ultima
SET OFF%COUNT%DESCRIPTION=Girthy black magic right in the bum hole
SET OFF%COUNT%ANIMATION=FORBIDDEN2SPELL
SET /a !OFF%COUNT%SPELL!ID = %COUNT%
SET /a OFF%COUNT%ACCURACY = 100
SET /a OFF%COUNT%MPCOST = 150
SET /a OFF%COUNT%UNLOCKLVL = 60
SET OFF%COUNT%PREREQUISITE=SHADOWFLARE
SET /a OFF%COUNT%REFLECTABLE = 1
SET /a OFF%COUNT%EFFECTSNUM = 1
SET OFF%COUNT%EFFECT1ELEMENT=NONE
SET OFF%COUNT%EFFECT1TYPE=STAT
SET OFF%COUNT%EFFECT1ATTRIBUTE=HP
SET OFF%COUNT%EFFECT1TARGET=DEFENDER
SET /a OFF%COUNT%EFFECT1AMOUNT = -65
SET /a OFF%COUNT%EFFECT1FIXEDAMOUNT = 0
SET /a OFF%COUNT%EFFECT1MINTURNCOUNT = 0
SET /a OFF%COUNT%EFFECT1MAXTURNCOUNT = 0
SET OFF%COUNT%EFFECT1PLAYERTEXT=Your spell did
CALL :SPELLNAMELENGTH


SET /a OFFSPELLTOT = %COUNT%

GOTO :EOF

:SPELLNAMELENGTH
SET /a OFF%COUNT%NAMELENGTH = %MINNAMELENGTH% - 1
:SPELLNAMELOOPSTART
SET /a OFF%COUNT%NAMELENGTH += 1
SET TEMP1=!OFF%COUNT%NAMELENGTH!
SET SUBSTR=!OFF%COUNT%SPELL:~%TEMP1%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :SPELLNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = !OFF%COUNT%NAMELENGTH! + 1
	SET SUBSTR=!OFF%COUNT%SPELL:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :SPELLNAMELOOPSTART
	)
)
GOTO :EOF
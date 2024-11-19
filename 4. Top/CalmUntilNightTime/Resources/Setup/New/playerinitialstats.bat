REM Number of training battles participated in since last guitar battle
SET /a NUMTRAINBATTLES = 0

REM Player's Stats
SET /a PLAYERLVL = 1
SET /a OLDREQEXP = 0
SET /a REQEXP = %PLAYERLVL%*200
SET /a EXP = 0
SET /a PLAYERGIL = 0
SET /a NEWSPELLPOINT = 0
SET /a PLAYERBASEMAXHP = 100
SET /a PLAYERHP = %PLAYERBASEMAXHP%+%PLAYEREQUIPMAXHP%
SET /a PLAYERBASEMAXMP = 50
SET /a PLAYERMP = %PLAYERBASEMAXMP%+%PLAYEREQUIPMAXMP%
SET /a PLAYERBASESTR = 5
SET /a PLAYERBASEEND = 5
SET /a PLAYERBASEMAG = 5
SET /a PLAYERBASESPR = 5
SET /a PLAYERBASEACC = 5
SET /a PLAYERBASEEVA = 5
SET /a PLAYERBASESPD = 5
SET /a PLAYERBASELCK = 5
SET /a PLAYERMAXLIMITBREAK = 110
SET /a PLAYERLIMITBREAK = 0
SET /a PLAYERLIMITBREAKACTIVE = 0
SET /a PLAYERMAXOXYGEN = 10
SET /a PLAYEROXYGEN = %PLAYERMAXOXYGEN%

CALL "%INITIALRESOURCEPATH%\playermodifiedstats.bat"



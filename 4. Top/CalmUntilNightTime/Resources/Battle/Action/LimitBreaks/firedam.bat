SET /a DAM=(((((%PLAYERMAG%*%PLAYERSTR%)+%PLAYERLVL%)/((%ENEMYSPR%)+%ENEMYLVL%)*(%PLAYERMAG%+%PLAYERSTR%)*%PLAYERLVL%/%ENEMYLVL%)*100)*%RANFACT%)/10000
SET /a DAM=(%DAM%*3)/2
SET ELEMENT=Fire
CALL "%BATTLEACTIONRESOURCEPATH%\LimitBreaks\limdam.bat"
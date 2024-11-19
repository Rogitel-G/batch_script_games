CALL :CHANGEVARIABLES
CALL :BATTLE
CALL :RESETVARIABLES
GOTO :EOF

:CHANGEVARIABLES
SET /a PLAYERLVL = 30
SET /a EXP = ((%PLAYERLVL%-1)*200)+50
SET /a PLAYERBASEMAXHP = 400
SET /a PLAYERHP = 400
SET /a PLAYERMAXLIMITBREAK = %PLAYERBASEMAXHP%
SET /a PLAYERBASEMAXMP = 200
SET /a PLAYERMP = 200
SET /a PLAYERBASESTR = 5 + %PLAYERLVL%/2
SET /a PLAYERBASEEND = 5 + %PLAYERLVL%/2
SET /a PLAYERBASEMAG = 5 + %PLAYERLVL%/2
SET /a PLAYERBASESPR = 5 + %PLAYERLVL%/2
SET /a PLAYERBASEACC = 10 + %PLAYERLVL%/2
SET /a PLAYERBASEEVA = 5 + %PLAYERLVL%/2
SET /a PLAYERBASESPD = 5 + %PLAYERLVL%/2
SET /a PLAYERBASELCK = 5 + %PLAYERLVL%/2
SET /a PLAYERFIRAGAENABLED = 1
SET /a PLAYERBLIZZAGAENABLED = 1
SET /a PLAYERWATERAGAENABLED = 1
SET /a PLAYERTHUNDAGAENABLED = 1
SET /a PLAYERQUAKEENABLED = 1
SET /a PLAYERDEMIENABLED = 1
SET /a PLAYERCURAGAENABLED = 1
SET /a PLAYERSHELLENABLED = 1
SET /a PLAYERREGENENABLED = 1
SET /a PLAYERSKILL%HEALHPSKILLID%ENABLED = 1
SET /a PLAYERSKILL%HEALMPSKILLID%ENABLED = 1
SET /a PLAYERSKILL%MGUARDID%ENABLED = 1
SET /a PLAYERSKILL%SCANID%ENABLED = 1
SET /a PLAYERSKILL%CRITICALSTRIKEPLUSID%ENABLED = 1
SET /a PLAYERSKILL%MSTRIKEID%ENABLED = 1
SET /a PLAYERSKILL%AIMID%ENABLED = 1
SET /a PLAYERSKILL%ITEMTRANSID%ENABLED = 1
SET /a PLAYERITEM%XPOTID%NUM = 1
SET /a PLAYERITEM%HIETHID%NUM = 1
SET /a PLAYERITEM%REMEDYID%NUM = 1
SET /a PLAYERITEM%CBOMBID%NUM = 1
GOTO :EOF

:BATTLE
SET /a ENEMYID = %NIGHTMAREBOSSID%
CALL "%BATTLESTARTRESOURCEPATH%\specialbattlestart.bat"
GOTO :EOF

:RESETVARIABLES
SET /a BACKUPPLAYERGIL = %PLAYERGIL%
CALL "%NEWRESOURCEPATH%\playerinitialstats.bat"
CALL "%NEWRESOURCEPATH%\playerinitialmagic.bat"
CALL "%NEWRESOURCEPATH%\playerinitialskills.bat"
CALL "%NEWRESOURCEPATH%\playerinitialitems.bat"
CALL "%NEWRESOURCEPATH%\playerinitialstatus.bat"
CALL "%NEWRESOURCEPATH%\playerinitialrecords.bat"
SET /a PLAYERGIL = %BACKUPPLAYERGIL%
GOTO :EOF
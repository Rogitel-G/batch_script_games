SET /a MINETRAININGTIME1 = 30
SET /a MINETRAININGTIME2 = 24
SET /a MINETRAININGTIME3 = 18
SET /a MINETRAININGTIME4 = 12
SET /a MINETRAININGTIME5 = 3
SET /a MINETRAININGLIMIT1 = 3
SET /a MINETRAININGLIMIT2 = 6
SET /a MINETRAININGLIMIT3 = 9
SET /a MINETRAININGLIMIT4 = 12
SET /a MINETRAININGLIMIT5 = 15
SET /a MINETRAININGFACILITYCOST1 = 3000
SET /a MINETRAININGFACILITYCOST2 = 6000
SET /a MINETRAININGFACILITYCOST3 = 9000
SET /a MINETRAININGFACILITYCOST4 = 12000
SET /a MINETRAININGFACILITYCOST5 = 30000


SET /a COUNT = 0
:STRENGTHTRAINING
SET TEMP=STR
SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Dumbells
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Barbells
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Gym Membership
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Home Gym
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Hyperbolic Time Chamber
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = 0
:SKILLTRAINING
SET TEMP=SKL
SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Skill1
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Skill2
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Skill3
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Skill4
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Skill5
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = 0
:PERSISTENCETRAINING
SET TEMP=PER
SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Persistence1
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Persistence2
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Perisistence3
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Persistence4
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

SET /a COUNT = %COUNT% + 1
SET %TEMP%TRAININGFACILITY%COUNT%NAME=Persistence5
SET /a %TEMP%TRAININGFACILITY%COUNT%TIME = !MINETRAININGTIME%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%LIMIT = !MINETRAININGLIMIT%COUNT%!
SET /a %TEMP%TRAININGFACILITY%COUNT%COST = !MINETRAININGFACILITYCOST%COUNT%!
CALL :TRAININGFACILITYNAMELENGTH

GOTO :EOF

:TRAININGFACILITYNAMELENGTH
SET /a %TEMP%TRAININGFACILITY%COUNT%NAMELENGTH = 0
:TRAININGFACILITYNAMELENGTHLOOP
SET /a %TEMP%TRAININGFACILITY%COUNT%NAMELENGTH  += 1
SET TEMP1=!%TEMP%TRAININGFACILITY%COUNT%NAMELENGTH!
SET SUBSTR=!%TEMP%TRAININGFACILITY%COUNT%NAME:~%TEMP1%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :TRAININGFACILITYNAMELENGTHLOOP
) ELSE (
	SET /a TEMPCOUNT = !%TEMP%TRAININGFACILITY%COUNT%NAMELENGTH! + 1
	SET SUBSTR=!%TEMP%TRAININGFACILITY%COUNT%NAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :TRAININGFACILITYNAMELENGTHLOOP
	)
)
GOTO :EOF
SET /a TRAMPALIVE = 1 
SET /a BEATTRAMP = 0 
SET /a SHOPKEEPER1ALIVE = 1 
SET /a BEATSHOPKEEPER1 = 0 
SET /a SHOPKEEPER2ALIVE = 1 
SET /a BEATSHOPKEEPER2 = 0 
SET /a SHOPKEEPER3ALIVE = 1 
SET /a BEATSHOPKEEPER3 = 0 
SET /a SHOPKEEPER4ALIVE = 1 
SET /a BEATSHOPKEEPER4 = 0 
SET /a SHOPKEEPER5ALIVE = 1 
SET /a BEATSHOPKEEPER5 = 0 
SET /a LEPRECHAUNALIVE = 1 
SET /a BEATLEPRECHAUN = 0 
SET /a BOUNCERALIVE = 0 
SET /a BEATBOUNCER = 0 
SET /a CASINOBOSSALIVE = 1 
SET /a BEATCASINOBOSS = 0 
SET /a CAVEBOSSALIVE = 1 
SET /a BEATCAVEBOSS = 0 
SET /a CAVEMON1ALIVE = 1 
SET /a BEATCAVEMON1 = 0 
SET /a CAVEMON2ALIVE = 1 
SET /a BEATCAVEMON2 = 0 
SET /a PACMANALIVE = 1 
SET /a BEATPACMAN = 0 
SET /a KNIGHT1ALIVE = 1 
SET /a BEATKNIGHT1 = 0 
SET /a KNIGHT2ALIVE = 1 
SET /a BEATKNIGHT2 = 0 
SET /a KNIGHT3ALIVE = 1 
SET /a BEATKNIGHT3 = 0 
SET /a KNIGHT4ALIVE = 1 
SET /a BEATKNIGHT4 = 0 
SET /a KNIGHT5ALIVE = 1 
SET /a BEATKNIGHT5 = 0 
SET /a KNIGHT6ALIVE = 1 
SET /a BEATKNIGHT6 = 0 
SET /a KNIGHT7ALIVE = 1 
SET /a BEATKNIGHT7 = 0 
SET /a KNIGHT8ALIVE = 1 
SET /a BEATKNIGHT8 = 0 
SET /a KNIGHT9ALIVE = 1 
SET /a BEATKNIGHT9 = 0 
SET /a KNIGHT10ALIVE = 1 
SET /a BEATKNIGHT10 = 0 
SET /a KNIGHT11ALIVE = 1 
SET /a BEATKNIGHT11 = 0 
SET /a KNIGHT12ALIVE = 1 
SET /a BEATKNIGHT12 = 0 
SET /a KNIGHT13ALIVE = 1 
SET /a BEATKNIGHT13 = 0 
SET /a KNIGHT14ALIVE = 1 
SET /a BEATKNIGHT14 = 0 
SET /a KNIGHT15ALIVE = 1 
SET /a BEATKNIGHT15 = 0 
SET /a KNIGHT16ALIVE = 1 
SET /a BEATKNIGHT16 = 0 
SET /a KNIGHT17ALIVE = 1 
SET /a BEATKNIGHT17 = 0 
SET /a KNIGHT18ALIVE = 1 
SET /a BEATKNIGHT18 = 0 
SET /a KNIGHT19ALIVE = 1 
SET /a BEATKNIGHT19 = 0 
SET /a KNIGHT20ALIVE = 1 
SET /a BEATKNIGHT20 = 0 
SET /a KNIGHT21ALIVE = 1 
SET /a BEATKNIGHT21 = 0 
SET /a KNIGHT22ALIVE = 1 
SET /a BEATKNIGHT22 = 0 
SET /a KNIGHT23ALIVE = 1 
SET /a BEATKNIGHT23 = 0 
SET /a KNIGHT24ALIVE = 1 
SET /a BEATKNIGHT24 = 0 
SET /a KNIGHT25ALIVE = 1 
SET /a BEATKNIGHT25 = 0 
SET /a KNIGHT26ALIVE = 1 
SET /a BEATKNIGHT26 = 0 
SET /a KNIGHT27ALIVE = 1 
SET /a BEATKNIGHT27 = 0 
SET /a LEEROYALIVE = 1 
SET /a BEATLEEROY = 0 
SET /a MINEBOSSALIVE = 1
SET /a BEATMINEBOSS = 0
SET /a MINEBOSS2ALIVE = 1
SET /a BEATMINEBOSS2 = 0
SET /a GIMPLYALIVE = 1 
SET /a BEATGIMPLY = 0 
SET /a PALACEGUARD1ALIVE = 1 
SET /a BEATPALACEGUARD1 = 0 
SET /a PALACEGUARD2ALIVE = 1 
SET /a BEATPALACEGUARD2 = 0 
SET /a PALACEGUARD3ALIVE = 1 
SET /a BEATPALACEGUARD3 = 0 
SET /a PALACEGUARD4ALIVE = 1 
SET /a BEATPALACEGUARD4 = 0 
SET /a PALACEGUARD5ALIVE = 1 
SET /a BEATPALACEGUARD5 = 0 
SET /a PALACEGUARD6ALIVE = 1 
SET /a BEATPALACEGUARD6 = 0 
SET /a SEAKINGALIVE = 1 
SET /a BEATSEAKING = 0 
SET /a ALCHEMISTMON1ALIVE = 1 
SET /a BEATALCHEMISTMON1 = 0 
SET /a ALCHEMISTMON2ALIVE = 1 
SET /a BEATALCHEMISTMON2 = 0 
SET /a ALCHEMISTMON3ALIVE = 1 
SET /a BEATALCHEMISTMON3 = 0 
SET /a ALCHEMISTMON4ALIVE = 1 
SET /a BEATALCHEMISTMON4 = 0 
SET /a ALCHEMISTMON5ALIVE = 1 
SET /a BEATALCHEMISTMON5 = 0 
SET /a ALCHEMISTMON6ALIVE = 1 
SET /a BEATALCHEMISTMON6 = 0 
SET /a BANDITALIVE = 1 
SET /a BEATBANDIT = 0 
SET /a FORESTBOSSALIVE = 1 
SET /a BEATFORESTBOSS = 0 
SET /a RAGATAALIVE = 1 
SET /a BEATRAGATA = 0 
SET /a EMWEAPONALIVE = 1
SET /a BEATEMWEAPON = 0
SET /a BEATEMWEAPONCOUNT = 0
GOTO :EOF




SET /a COUNT = %BOSSIDSTART%
:LOOP
SET /a COUNT = %COUNT% + 1
SET /a !ENEMY%COUNT%NICKNAME!ALIVE = 1
SET /a BEAT!ENEMY%COUNT%NICKNAME! = 0
IF %COUNT% LSS %BOSSIDEND% (
	GOTO :LOOP
)
:EXCEPTIONS
REM The bouncer starts off inactive
SET /a BOUNCERALIVE = 0
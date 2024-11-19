@Echo Off
:    ANSiDude, An old DOS game re-coded in batch
:    Copyright (C) 1995 Vectorscope
:    Copyright (C) 2014 Honguito98
:
:    This program is free software: you can redistribute it and/or modify
:    it under the terms of the GNU General Public License as published by
:    the Free Software Foundation, either version 3 of the License, or
:    (at your option) any later version.
:
:    This program is distributed in the hope that it will be useful,
:    but WITHOUT ANY WARRANTY; without even the implied warranty of
:    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
:    GNU General Public License for more details.
:
:    You should have received a copy of the GNU General Public License
:    along with this program.  If not, see COPYING.TXT.

SetLocal EnableExtensions
	Chcp 1252 > Nul
	Call :Flush
	Mode 80,25
	Set Fn=Core\Seta_Core.dll
	Set Sd=Core\Sd
	Set Snd=Start /B "" Cmd /C %Fn% Play
	Set "Game=%~0"
	Set Err=-1
	Set LF=^


	::
	Set Macros=Gpu;Mov
	For %%# in (%Macros%) Do (
		Call :AutoMacro %%#
	)
	Setlocal EnabledelayedExpansion
		For %%# in (%Macros%) Do (
		Set ^"%%#=!%%#:[LF]=^%LF%%LF%!"
	)
	Set Macros=
	Title The Amazing Adventures Of ANSi Dude -Demo Only-
	For %%a in (
		Tab;HighScore
		Logo;Planet;Ground;
		Level1;Level2;Level3
	) Do Call :GetFopen %%a
	Set Reset=Off

	:Reset
	Call :Fopen !Logo.S! !Logo.E! L
	For %%! in (1) Do (
		For /L %%a in (1,1,12) Do Set "Tmp_=!Tmp_!!L[%%a]:~0,-1!\n "
		For /L %%a in (13,1,23) Do Set "Tmp__=!Tmp__!!L[%%a]:~0,-1!\n "
	)
	
	%Fn% Cursor 0
	%Fn% Sprite 0 0 !Tmp_!
	%Fn% Sprite 12 0 !Tmp__!
	If "%Reset%" Equ "Off" (
		(%Snd% %Sd%\Main.sd) & %Fn% Sleep 2400
	)
	Set Tmp_=&Set Tmp__=
	For /L %%a in (1,1,23) Do Set L[%%a]=
	:RndrM_
	Set O1=0f&Set O2=08&Set O2=08&Set O3=08&Set O4=08
	Set SO=1
	:RndrM
	%Fn% Sprite 14 4 ^
	%O1% "Start New Game                    \n" ^
	%O2% "Options                           \n" ^
	%O3% "Neato Stuff                       \n" ^
	%O4% "Exit to DOS                       \n"
	
	
:Main Menu
	%Fn% Kbd
	If !Errorlevel! Equ 327 (
		Set O!SO!=08
		Set/a SO-=1
		If !SO! Lss 1 Set SO=4
		Set O!SO!=0f
	)
	If !Errorlevel! Equ 335 (
		Set O!SO!=08
		Set/a SO+=1
		If !SO! Gtr 4 Set SO=1
		Set O!SO!=0f
	)
	If !Errorlevel! Equ 13 (
		If !SO! Equ 1 Goto :Start
		If !SO! Equ 2 Goto :Options
		If !SO! Equ 3 Goto :Neat
		If !SO! Equ 4 (
			Cls
			%Fn% Cursor 25
			Title !ComSpec!
			EndLocal & EndLocal
			Goto :Eof
		)
	)
	Goto :RndrM
	
:Options
Goto :RndrM_

:Neat
	Set O1=0f&Set O2=08&Set O2=08&Set O3=08&Set O4=08
	Set SO=1
	:Neat_
	%Fn% Sprite 14 4 ^
	%O1% "Credits                    \n" ^
	%O2% "Help And Control           \n" ^
	%O3% "High Score List            \n" ^
	%O4% "Exit to Main Menu          \n"
	%Fn% Kbd
	If !Errorlevel! Equ 327 (
		Set O!SO!=08
		Set/a SO-=1
		If !SO! Lss 1 Set SO=4
		Set O!SO!=0f
	)
	If !Errorlevel! Equ 335 (
		Set O!SO!=08
		Set/a SO+=1
		If !SO! Gtr 4 Set SO=1
		Set O!SO!=0f
	)
	If !Errorlevel! Equ 13 (
		If !SO! Equ 1 Rem
		If !SO! Equ 2 Rem
		If !SO! Equ 3 Goto :HighScore
		If !SO! Equ 4 Goto :RndrM_
	)
	Goto :Neat_

:HighScore
	SetLocal
	Set Cnt=0
	For /F "Tokens=1*" %%a in (Core\Score.Dat) Do (
		Set /a Cnt+=1
		If !Cnt! Equ 1 (
			Set "Sc=!Sc!2A "%%a\n\n" "
			Set "Nc=!Nc!2A "%%~b\n\n" "
		)
		If !Cnt! Equ 2 (
			Set "Sc=!Sc!0F "%%a\n" "
			Set "Nc=!Nc!0F "%%~b\n" "
		)
		If !Cnt! Equ 3 (
			Set "Sc=!Sc!0E "%%a\n" "
			Set "Nc=!Nc!0E "%%~b\n" "			
		)
		If !Cnt! Equ 4 (
			Set "Sc=!Sc!0C "%%a\n" "
			Set "Nc=!Nc!0C "%%~b\n" "
		)
		If !Cnt! Equ 5 (
			Set "Sc=!Sc!04 "%%a\n" "
			Set "Nc=!Nc!04 "%%~b\n" "
		)
		If !Cnt! Gtr 5 (
			Set "Sc=!Sc!08 "%%a\n" "
			Set "Nc=!Nc!08 "%%~b\n" "
		)
	)
	Call :Fopen !HighScore.S! !HighScore.E! L
	For %%! in (1) Do (
		For /L %%a in (1,1,12) Do Set "Tmp_=!Tmp_!!L[%%a]:~0,-1!\n "
		For /L %%a in (13,1,23) Do Set "Tmp__=!Tmp__!!L[%%a]:~0,-1!\n "
	)
	Cls
	%Fn% Sprite 0 0 !Tmp_!
	%Fn% Sprite 12 0 !Tmp__!
	%Fn% Sprite 12 29 2A #1 08 .
	%Fn% Sprite 12 33 %Sc%
	%Fn% Sprite 12 39 %Nc%
	EndLocal
	%Snd% %Sd%\Score.sd
	Call :FlushKey
	Pause >Nul & Set Reset=On & Cls
	Goto :Reset

:Start
	Call :Fopen !Planet.S! !Planet.E! L
	Set Tmp__=&Set Tmp_=
	For %%! in (1) Do (
		For /L %%a in (1,1,12) Do Set "Tmp_=!Tmp_!!L[%%a]:~0,-1!\n "
		For /L %%a in (13,1,23) Do Set "Tmp__=!Tmp__!!L[%%a]:~0,-1!\n "
	)
	For /L %%a in (1,1,23) Do Set L[%%a]=
	Cls
	%Fn% Sprite 3 5 !Tmp_!
	%Fn% Sprite 15 5 !Tmp__!
	%Fn% Cursor 25 & %Fn% Locate 10 79
	%Snd% %Sd%\Sc_pl.sd
	For /L %%a in (79,-1,45) Do (
		%Fn% Locate 10 %%a
		%Fn% Sleep 20
	)
	%Fn% Cursor 0 & %Fn% Locate 0 0
	%Fn% Sleep 600

	Call :Fopen !Ground.S! !Ground.E! L
	Set Tmp__=&Set Tmp_=
	For %%! in (1) Do (
		For /L %%a in (1,1,12) Do Set "Tmp_=!Tmp_!!L[%%a]:~0,-1!\n "
		For /L %%a in (13,1,25) Do Set "Tmp__=!Tmp__!!L[%%a]:~0,-1!\n "
	)
	For /L %%a in (1,1,23) Do Set L[%%a]=
	Cls
	%Fn% Sprite 0 0 !Tmp_!
	%Fn% Sprite 12 0 !Tmp__!
	%Snd% %Sd%\Sc_wy.sd
	For /L %%a in (0,1,60) Do (
		%Fn% Sprite 8 %%a 1F "       \n -[\F2\F2]-"
		For /L %%a in (1,1,1200) Do Rem
	)
	%Fn% Sleep 700
	%Snd% %Sd%\Sc_at.sd
	For /L %%a in (8,1,20) Do (
		%Fn% Sprite %%a 60 1F "       \n -[\F2\F2]-"
		%Fn% Sleep 20
	)
	%Fn% Sleep 1200
	Cls & %Fn% Color 08
	
	For %%a in (
	""
	"    You are ANSiDude, a free spirit with basically no purpose in life but"
	"to cruise around in your Unidentified Flying Object looking for a good time"
	"and maybe some evil to fry. Well recenty over the airwaves you've been"
	"hearing about some major evil on a small uncharted world in a small"
	"unchartered sector of the galaxy. It seems there's a whole ARMY of evil"
	"things down there, all commanded by TEBSOD (The Evil Blue Sphere Of Death)."
	"so you think, 'Hey, there's a whole lotta evil down there that could wreak"
	"havoc on personkind. I think I'll just go down and kick some major evil"
	"butt.'") Do Echo;%%~a
	%Fn% Color 07
	For %%a in (
	""
	"    While you approach the planet, you gather together a sonic pickaxe,"
	"a barrier synthesizer, a heavy-duty suction cup, and your trusty plasma"
	"rifle.") Do Echo;%%~a
	%Fn% Color 0F
	For %%a in (
	""
	"    As you feel your UFO touch down, the viewscreen shows a bright green"
	"meadow. The hatch opens . . .") Do Echo;%%~a
	%Fn% Color 07
	For %%a in (
	"Echo;"
	"Echo;"
	"Set/P=ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ") Do %%~a<Nul
	%Fn% Color 01 & Echo;Press any key to continue...
	
	Call :FlushKey
	%Fn% Kbd & Cls
	:kl
	Set "Player=0F \02 "
	Set "Block1=4E \B2 "
	Set "Pick=\2B"
	Set "Fire=EC \B2 "
	Set "Enemy=\99"
	Set "Battery=\9D"
	Set "Water=\7E"
	Set "Energy=\04"
	Set "Exit=\F2"
	Set "Bound1=\FF"
	Set "Bound2=\B0"
	Set "Bound3=\B1"
	Set "Bound4=\B2"
	Set "PowerUp=\DB"
	Set "T_RG=\1A"
	Set "T_LF=\1B"
	Set "T_UP=\18"
	Set "T_DN=\19"
	Set/a Map.Y=14,RdrL=0,ItN=1,EgyPnts=2,BtrPnts=350,Level=1,Lives=10,Keys=0,Score=0
	Call :LoadContent
	:Play_
	For %%a in (Margin;ItemS;Tab) Do Call :%%a
	%Gpu%
	%Snd% %Sd%\Allien.sd
	%Fn% Sleep 500 & Set Key=0
:Play
	For /L %%! in (1,1,100) Do (
		If Not Defined Enemies.Pos (
			For %%R in (!RdrL!) Do (
				%Fn% Gpu %%R 1 !L[%%R]!
				If !ErrorLevel! Neq 0 Set Key=!Errorlevel!
			)
		) Else (
			%Gpu%
			If !ErrorLevel! Neq 0 Set Key=!Errorlevel!
		)
		If !Key! Equ 362 Exit
		If !Key! Equ 327 %Mov% V - Player
		If !Key! Equ 335 %Mov% V + Player
		If !Key! Equ 332 %Mov% H + Player
		If !Key! Equ 330 %Mov% H - Player
		If !Key! Equ 27  Goto :GameOver
		If !Key! Equ 9 (
			Set I!ItN!=08
			Set/a ItN+=1
			If !ItN! Gtr 5 Set ItN=1
			Set I!Itn!=0C
			Call :ItemS
		)
		If !Key! Equ 32 (
			If !ItN! Equ 3 Call :Lasser_Gun
			If !ItN! Equ 5 Goto :Slf_Dtr
		)
		Rem Title !player.Pos! !RdrL! - !Errorlevel!
		Set Key=0
		For %%# in (!Enemies.Pos!) Do (
			Set "Enemy.Pos=%%#"
			Set/a "Rnd=!Random! %% 4,Rd=!Random! %% 2"
			rem If !Rnd! Equ 1 (
			For /F "Tokens=1-2 Delims=." %%x in ("!Player.Pos!") Do (
				For /F "Tokens=1-2 Delims=." %%a in ("%%#") Do (
					If !Rd! Equ 1 (
					If %%a Lss %%x Set En.Dir=V +
					If %%a Gtr %%x Set En.Dir=V -
					) else (
					If %%b Lss %%y Set En.Dir=H +
					If %%b Gtr %%y Set En.Dir=H -
					)
				)
				%Mov% !En.Dir! Enemy Ic
			)
			rem )
			Set "Enemies=!Enemies!,!Enemy.Pos!"
		)
		Set Enemies.Pos=!Enemies!
		Set "Enemies="
		If !Egypnts! Lss 1 (
			Set Dead=On
			Goto :Slf_Dtr
		)
	)
	Goto :Play
:Slf_Dtr
	%Snd% %Sd%\Dead.Sd
	:: Y X
	For %%a in (
	"4 4 DB" "5 4 B2"
	"3 4 B2" "4 3 B2"
	"4 5 B2" "6 4 B1"
	"2 4 B1" "5 3 B1"
	"5 5 B1" "3 3 B1"
	"3 5 B1" "4 2 B1"
	"4 6 B1" "4 1 B0"
	"4 7 B0" "7 4 B0"
	"1 4 B0" "6 3 B0"
	"6 5 B0" "2 3 B0"
	"2 5 B0" "3 2 B0"
	"3 6 B0" "5 2 B0"
	"5 6 B0"
	) Do (
		For /F "Tokens=1-2 Delims=." %%x in ("!Player.Pos!") Do Set/a X_=%%y/7,Y_=%%x
		For /F "Tokens=1-3 Delims= " %%x in ("%%~a") Do (
			Set/a "X=(%%y+X_)-4,Y=(%%x+Y_)-4"
			Set Chr=%%z
		)
		%Fn% Sprite !Y! !X! 4C \!Chr!
	)
	Call :FlushKey
	%Fn% Kbd
	If "!Dead!" Equ "On" (
		Set Dead=
		Set/a Lives-=1,EgyPnts=8
	)	
	If !Lives! Lss 1 (
		%Fn% Sleep 500
		Goto :GameOver
	)
	:Retry
	If !Level! Equ 1 Goto :Start
	Cls & Call :LoadContent
	Call :Msg & Cls
	Goto :Play_

:NextLvl
	Set/a Level+=1
	Cls & Call :LoadContent
	Call :Msg & Cls
	Goto :Play_

:LoadContent
	Set ItN=1
	Set I1=0C&Set I2=08&Set I3=08&Set I4=08&Set I5=08
	Set Player.Dir=H +
	Call :Fopen !Level%Level%.S! !Level%Level%.E! L
	Call :GetPst Player Player.Pos
	Call :GetPst Enemy Enemies.Pos Ic
	Goto :Eof
:Msg
	%Snd% %Sd%\Msg.sd
	Chcp 1252 >Nul
	%Fn% Sprite 07 0 !Msg!
	%Fn% Sprite 18 0 ^
		08 "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ\n"^
		09 "Press any key to continue..."
	Chcp 850 >Nul
	Call :FlushKey
	%Fn% Kbd
	Goto :Eof
	
:Lasser_Gun
	%Snd% %Sd%\Cut.Sd
	For /F "Tokens=1-2 Delims= " %%x in ("!Player.Dir!") Do (
		Set Dir=%%x
		Set Pos=%%y
	)
	For /F "Tokens=1-2 Delims=." %%x in ("!Player.Pos!") Do Set/a X=%%y,Y=%%x
	If !Dir! Equ V  (
		If !Pos! Equ - (
			Set "ForMode=For /L %%a in (!Y!,-1,1) Do"
		) Else (
			Set "ForMode=For /L %%a in (!Y!,1,14) Do"
		)
	) Else (
		If !Pos! Equ - (
			Set "ForMode=For /L %%a in (!X!,-7,7) Do"
		) Else (
			Set/a Map.X_=Map.X+7
			Set "ForMode=For /L %%a in (!X!,7,!Map.X_!) Do"
		)
	)
	If !Dir! Equ V (
		%ForMode% (
			Set/a X_=X-7
			For %%x in (!X_!) Do Set "Tmp_=!L[%%a]:~%%x,7!"
			For %%O in (Water;Battery;Energy;Live;Exit;) Do (
				If "!Tmp_:~3,3!" Equ "!%%O!" Goto :EndOf_LsG
			)
			If "!Tmp_!" Equ "!Fire!" (
				For /F "Tokens=1-2 Delims= " %%x in ("!X! !X_!") Do Set "L[%%a]=!L[%%a]:~0,%%y!00 \FF !L[%%a]:~%%x!"
				For %%x in (!X_!) Do Set "Tmp_=!L[%%a]:~%%x,7!"
			)
			If "!Tmp_:~3,3!" Equ "!Enemy!" (
				For /F "Tokens=1-2 Delims= " %%x in ("!X! !X_!") Do (
					Set "L[%%a]=!L[%%a]:~0,%%y!00 \FF !L[%%a]:~%%x!"
					Set Enemies.Pos=!Enemies.Pos:%%a.%%x=,!
					%Snd% %Sd%\Shot.sd
				)
				For %%x in (!X_!) Do Set "Tmp_=!L[%%a]:~%%x,7!"
				Goto :EndOf_LsG
			)
			If "!Tmp_:~3,3!" Neq "!Bound1!" (
			If "!Tmp_!" Neq "0F \02 " (
			If "!Tmp_!" Neq "" (
				For /F "Tokens=1-2 Delims= " %%x in ("!X! !X_!") Do Set "L[%%a]=!L[%%a]:~0,%%y!!Fire!!L[%%a]:~%%x!"
				Goto :EndOf_LsG
			)))
		)
	) Else (
		%ForMode% (
			Set/a "X_=%%a-7"
			For %%x in (!X_!) Do Set "Tmp_=!L[%Y%]:~%%x,7!"
			For %%O in (Water;Battery;Energy;Live;Exit;) Do (
				If "!Tmp_:~3,3!" Equ "!%%O!" Goto :EndOf_LsG
			)
			If "!Tmp_!" Equ "!Fire!" (
				For %%x in (!X_!) Do (
					Set "L[%Y%]=!L[%Y%]:~0,%%x!00 \FF !L[%Y%]:~%%a!"
					Set "Tmp_=!L[%Y%]:~%%x,7!"
				)
			)
			If "!Tmp_:~3,3!" Equ "!Enemy!" (
				For %%x in (!X_!) Do (
					Set "L[%Y%]=!L[%Y%]:~0,%%x!00 \FF !L[%Y%]:~%%a!"
					Set "Tmp_=!L[%Y%]:~%%x,7!"
					Set Enemies.Pos=!Enemies.Pos:%Y%.%%a=,!
					%Snd% %Sd%\Shot.sd
				)
				Goto :EndOf_LsG
			)
			If "!Tmp_:~3,3!" Neq "!Bound1!" (
			If "!Tmp_!" Neq "0F \02 " (
			If "!Tmp_!" Neq "" (
				For %%x in (!X_!) Do Set "L[%Y%]=!L[%Y%]:~0,%%x!!Fire!!L[%Y%]:~%%a!"
				Goto :EndOf_LsG
			)))
		)
	)
	:EndOf_LsG
	%Gpu%
	Goto :Eof

:GameOver
	%Snd% %Sd%\GameOver.sd
	Cls & Color 4C
	%Fn% Locate 11 28 & Echo;G A M E  O V E R ^^!
	%Fn% Sleep 3300 & Color 07 & Set Reset=On
	SetLocal
	Set Max=0& Set "Name="
	Del Core\Score.Dat_ >Nul 2>&1
	For /F "Tokens=1-2" %%X in (Core\Score.Dat) Do (
		rem Set /a Max+=1
		rem If Not !Max! Equ 10 (
			If Not Defined Name (
				If !Score! Geq %%X (
					Call :Hall
					Echo;!Score! "!Name!">> Core\Score.Dat_
				)
			) Else (
				Echo;%%X %%Y>> Core\Score.Dat_
			)
		rem )
	)
	If Defined Name (
		Del Core\Score.Dat >Nul 2>&1
		Ren Core\Score.Dat_ Score.Dat >Nul 2>&1
		EndLocal & Goto :HighScore
	)
	EndLocal
	Goto :Reset
:Hall
	%Snd% %Sd%\NewScore.sd
	%Fn% Sprite 11 24 A2 "YOU GOT ON THE HIGH SCORE LIST^!"
	For /L %%a in (1,1,5000) Do (
		Color !Random:~0,2!
	)
	:Hall_
	Color 07 & Cls
	%Fn% Sprite 10 20 ^
	09 \DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\n ^
	09 \DB 1C "Enter your name (16 chars or less) " 09 \DB\n ^
	09 \DB 1A ">                                  " 09 \DB\n ^
	09 \DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF\DF
	%Fn% Cursor 25 & %Fn% Locate 12 23 & %Fn% Color 1A
	Set /p Name=
	If Not Defined Name Goto :Hall_
	%Fn% Cursor 0 & Color 07
	Set "Name=!Name:~0,16!"
	Set Name=!Name:"=!
	Goto :Eof

:ShotEn
	%Snd% %Sd%\Shot.sd
	rem Title %1.%2 -
	rem Echo;!enemies.pos!>>tmp.txt
	rem pause>nul
	Set "Enemies.Pos=!Enemies.Pos:%1.%2,=,!"
	Set/a X_=%2-7
	For %%x in (!X_!) Do (
		Set "L[%1]=!L[%1]:~0,%%x!00 \FF !L[%1]:~%2!"
		Set "Tmp_=!L[%1]:~%%x,7!"
	)
	Goto :Eof

:Plat <Pos.Y - H/V> <Pos.X - +/->
	%Mov% %1 %2 Player Nop
	For /F "Tokens=1-2 Delims=." %%x in ("!Player.Pos!") Do Set/a X=%%y,Y=%%x
	If %1 Equ V  (
		If %2 Equ - (
			Set "ForMode=For /L %%a in (!Y!,-1,1) Do"
		) Else (
			Set "ForMode=For /L %%a in (!Y!,1,14) Do"
		)
	) Else (
		If %2 Equ - (
			Set "ForMode=For /L %%a in (!X!,-7,7) Do"
		) Else (
			Set/a Map.X_=Map.X+7
			Set "ForMode=For /L %%a in (!X!,7,!Map.X_!) Do"
		)
	)
	If %2 Equ V (
		%ForMode% (
			Set/a X_=X-7
			For %%x in (!X_!) Do Set "Tmp_=!L[%%a]:~%%x,7!"
	
			If "!Tmp_:~3,3!" Neq "!T_RG!" (
				For /F "Tokens=1-2 Delims= " %%x in ("!X! !X_!") Do Set "L[%%a]=!L[%%a]:~0,%%y!!Player!!L[%%a]:~%%x!"
			) Else Set "Player.Pos=!Y!.!X!"
		)
	) Else (
		%ForMode% (
			For /F "Tokens=1-2 Delims=." %%x in ("!Player.Pos!") Do Set "Tmp_=!L[%%x]:~%%y,7!"
			Set/a "X_=!X!"
			Rem For %%x in (!X_!) Do Set "Tmp_=!L[%Y%]:~%%x,7!"

			Rem If "!Tmp_!" Equ "!Player!" (
			Rem 	For %%x in (!X_!) Do (
			Rem 		Set "L[%Y%]=!L[%Y%]:~0,%%x!00 \FF !L[%Y%]:~%%a!"
			Rem 		Set "Tmp_=!L[%Y%]:~%%x,7!"
			Rem 	)
			Rem )


			If "!Tmp_:~3,3!" Equ "!T_RG!" (
				%Mov% H + Player Nop
			
				Rem If "!Tmp_!" Neq "" (
				Rem 	For %%x in (!X_!) Do Set "L[%Y%]=!L[%Y%]:~0,%%x!!Player!!L[%Y%]:~%%a!"
				Rem 	Set 
				Rem 	Set "Player.Pos=%Y%.!X_!"
				Rem )
			)
		)
	)
	:EndOf_LtG
	%Gpu%
	Goto :Eof
:ItemS
	%Fn% Sprite 19 32 ^
	%I1% \7B^
	%I2% \AD^
	%I3% \AF^
	%I4% \29^
	%I5% \9E
	Goto :Eof
:Tab
	If !EgyPnts! Lss 10 Set "Sp=\20"
	!Fn! Sprite 18 35 0a !Keys!\n\n!Lives!
	!Fn! Sprite 18 51 0a !EgyPnts!!Sp!\n!BtrPnts!\n!Score!
	!Fn! Sprite 20 71 0b !Level!"
	Goto :Eof

:FlushKey
	For /L %%a in (1,1,15) Do %Fn% _kbd
	Goto :Eof

:MoveTo
%Mov% %1 %2 Player
Goto :Eof
	
:Margin
	Set NL=
	For /L %%a in (1,1,78) Do Set Nl=!NL!\0
	Chcp 1252 >Nul
	For %%t in (1;2) Do If Not Defined Head%%t Set "Head%%t=ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
	%Fn% Sprite 0 0 ^
	0F  ÚÄ 07 ÄÄ 08 "ÄÄÄÄÄ++úúúúúúúúúúúúú++!Head1!++úúúúúúúúúúúúú++ÄÄÄÄÄ" 07 ÄÄ 0F Ä¿\n ^
	0F "³                                                                              ³\n"^
	07 "³                                                                              ³\n"^
	08 "³                                                                              ³\n"^
	08 "+                                                                              +\n"^
	08 "ú                                                                              ú\n"^
	08 "+                                                                              +\n"^
	08 "ú                                                                              ú\n"^
	08 "+                                                                              +\n"^
	08 "ú                                                                              ú\n"^
	08 "+                                                                              +\n"^
	08 "ú                                                                              ú\n"^
	08 "³                                                                              ³\n"^
	07 "³                                                                              ³\n"^
	0F "³                                                                              ³\n"^
	0F  ÀÄ 07 ÄÄ 08 "ÄÄÄÄÄ++úúúúúúúúúúúúú++!Head2!++úúúúúúúúúúúúú++ÄÄÄÄÄ" 07 ÄÄ 0F ÄÙ\n
	Chcp 850 >Nul
	Set "Nl="
	Call :Fopen !Tab.S! !Tab.E! T
	Set Tmp_=& Set Tmp__=
	For /L %%a in (1,1,8) Do (
		Set "Tmp_=!Tmp_!!T[%%a]:~0,-1!\n "
		Set T[%%a]=
	)
	%Fn% Sprite 17 0 !Tmp_!
	Set Tmp_=
	Goto :Eof

:Getpst <SpriteVar> <CoordVarname> [ignorecolor: ic]
	Call :GetLen L[1]
	Set "%2="
	Set Count=0
	For /F "Tokens=2 Delims=[]" %%y in ('Set^|Find /i "L["^|Find /i "!%1!"') Do (
		For /l %%x in (0,1,!Map.X!) Do (
			Set/a Col=%%x+7,Col_=%%x+3
			If /i "%3" Equ "Ic" (
				For %%C in (!Col_!) Do If /i "!L[%%y]:~%%C,3!" Equ "!%1!" (
					Set "%2=!%2!,%%y.!Col!"
					Set "$[%%y.!Col!]=00 \FF "
					Set/a Count+=1
				)
			)
			If /i "!L[%%y]:~%%x,7!" Equ "!%1!" (
				Set "%2=!%2!,%%y.!Col!"
				Set "$[%%y.!Col!]=00 \FF "
				Set/a Count+=1
			)
		)
	)
	If Defined %2 Set "%2=!%2:~1!"
	Goto :Eof

:GetLen
	Set "Str=!%1!"
	Set Map.X=0
    For /L %%A in (12,-1,0) Do (
		Set/a "Map.X|=1<<%%A"
		For %%B in (!Map.X!) Do If "!Str:~%%B,1!"=="" Set/a "Map.X&=~1<<%%A"
    )
	Set "Str="
	Goto :Eof

%== Load Internal File	==%
:GetFopen [Object]
Set Start=&Set End=
	For /F "Tokens=1 Delims=:" %%a in ('Findstr /N /B "</*%~1>" "%Game%"') Do (
		If Not Defined Start (
			Set/a Start=%%a
		) Else (
			Set/a End=%%a-1
		)
	)
	Set/a "%~1.s=%Start%,%~1.e=%End%"
	Goto :Eof

:Fopen [Obj.s] [Obj.e] [NameVar]
	Set "Obj.S=%~1"
	Set "Obj.E=%~2"
	Set/a Count=0,Cnt=!Obj.S!
	For /F "Skip=%Obj.S% Delims=" %%a in ('Type "%Game%"') Do (
		Set/a Count+=1,Cnt+=1
		If !Cnt! Gtr %Obj.E% Goto :Fopen_End
		Set "%3[!Count!]=%%a"
		For %%F in (!Count!) Do If /i "!%3[%%F]:~0,3!" Equ "Set" (
			%%a
			Set "%3[%%F]="
		)
	)
	:Fopen_End
	Goto :Eof
:Flush
	For /f "Tokens=1 Delims==" %%a in ('Set') Do (
	If /i "%%a" Neq "Comspec" (
	If /i "%%a" Neq "Tmp" (
	If /i "%%a" Neq "Userprofile" (
	IF /i "%%a" Neq "SystemRoot" (
	IF /i "%%a" Neq "SystemDrive" (
	Set "%%a=")))))
	)
	Set "Path=%comspec:~0,-8%;%SystemRoot%;%Comspec:~0,-8%\Wbem"
	Goto :Eof

:AutoMacro
	Set "Start="
	set "Tm=%Tmp%\Tmp.dat"
	Del "%Tm%">Nul 2>&1
	Set "End="
	Set "%~1="
	For /F "Tokens=1,3 Delims=>|:" %%a in ('Findstr /N /B "</*Function=%~1" "%Game%"') Do (
		If Not Defined Start (
			Set Start=%%a
			Set Type=%%b
		) Else (
			Set End=%%a
		)
	)
	If %Type% Equ 1 (
		<Nul Set/p=([LF]>>"%Tm%"
	)
	If %Type% Equ 2 (
		<Nul Set/p=For %%` in (0;1^) Do If %%` Equ 1 (For /F "Tokens=1-9" %%1 in ("!Argv!"^) Do ([LF]>>"%Tm%"
	)
	Set/a Start+=2
	For /F "Tokens=1* Skip=%Start% Delims=[]" %%a in ('Find /N /V "" "%Game%"') do (
		If %%a Geq %End% Goto :End
		<Nul Set/p=%%b[LF]>>"%Tm%"
	)
:End
	If %Type% Equ 1 (
		<Nul Set/p=^)>>"%Tm%"
	)
	If %Type% Equ 2 (
		<Nul Set/p=^)^) Else Set Argv=>>"%Tm%"
	)

	(
	For /F "Delims=" %%a in ('Type "%Tm%"') Do Set "%~1=%%a"
	) >Nul 2>&1 || Goto :ErrMacro
	Del "%Tm%">Nul 2>&1
	Set Tm=& Set Start=& Set End=
	Goto :Eof
:ErrMacro
	Set/a Start-=2
	For %%a in (
	"Macro Setup Failure from line:"
	"	Start: '%Start%'"
	"	End:   '%End%'"
	"	Expected '%~1' macro with size less than 8KB {8010B} (8100 Letters)"
	) Do Echo;%%~a
	Pause>Nul
	Exit

%== Macros Area ==%
<Function=Gpu|1>
	!Fn! Gpu 1 1 ^
	!L[1]:~0,-1!\n ^
	!L[2]:~0,-1!\n ^
	!L[3]:~0,-1!\n ^
	!L[4]:~0,-1!\n ^
	!L[5]:~0,-1!\n ^
	!L[6]:~0,-1!\n ^
	!L[7]:~0,-1!\n ^
	!L[8]:~0,-1!\n ^
	!L[9]:~0,-1!\n ^
	!L[10]:~0,-1!\n ^
	!L[11]:~0,-1!\n ^
	!L[12]:~0,-1!\n ^
	!L[13]:~0,-1!\n ^
	!L[14]:~0,-1!\n ^
)
</Function=Gpu>

<Function=Mov|2>
	For /F "Tokens=1-2 Delims=." %x in ("!%3.Pos!") Do Set/a Y=%x,X=%y
	If %1 Equ H (
		Set/a n=X%27
		If !n! Gtr !Map.X! Set Err=1
		If !n! Lss 1 Set Err=1
		If "%3" Equ "Player" Set RdrL=!Y!;
		Set/a Col=n-7
		For /F "Tokens=1-2" %x in ("!Y! !Col!") Do Set "Chr=!L[%x]:~%y,7!"
	) Else (
		Set/a n=Y%21

		If !n! Gtr !Map.Y! Set Err=1
		If !n! lss 1 Set Err=1
		If "%3" Equ "Player" Set RdrL=!Y!;!n!;
		Set/a Col=X-7
		For /F "Tokens=1-2" %x in ("!N! !Col!") Do Set "Chr=!L[%x]:~%y,7!"
	)
	Set "Ch2=!Chr:~3,3!"
	Set Err=1
	Rem FOR /F "Tokens=1-2 Delims= " %K in ("!CHR2! !CHR!")
	If /i "!Ch2!" Equ "!Bound1!" Set Err=-1
	If /i "!Ch2!" Equ "!Bound2!" Set Err=-1
	If /i "!Ch2!" Equ "!Bound3!" Set Err=-1
	If /i "!Ch2!" Equ "!Bound4!" Set Err=-1

	If %3 Equ Enemy (
		If /i "!Ch2!" Equ "!Enemy!" Set Err=1
		If /i "!Chr!" Equ "!Player!" (
			For %z in ("!Snd!") Do %~z !Sd!\Water.Sd
			Set/a EgyPnts-=2
			Set Err=1
			Call :Tab
		)
	)
	If %3 Equ Player (
		Set Player.Dir=%1 %2
		If /i "!Ch2!" Equ "!Enemy!" (
			For %z in ("!Snd!") Do %~z !Sd!\Water.Sd
			Set /a Err=1
			Call :Tab
		)
		If /i "!Ch2!" Equ "!Exit!" (
			Goto :NextLvl
		)
		If /i "!Ch2!" Equ "!Energy!" (
			Set/a EgyPnts+=1,Err=-1,Score+=3
			Set "Chr=00 \FF "
			For %z in ("!Snd!") Do %~z !Sd!\Energy.sd
			Call :Tab
		)
		If /i "!Ch2!" Equ "!Battery!" (
			Set/a Err=-1,BtrPnts+=1,Score+=1
			Set "Chr=00 \FF "
			Call :Tab
			For %z in ("!Snd!") Do %~z !Sd!\Battery.sd
		)
		If /i "!Ch2!" Equ "!Pick!" (
			Set/a Err=-1,EgyPnts-=1
			For %z in ("!Snd!") Do %~z !Sd!\Pick.sd
			Set "Chr=00 \FF "
			Call :Tab
		)

		If /i "!Chr!" Equ "!Fire!" (
			Set Err=-1
			Set "Chr=00 \FF "
			For %z in ("!Snd!") Do %~z !Sd!\Reget.sd
		)
		If /i "!Ch2!" Equ "!T_RG!" (
			Set Err=-1
			If /i "%4" Neq "Nop" (
				Call :Plat %1 %2
				Set Err=1
			)
		)
		Rem If /i "!Ch2!" Equ "!T_LF!" (
		Rem 	Set Err-=1
		Rem 	Call :MoveTo H -
		Rem )
		Rem If /i "!Ch2!" Equ "!T_UP!" (
		Rem 	Set Err-=1
		Rem 	Call :MoveTo V -
		Rem )
		Rem If /i "!Ch2!" Equ "!T_DN!" (
		Rem 	Set Err-=1
		Rem 	Call :MoveTo V +
		Rem )
		If /i "!Ch2!" Equ "!Water!" (
			For %z in ("!Snd!") Do %~z !Sd!\Water.sd
		)
		If "!Chr!" Equ "09 \DB " (
			Set Err=-1
			Set PwrUp=On
			Set "Chr=00 \FF "
			For %z in ("!Snd!") Do %~z !Sd!\PowerUp.sd
		)
	)
	If "!Chr!" Equ "!Block1!" Set Err=1

If !Err! Equ -1 ( 

	Set/a Col=X-7
	For /F "Tokens=1-3" %x in ("!X! !Y! !Col!") Do (
		If /i "%4" Equ "Ic" Set Cll=!L[%y]:~%z,2!
		Set "L[%y]=!L[%y]:~0,%z!!$[%y.%x]!!L[%y]:~%x!"
	)

	IF %1 Equ H (
		Set/a Col=!n!-7
		For /F "Tokens=1-4" %w in ("!N! !X! !Y! !Col!") Do (
			Set "$[%y.%w]=!Chr!"
			If /i "%4" Equ "Ic" (
				Set "L[%y]=!L[%y]:~0,%z!!Cll! !%3! !L[%y]:~%w!"
			) Else (
				Set "L[%y]=!L[%y]:~0,%z!!%3!!L[%y]:~%w!"
			)
			Set %3.Pos=%y.%w
		)
	) Else (
		For /F "Tokens=1-3" %w in ("!N! !X! !Col!") Do (
			Set "$[%w.%x]=!Chr!"
			If /i "%4" Equ "Ic" (
				Set "L[%w]=!L[%w]:~0,%y!!Cll! !%3! !L[%w]:~%x!"
			) Else (
				Set "L[%w]=!L[%w]:~0,%y!!%3!!L[%w]:~%x!"
			)
			Set %3.Pos=%w.%x
		)
	)
	Set $[!Y!.!X!]=
)
Set Err=-1
</Function=Mov>

Rem For %%a in (
Rem                            "1 4 B0" 
Rem                   "2 3 B0" "2 4 B1" "2 5 B0"
Rem          "3 2 B0" "3 3 B1" "3 4 B2" "3 5 B1" "3 6 B0"
Rem "4 1 B0" "4 2 B1" "4 3 B2" "4 4 DB" "4 5 B2" "4 6 B1" "4 7 B0"
Rem          "5 2 B0" "5 3 B1" "5 4 B2" "5 5 B1" "5 6 B0"
Rem 	              "6 3 B0" "6 4 B1" "6 5 B0"
Rem 			               "7 4 B0"
Rem ) Do (Rem)


%== Logos And Maps Area ==%
<Tab>
08 \B3 08 \FF 08 \FF 08 \FF 08 \FF 04 \B0 04 \B1 04 \B2 04 \DB 4C \B0 4C \B1 4C \B2 4C \DB 4C \B2 4C \B1 4C \B0 04 \DB 04 \B2 04 \B1 04 \B0 08 \B3 08 \B3 08 \B3 08 \B3 05 \B0 05 \B1 05 \B2 05 \DB 5D \B0 5D \B1 5D \B2 5D \DB 5D \B2 5D \B1 5D \B0 05 \DB 05 \B2 05 \B1 05 \B0 08 \B3 08 \B3 01 \B0 01 \B1 01 \B2 01 \DB 19 \B0 19 \B1 19 \B2 19 \DB 19 \B2 19 \B1 19 \B0 01 \DB 01 \B2 01 \B1 01 \B0 08 \B3 08 \B3 08 \B3 08 \B3 02 \B0 02 \B1 02 \B2 02 \DB 2A \B0 2A \B1 2A \B2 2A \DB 2A \B2 2A \B1 2A \B0 02 \DB 02 \B2 02 \B1 02 \B0 08 \FF 08 \FF 08 \FF 08 \FF 08 \B3 
07 \B3 07 \FF 07 \FF 07 \FF 07 \FF 04 \B0 04 \B1 0C \54 04 \68 04 \65 07 \20 0C \41 04 \6d 04 \61 04 \7a 04 \69 04 \6e 04 \67 04 \B1 04 \B0 07 \B3 07 \B3 07 \B3 07 \B3 05 \B0 05 \B1 0F \4b 0B \45 09 \59 01 \43 01 \41 09 \52 0B \44 0F \53 0D \3D 00 \FF 00 \FF 05 \B1 05 \B0 07 \B3 07 \B3 01 \B0 01 \B1 04 \45 0C \4e 0E \45 0E \52 0C \47 04 \59 09 \3D 00 \FF 00 \FF 00 \FF 00 \FF 01 \B1 01 \B0 07 \B3 07 \B3 07 \B3 07 \B3 02 \B0 02 \B1 0A \56 02 \65 02 \63 02 \74 02 \6f 02 \72 02 \73 02 \63 02 \6f 02 \70 02 \65 02 \B1 02 \B0 07 \FF 07 \FF 07 \FF 07 \FF 07 \B3 
0F \B3 0F \FF 0F \FF 0F \FF 0F \FF 04 \B0 04 \B1 0C \41 04 \64 04 \76 04 \65 04 \6e 04 \74 04 \75 04 \72 04 \65 04 \73 00 \FF 04 \B1 04 \B0 0F \B3 0F \B3 0F \B3 0F \B3 05 \B0 05 \B1 0C \49 0E \54 0A \45 09 \4d 0D \53 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 05 \B1 05 \B0 0F \B3 0F \B3 01 \B0 01 \B1 05 \42 0D \41 0D \54 0D \54 0D \45 0D \52 05 \59 09 \3D 00 \FF 00 \FF 00 \FF 01 \B1 01 \B0 0F \B3 0F \B3 0F \B3 0F \B3 02 \B0 02 \B1 0A \48 02 \6f 02 \6e 02 \67 02 \75 02 \69 02 \74 02 \6f 02 \39 02 \38 00 \FF 02 \B1 02 \B0 0F \FF 0F \FF 0F \FF 0F \FF 0F \B3 
07 \B3 07 \FF 07 \FF 07 \FF 07 \FF 04 \B0 04 \B1 0C \4f 04 \66 07 \20 0C \41 04 \4e 04 \53 04 \69 0C \44 04 \75 04 \64 04 \65 04 \B1 04 \B0 07 \B3 07 \B3 07 \B3 07 \B3 05 \B0 05 \B1 0C \02 0C \4c 0D \49 05 \56 0D \45 0C \53 0C \02 0D \3D 00 \FF 00 \FF 00 \FF 05 \B1 05 \B0 07 \B3 07 \B3 01 \B0 01 \B1 08 \53 07 \43 0F \4f 07 \52 08 \45 09 \3D 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \B1 01 \B0 07 \B3 07 \B3 07 \B3 07 \B3 02 \B0 02 \B1 00 \FF 00 \FF 0B \4c 03 \65 0B \76 03 \65 0B \6c 09 \23 00 \FF 00 \FF 00 \FF 02 \B1 02 \B0 07 \FF 07 \FF 07 \FF 07 \FF 07 \B3 
08 \B3 08 \FF 08 \FF 08 \FF 08 \FF 04 \B0 04 \B1 04 \B2 04 \DB 4C \B0 4C \B1 4C \B2 4C \DB 4C \B2 4C \B1 4C \B0 04 \DB 04 \B2 04 \B1 04 \B0 08 \B3 08 \B3 08 \B3 08 \B3 05 \B0 05 \B1 05 \B2 05 \DB 5D \B0 5D \B1 5D \B2 5D \DB 5D \B2 5D \B1 5D \B0 05 \DB 05 \B2 05 \B1 05 \B0 08 \B3 08 \B3 01 \B0 01 \B1 01 \B2 01 \DB 19 \B0 19 \B1 19 \B2 19 \DB 19 \B2 19 \B1 19 \B0 01 \DB 01 \B2 01 \B1 01 \B0 08 \B3 08 \B3 08 \B3 08 \B3 02 \B0 02 \B1 02 \B2 02 \DB 2A \B0 2A \B1 2A \B2 2A \DB 2A \B2 2A \B1 2A \B0 02 \DB 02 \B2 02 \B1 02 \B0 00 \FF 00 \FF 00 \FF 00 \FF 08 \B3 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 04 \B0 04 \B1 04 \B2 04 \DB 4C \B0 4C \B1 4C \B0 04 \DB 04 \B2 04 \B1 04 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 05 \B0 05 \B1 05 \B2 05 \DB 5D \B0 5D \B2 5D \B0 05 \DB 05 \B2 05 \B1 05 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \B0 01 \B1 01 \B2 01 \DB 19 \B0 19 \B1 19 \B0 01 \DB 01 \B2 01 \B1 01 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 02 \B0 02 \B1 02 \B2 02 \DB 2A \B0 2A \B2 2A \B0 02 \DB 02 \B2 02 \B1 02 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 04 \B0 04 \B1 04 \B2 04 \DB 04 \B2 04 \B1 04 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 05 \B0 05 \B1 05 \B2 05 \DB 05 \B2 05 \B1 05 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \B0 01 \B1 01 \B2 01 \DB 01 \B2 01 \B1 01 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 02 \B0 02 \B1 02 \B2 02 \DB 02 \B2 02 \B1 02 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 04 \B0 04 \B1 04 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 05 \B0 05 \B1 05 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \B0 01 \B1 01 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 02 \B0 02 \B1 02 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FF 
</Tab>
<HighScore>
2F \DB 7F \B2 7F \B1 7F \B0 77 \DB 87 \B2 87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \54 08 \68 08 \65 07 \20 08 \41 08 \6d 08 \61 08 \7a 08 \69 08 \6e 08 \67 07 \20 08 \41 08 \64 08 \76 08 \65 08 \6e 08 \74 08 \75 08 \72 08 \65 08 \73 07 \20 08 \6f 08 \66 07 \20 08 \41 08 \4e 08 \53 08 \69 00 \FF 08 \44 08 \75 08 \64 08 \65 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 87 \B2 77 \DB 7F \B0 7F \B1 7F \B2 2F \DB 
7F \B0 77 \DB 87 \B2 87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 87 \B2 77 \DB 7F \B0 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 0F \11 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 00 \FF 00 \FF 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 0F \10 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 0B \11 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 07 \DB 07 \DB 00 \FF 7F \28 78 \29 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 7F \28 78 \29 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0B \10 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 03 \11 00 \FF 7F \28 78 \29 7F \28 78 \29 7F \28 78 \29 00 \FF 7F \28 78 \29 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 7F \28 78 \29 7F \28 78 \29 7F \28 78 \29 00 \FF 00 \FF 00 \FF 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 7F \28 78 \29 00 \FF 00 \FF 00 \FF 03 \10 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 09 \11 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 07 \DB 07 \DB 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 7F \28 78 \29 00 \FF 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \10 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \11 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 00 \FF 00 \FF 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 7F \28 78 \29 00 \FF 00 \FF 7F \28 78 \29 00 \FF 7F \28 78 \29 07 \DB 07 \DB 7F \28 78 \29 00 \FF 01 \10 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \DB 01 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 0C \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \23 0F \32 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0C \01 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 01 \DB 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \DB 01 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 0E \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0E \23 0E \33 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0E \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 01 \DB 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0A \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0C \23 0C \34 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0A \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 04 \23 04 \35 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0D \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \23 08 \36 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0D \01 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 01 \DB 01 \DB 01 \DB 09 \DB 09 \DB 09 \DB 09 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \23 08 \37 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 09 \DB 09 \DB 09 \DB 09 \DB 01 \DB 01 \DB 01 \DB 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \23 08 \38 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 01 \DB 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 
7F \B0 77 \DB 87 \B2 87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \23 08 \39 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 87 \B2 77 \DB 7F \B0 
2F \DB 7F \B2 7F \B1 7F \B0 77 \DB 87 \B2 87 \B1 87 \B0 88 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \23 08 \31 08 \30 08 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 88 \DB 87 \B0 87 \B1 87 \B2 77 \DB 7F \B0 7F \B1 7F \B2 2F \DB 
</HighScore>
<Logo>
09 \54 01 \68 01 \65 07 \20 09 \41 01 \6d 01 \61 01 \7a 01 \69 01 \6e 01 \67 07 \20 09 \41 01 \64 01 \76 01 \65 01 \6e 01 \74 01 \75 01 \72 01 \65 01 \73 07 \20 09 \4f 01 \66 07 \20 01 \2E 01 \2E 01 \2E 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \43 08 \6f 08 \70 08 \79 08 \72 08 \69 08 \67 08 \68 08 \74 07 \20 08 \28 08 \63 08 \29 07 \20 08 \56 08 \65 08 \63 08 \74 08 \6f 08 \72 08 \73 08 \63 08 \6f 08 \70 08 \65 07 \20 08 \31 08 \39 08 \39 08 \35 
00 \FF 00 \FF 00 \FF 00 \FF 0F \DA 0F \C4 0F \C4 0F \C4 07 \C4 07 \C4 08 \C4 08 \C4 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \43 08 \6f 08 \70 08 \79 08 \72 08 \69 08 \67 08 \68 08 \74 07 \20 08 \28 08 \63 08 \29 07 \20 08 \48 08 \6f 08 \6e 08 \67 08 \75 08 \69 08 \74 08 \6f 08 \39 08 \38 07 \20 00 \FF 08 \32 08 \30 08 \31 08 \34 
00 \FF 00 \FF 00 \FF 00 \FF 0F \B3 00 \FF 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 00 \FF 00 \FF 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 07 \DB 00 \FF 07 \DB 07 \DB 07 \DB 07 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 07 \B3 7F \B0 7F \B0 7F \B0 7F \B0 7F \B0 7F \B0 7F \B0 7F \B0 7F \B0 00 \FF 00 \FF 00 \FF 7F \B0 7F \B0 7F \B0 7F \B0 00 \FF 00 \FF 7F \B0 7F \B0 7F \B0 7F \B0 00 \FF 7F \B0 7F \B0 7F \B0 7F \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DA 0F \C4 0F \C4 0F \C4 07 \C4 07 \C4 08 \C4 08 \C4 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 7F \B1 7F \B1 7F \B1 7F \B1 00 \FF 00 \FF 7F \B1 7F \B1 7F \B1 7F \B1 00 \FF 00 \FF 7F \B1 7F \B1 7F \B1 7F \B1 00 \FF 00 \FF 7F \B1 7F \B1 7F \B1 7F \B1 00 \FF 7F \B1 7F \B1 7F \B1 7F \B1 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 7F \B1 7F \B1 7F \B1 7F \B1 00 \FF 00 \FF 00 \FF 0F \B3 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 00 \FF 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 00 \FF 19 \B0 00 \FF 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 00 \FF 00 \FF 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 19 \B0 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 7F \B2 7F \B2 7F \B2 7F \B2 00 \FF 00 \FF 00 \FF 7F \B2 7F \B2 7F \B2 7F \B2 00 \FF 7F \B2 7F \B2 7F \B2 7F \B2 00 \FF 00 \FF 7F \B2 7F \B2 7F \B2 7F \B2 00 \FF 7F \B2 7F \B2 7F \B2 7F \B2 7F \B2 7F \B2 7F \B2 7F \B2 7F \B2 7F \B2 00 \FF 7F \B2 7F \B2 7F \B2 7F \B2 00 \FF 00 \FF 00 \FF 07 \B3 00 \FF 00 \FF 00 \FF 00 \FF 19 \B1 19 \B0 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 00 \FF 19 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 19 \B1 19 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DB 0F \DB 0F \DB 0F \DB 0F \DC 0F \DC 0F \DC 0F \DC 0F \DB 0F \DB 0F \DB 00 \FF 0F \DB 0F \DB 0F \DB 0F \DB 00 \FF 00 \FF 0F \DB 0F \DB 0F \DB 0F \DB 00 \FF 0F \DF 0F \DF 0F \DF 0F \DF 0F \DF 0F \DF 0F \DB 0F \DB 0F \DB 0F \DB 00 \FF 0F \DB 0F \DB 0F \DB 0F \DB 08 \FA 00 \FF 00 \FF 08 \B3 01 \DB 19 \B0 00 \FF 00 \FF 19 \B1 19 \B0 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 00 \FF 19 \B0 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 19 \B1 19 \B0 00 \FF 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 19 \B0 08 \B3 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B0 08 \B0 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B0 08 \B0 00 \FF 08 \B0 08 \B0 08 \B0 08 \B0 00 \FF 00 \FF 08 \B0 08 \B0 08 \B0 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B0 08 \B0 08 \B0 00 \FF 08 \B0 08 \B0 08 \B0 08 \B0 08 \FA 00 \FF 00 \FF 08 \FA 01 \DB 19 \B0 00 \FF 00 \FF 19 \B1 19 \B0 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 00 \FF 19 \B0 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 19 \B1 19 \B0 00 \FF 01 \DB 19 \B0 00 \FF 00 \FF 00 \FF 00 \FF 07 \B3 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B1 08 \B1 08 \B1 08 \B1 00 \FF 00 \FF 00 \FF 00 \FF 08 \B1 08 \B1 08 \B1 00 \FF 08 \B1 08 \B1 08 \B1 08 \B1 00 \FF 00 \FF 08 \B1 08 \B1 08 \B1 08 \B1 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B1 08 \B1 08 \B1 08 \B1 00 \FF 08 \B1 08 \B1 08 \B1 08 \B1 08 \B3 00 \FF 00 \FF 08 \FA 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 00 \FF 00 \FF 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 19 \B0 00 \FF 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 00 \FF 00 \FF 01 \DB 19 \B0 19 \B1 19 \B2 19 \B1 19 \B0 0F \B3 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B2 08 \B2 08 \B2 08 \B2 00 \FF 00 \FF 00 \FF 00 \FF 08 \B2 08 \B2 08 \B2 00 \FF 08 \B2 08 \B2 08 \B2 08 \B2 00 \FF 00 \FF 08 \B2 08 \B2 08 \B2 08 \B2 00 \FF 08 \B2 08 \B2 08 \B2 08 \B2 08 \B2 08 \B2 08 \B2 08 \B2 08 \B2 08 \B2 00 \FF 08 \B2 08 \B2 08 \B2 08 \B2 07 \B3 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \C4 08 \C4 07 \C4 07 \C4 0F \C4 0F \C4 0F \C4 0F \D9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \DB 08 \DB 08 \DB 08 \DB 00 \FF 00 \FF 00 \FF 00 \FF 08 \DB 08 \DB 08 \DB 00 \FF 08 \DB 08 \DB 08 \DB 08 \DB 00 \FF 00 \FF 08 \DB 08 \DB 08 \DB 08 \DB 00 \FF 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 00 \FF 08 \DB 08 \DB 08 \DB 08 \DB 0F \B3 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \FA 08 \C4 08 \C4 07 \C4 07 \C4 0F \C4 0F \C4 0F \C4 0F \D9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \42 08 \61 08 \74 08 \63 08 \68 07 \20 08 \76 08 \65 08 \72 08 \73 08 \69 08 \6f 08 \6e 07 \20 08 \32 08 \2E 08 \31 
0F \DB 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 7F \DF 78 \DC 
0F \DB 07 \DB 08 \DB 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 08 \DF 7F \DC 07 \DB 08 \DB 
0F \DB 07 \DB 08 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DB 07 \DB 08 \DB 
0F \DB 07 \DB 08 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DB 07 \DB 08 \DB 
0F \DB 07 \DB 08 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DB 07 \DB 08 \DB 
0F \DB 07 \DB 08 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DB 07 \DB 08 \DB 
0F \DB 07 \DB 08 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DB 07 \DB 08 \DB 
0F \DB 07 \DB 78 \DF 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DC 0F \DB 07 \DB 08 \DB 
7F \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 87 \DF 08 \DB 
00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 08 \DB 78 \B2 78 \B1 78 \B0 07 \DB 7F \B0 7F \B1 7F \B2 7F \DB 7F \B2 7F \B1 7F \B0 07 \DB 78 \B0 78 \B1 78 \B2 08 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B0 08 \B1 08 \B2 08 \DB 78 \B2 78 \B1 78 \B0 07 \DB 7F \B0 7F \B1 7F \B2 7F \DB 7F \B2 7F \B1 7F \B0 07 \DB 78 \B0 78 \B1 78 \B2 08 \DB 08 \B2 08 \B1 08 \B0 00 \FF 00 \FF 00 \FF 00 \FF 
</Logo>

<Planet>
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 07 \FA 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 00 \FF 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 08 \FA 07 \FA 07 \FA 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \DC 09 \DC 9F \B0 9F \B1 9F \B2 97 \DB F7 \B0 F7 \B0 97 \DB 9F \B2 9F \B1 9F \B0 09 \DC 09 \DC 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 08 \FA 08 \FA 00 \FF 07 \FA 07 \FA 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 02 \DB 92 \B2 12 \B1 12 \B0 09 \DB 09 \DB 12 \B0 12 \B1 12 \B2 12 \DB 12 \B2 12 \B1 12 \B0 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 00 \FF 08 \FA 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 08 \FA 08 \FA 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 92 \DB 92 \B2 92 \B1 92 \B0 92 \B0 92 \B0 92 \B1 92 \B2 92 \DB A2 \B0 A2 \B1 A2 \B0 92 \DB 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 07 \FA 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 07 \FA 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 92 \B2 92 \DB A2 \B0 92 \DB 92 \B2 92 \B1 92 \B0 92 \B0 92 \B1 92 \B2 92 \DB A2 \B0 92 \DB 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 08 \FA 07 \FA 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \B3 92 \B0 92 \B1 92 \B2 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B2 A2 \DB A2 \DB 92 \B2 92 \B1 92 \B0 09 \DB 92 \B0 92 \B1 92 \B0 09 \DB 09 \B3 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 08 \FA 08 \FA 08 \FA 08 \FA 00 \FF 00 \FF 07 \FA 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \DB 09 \DB 92 \B0 92 \B1 92 \B1 92 \B0 92 \B0 92 \B1 92 \B2 92 \DB 92 \B2 92 \B1 92 \B1 92 \B2 92 \B2 92 \B1 92 \B0 09 \DB 92 \B0 92 \B1 92 \B2 92 \B1 92 \B0 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 07 \FA 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \B3 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B2 92 \DB A2 \B0 A2 \B0 92 \DB 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B2 92 \B1 92 \B0 09 \DB 09 \B3 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B2 92 \DB A2 \B0 92 \DB 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B0 09 \DB 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B2 92 \DB 92 \DB 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \DF 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 09 \DB 92 \B0 92 \B1 92 \B2 92 \DB 92 \B2 92 \B1 92 \B0 09 \DB 09 \DB 09 \DB 09 \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 08 \FA 07 \FA 00 \FF 00 \FF 00 \FF 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \DF 09 \DF 9F \B0 9F \B1 9F \B2 97 \DB F7 \B0 F7 \B0 97 \DB 9F \B2 9F \B1 9F \B0 09 \DF 09 \DF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 08 \FA 08 \FA 08 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 07 \FA 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 08 \F9 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \F9 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 
</Planet>

<Ground>
78 \B0 78 \B1 78 \B2 78 \DB 18 \B2 11 \B1 18 \B0 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 87 \B0 87 \B1 87 \B2 87 \DB 8F \B0 8F \B1 8F \B2 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \B2 8F \B1 8F \B0 87 \DB 87 \B2 87 \B1 87 \B0 18 \DB 18 \B2 18 \B1 18 \B2 18 \DB 87 \B0 87 \B1 87 \B2 87 \DB 8F \B0 8F \B1 8F \B2 8F \DB 8F \B2 8F \B1 8F \B0 87 \DB 87 \B2 87 \B1 87 \B0 18 \DB 18 \B2 18 \B1 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 87 \B0 77 \B1 7F \B0 7F \B1 7F \B1 7F \B0 77 \B1 78 \B0 78 \B1 78 \B2 78 \DB 18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 
78 \B2 78 \DB 18 \B2 18 \B1 18 \B0 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 87 \B0 87 \B1 87 \B2 87 \DB 8F \B0 8F \B1 8F \B2 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \B2 8F \B1 8F \B0 87 \DB 87 \B2 87 \B1 87 \B0 18 \DB 18 \B2 18 \B2 18 \B2 18 \DB 87 \B0 87 \B1 87 \B2 87 \DB 8F \B0 8F \B1 8F \B2 8F \DB 8F \B2 8F \B1 8F \B0 87 \DB 87 \B2 87 \B1 87 \B0 18 \DB 18 \B2 18 \B1 11 \B1 18 \B2 18 \DB 78 \B2 78 \B1 87 \B0 77 \B1 7F \B0 7F \B1 7F \B1 7F \B0 77 \B1 78 \B0 78 \B1 78 \B2 78 \DB 18 \B2 18 \DB 78 \B2 78 \B1 87 \B0 77 \B1 7F \B0 7F \B1 7F \B1 7F \B0 
78 \DB 18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 87 \B0 87 \B1 87 \B2 87 \DB 8F \B0 8F \B1 8F \B2 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \DB 8F \B2 8F \B1 8F \B0 87 \DB 87 \B2 87 \B1 87 \B0 18 \DB 18 \B2 18 \B1 18 \B2 11 \B1 18 \B1 18 \B2 18 \DB 87 \B0 87 \B1 87 \B2 87 \DB 8F \B0 8F \B1 8F \B2 8F \DB 8F \B2 8F \B1 8F \B0 87 \DB 87 \B2 87 \B1 87 \B0 18 \DB 18 \B2 11 \B1 18 \B2 18 \DB 78 \B2 78 \B1 87 \B0 77 \B1 7F \B0 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 
78 \B2 78 \DB 18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 7F \B0 77 \DB 78 \B0 78 \B1 78 \B2 18 \DB 18 \B2 18 \B1 18 \B0 18 \B0 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 7F \B0 77 \DB 78 \B0 78 \B1 78 \B2 18 \DB 18 \B2 18 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 7F \B0 77 \DB 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 
18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 7F \B0 77 \DB 78 \B0 78 \B1 78 \B2 18 \DB 18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \B2 11 \B1 18 \B0 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 18 \B1 18 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 7F \B1 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B1 18 \B2 18 \DB 78 \B2 78 \B1 78 \B0 77 \DB 7F \B0 7F \B1 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 18 \B0 18 \B1 18 \B2 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
1A \05 14 \5F 14 \5F 14 \5F 12 \05 14 \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 14 \5F 14 \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 12 \05 14 \5F 14 \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 14 \5F 14 \5F 14 \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B0 64 \B0 64 \B2 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 11 \B1 12 \05 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 64 \B0 64 \B2 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 14 \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B2 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B1 64 \B0 64 \B2 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B0 64 \B2 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 14 \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 64 \B1 64 \B2 64 \B2 64 \B0 64 \B1 64 \B1 64 \B1 64 \B1 64 \B1 64 \B2 64 \B0 64 \B0 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
64 \B1 6A \05 6A \05 6A \06 64 \B1 64 \B1 6A \05 6A \05 64 \B1 6A \06 6A \05 64 \B1 64 \B1 64 \B1 6A \06 64 \B1 64 \B1 64 \B1 64 \B1 14 \B2 14 \B1 14 \B0 1A \05 1A \5F 12 \05 1A \5F 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
2A \B0 AA \B2 AA \B2 2A \B0 2A \B2 6A \B0 2A \B0 6A \B0 2A \B2 2A \B0 6A \B0 2A \B0 6A \B0 2A \B0 2A \B0 2A \DB 2A \DB 2A \DB 6A \B0 2A \B0 2A \B0 6A \B0 6A \B0 2A \DB 2A \B0 6A \B0 6A \B0 1A \5F 1A \5F 1A \05 1A \05 1A \5F 1A \5F 1A \06 1A \5F 1A \5F 1A \5F 1A \5F 12 \05 12 \5F 12 \5F 12 \5F 12 \5F 1A \06 1A \06 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \05 11 \B1 12 \05 11 \B1 1A \06 1A \06 1A \06 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \5F 1A \06 1A \05 1A \5F 1A \06 1A \5F 12 \5F 1A \5F 1A \5F 
AA \B2 6A \B1 2A \B2 2A \B0 2A \B0 2A \B0 2A \B2 6A \B0 6A \B0 6A \B0 6A \B1 2A \DB 2A \DB 2A \B0 6A \B0 2A \DB 2A \B0 6A \B2 6A \B1 2A \B0 6A \B1 6A \B2 2A \B0 6A \B1 2A \B0 2A \DB 6A \B2 6A \B1 6A \DB 2A \DB 6A \B0 6A \DB 6A \B1 2A \B0 6A \DB 6A \B1 2A \B0 2A \DB 6A \B1 2A \B2 2A \B2 2A \B2 2A \DB 6A \B1 6A \DB 2A \B0 6A \B1 2A \DB 6A \B0 2A \B0 6A \B1 2A \B0 2A \DB 2A \B0 6A \B0 6A \B1 2A \B0 6A \B0 6A \B0 2A \B0 2A \DB 2A \B0 6A \B0 6A \B0 2A \DB 6A \B1 6A \B0 2A \B2 6A \B1 2A \B0 6A \B1 2A \B2 6A \B1 2A \B0 2A \B2 6A \B1 2A \B0 2A \B2 2A \B0 2A \B2 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 11 \B1 
</Ground>

<Level1>
2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2A \47 2A \65 2A \74 27 \20 2A \6f 2A \75 2A \74 2A \61 27 \20 2A \79 2A \6f 2A \75 2A \72 27 \20 2A \73 2A \70 2A \61 2A \63 2A \65 2A \63 2A \72 2A \61 2A \66 2A \74 2A \20 2A \61 2A \6e 2A \64 2A \20 2A \65 2A \6e 2A \74 2A \65 2A \72 20 \20 2A \74 2A \68 2A \65 27 \20 2A \63 2A \61 2A \76 2A \65 2A \72 2A \6e 2A \73 2A \21 2a \05 2a \05 
2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 2A \48 2A \61 2A \63 2A \6b 27 \20 2A \74 2A \68 2A \72 2A \75 27 \20 2A \77 2A \69 2A \74 2A \68 27 \20 2A \79 2A \6f 2A \75 2A \72 22 \20 2A \70 2A \68 2A \61 2A \72 2A \73 2A \65 2A \72 2A \2E 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 
2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \06 2a \06 2a \06 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 
2a \05 2a \05 2a \05 2a \06 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 19 \7E 19 \7E 19 \7E 19 \7E 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 
2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 19 \7E 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \06 20 \20 2a \05 2a \05 2A \9D 2a \05 2a \05 20 \20 
2a \05 2a \05 2a \05 2a \06 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 20 \20 20 \20 20 \20 20 \20 20 \20 2a \05 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2A \9D A2 \B2 2A \9D 2a \05 20 \20 
2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2F \DC 2F \DC 27 \DC 27 \DC 28 \DC 28 \DC 2a \05 28 \DC 28 \DC 27 \DC 27 \DC 2F \DC 2F \DC 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 2a \05 2a \05 2a \05 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 2a \06 2a \06 2a \05 2a \05 2a \05 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 2a \05 2a \05 2A \04 2a \05 2a \05 2a \06 20 \20 2A \9D A2 \B2 2a \B1 A2 \B2 2A \9D 2a \05 
2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2F \DC 2F \DC 2F \DB 27 \DB 27 \DB 27 \DB 28 \DB 28 \DB 09 \DB 28 \DB 28 \DB 27 \DB 27 \DB 27 \DB 8F \DB 2F \DC 2F \DC 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 2a \06 2a \05 2a \05 2a \05 20 \20 2a \06 2a \05 2a \05 2a \05 2a \05 20 \20 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 2A \04 2a \05 2a \05 2a \06 2a \05 20 \20 2A \9D A2 \B2 2a \B1 0A \B0 2a \B1 A2 \B2 2A \9D 
2a \05 2a \05 2a \05 2F \11 2F \DB 2F \DB 27 \DB 78 \CD 28 \DB 88 \DB 08 \04 07 \04 0F \04 0F \04 0F \02 0F \04 0F \04 07 \04 08 \04 28 \DB 28 \DB 78 \CD 27 \DB 2F \DB 2F \DB 2F \10 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 2a \06 2a \05 2a \06 2a \06 2a \05 2a \05 2a \05 2a \05 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2A \9D A2 \B2 2a \B1 0A \B0 02 \B0 0A \B0 2a \B1 A2 \B2 
2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2F \DF 2F \DF 2F \DB 87 \DB 87 \DB 87 \DB 28 \DB 28 \DB 28 \DB 28 \DB 28 \DB 87 \DB 87 \DB 27 \DB 87 \DB 2F \DB 2F \DF 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 2A \04 20 \20 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 19 \7E 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 2a \05 2A \9D A2 \B2 2a \B1 0A \B0 02 \B0 0F \F2 02 \B0 0A \B0 2a \B1 
2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2F \DF 2F \DF 27 \DF 27 \DF 28 \DF 28 \DF 28 \DF 28 \DF 28 \DF 27 \DF 27 \DF 27 \DF 2F \DF 2F \DF 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 2a \06 2a \06 2a \05 2a \05 2a \05 2a \05 2a \06 2a \06 20 \20 20 \20 20 \20 2a \05 2a \06 2a \05 2a \05 2a \05 2a \05 19 \7E 19 \7E 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 11 \DB 19 \7E 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2a \05 2a \05 2A \04 2A \9D A2 \B2 2a \B1 0A \B0 02 \B0 0A \B0 2a \B1 A2 \B2 
2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 2F \5F 27 \2F 28 \2F 20 \5F 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 2F \5F 27 \5C 28 \5C 20 \5F 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2A \04 2a \05 2a \05 2a \05 2a \05 2A \04 2a \06 2a \05 2a \05 2a \05 2a \05 2A \04 2a \06 2a \06 2a \06 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 2a \05 2a \05 2a \05 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2A \9D A2 \B2 2a \B1 0A \B0 2a \B1 A2 \B2 2A \9D 
2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2A \04 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2A \04 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2A \04 2a \05 2a \05 2a \05 2A \9D A2 \B2 2a \B1 A2 \B2 2A \9D 2a \05 
2a \05 2a \05 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 20 \20 20 \20 20 \20 20 \20 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2a \05 2A \9D A2 \B2 2A \9D 2a \05 2a \05 
Set "Head1=ÄÄÄ<The Adventure Begins>ÄÄÄ"
</Level1>

<Level2>
07 \54 07 \68 07 \6f 07 \73 07 \65 07 \20 07 \61 07 \72 07 \65 07 \20 07 \6d 07 \6f 07 \76 07 \61 07 \62 07 \6c 07 \65 07 \20 07 \62 07 \72 07 \69 07 \63 07 \6b 07 \73 00 \FF 01 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 00 \FF 09 \04 00 \FF 00 \FF 00 \FF 00 \FF 09 \04 00 \FF 00 \FF 07 \19 00 \FF 07 \19 00 \FF 07 \19 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \04 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 09 \2B 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B1 08 \B1 08 \B1 08 \B1 08 \B1 08 \B1 08 \B1 08 \B1 08 \B1 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0C \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0C \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \B1 08 \B1 55 \DB 08 \B1 08 \B1 08 \B1 08 \B1 08 \B1 55 \DB 08 \B1 08 \B1 00 \FF 00 \FF 01 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 09 \2B 00 \FF 01 \04 00 \FF 00 \FF 00 \FF 08 \B1 08 \B1 55 \DB 5D \04 55 \DB 08 \B1 08 \B1 08 \B1 55 \DB 5D \04 55 \DB 08 \B1 08 \B1 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 0F \2B 0F \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DC FF \DB FF \DB 07 \DB 55 \DB 87 \B0 87 \B0 00 \FF 87 \B0 87 \B0 55 \DB 07 \DB 0F \DB 0F \DB 0F \DC 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 0F \2B 0F \2B 00 \FF 00 \FF 00 \FF 00 \FF 08 \9D 02 \B0 08 \04 4E \B2 4E \B2 4E \B2 
00 \FF 00 \FF 00 \FF 0F \11 0F \DB 0F \DB 07 \DB 07 \DB 08 \DB 08 \DB 0C \F2 0C \F2 0C \F2 0C \F2 0C \F2 0C \F2 0C \F2 0C \F2 0C \F2 08 \DB 08 \DB 07 \DB 07 \DB 0F \DB 0F \DB 0F \10 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0C \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0C \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \2B 0C \2B 0C \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 0F \2B 0F \2B 00 \FF 00 \FF 00 \FF 00 \FF 08 \9D 02 \B0 0A \B0 02 \B0 08 \04 4E \B2 4E \B2 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \DF 0F \DB 0F \DB 07 \DB 07 \DB 08 \DB 08 \DB 08 \DB 08 \DB 08 \DB 07 \DB 07 \DB 0F \DB 0F \DB 0F \DF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 0E \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0E \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 00 \FF 00 \FF 00 \FF 00 \FF 08 \9D 02 \B0 0A \B0 0A \B1 0A \B0 02 \B0 08 \04 4E \B2 
09 \2B 00 \FF 09 \2B 00 \FF 00 \FF 01 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0F \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \2B 0C \2B 0E \2B 0F \2B 08 \2B 0C \2B 0C \2B 0E \2B 0F \2B 0F \2B 0F \2B 0F \2B 00 \FF 00 \FF 00 \FF 00 \FF 08 \9D 02 \B0 0A \B0 0A \B1 A0 \FF 0A \B1 0A \B0 02 \B0 08 \04 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \2B 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0E \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 0E \99 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 08 \9D 02 \B0 0A \B0 0A \B1 A0 \FF 0F \02 A0 \FF 0A \B1 0A \B0 02 \B0 
00 \FF 00 \FF 00 \FF 01 \04 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \04 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 08 \9D 02 \B0 0A \B0 0A \B1 A0 \FF 0A \B1 0A \B0 02 \B0 08 \04 
00 \FF 09 \2B 00 \FF 00 \FF 01 \04 00 \FF 00 \FF 00 \FF 09 \2B 09 \2B 00 \FF 00 \FF 01 \04 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 08 \9D 02 \B0 0A \B0 0A \B1 0A \B0 02 \B0 08 \04 4E \B2 
00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 01 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 09 \2B 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 4E \B2 08 \9D 02 \B0 02 \B1 02 \B0 08 \04 4E \B2 4E \B2 
Set "Msg=02 "    After spending most of your time plowing across the forest and meadow,\n" 0A "you're glad to have found that pit leading somewhere underground. Hopefully\n" 02 "you won't be as bored. You wonder what's underneath the ground as you enter\n" 0A "the pit . . .\n""
Set "Head1=ÄÄÄÄ<Watch Out For The>ÄÄÄÄÄ"
Set "Head2=ÄÄÄÄÄ<Welcoming Party>ÄÄÄÄÄÄ"
</Level2>

<Level3>
FF \DB 0F \02 F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \1A F3 \19 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 
FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 4C \58 7F \1A 7F \1A 7F \1A 7F \1A 7F \1A F7 \B0 F7 \B0 F3 \19 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 
F7 \B0 FF \DB 00 \FF 0A \24 02 \24 0A \24 02 \24 0A \24 02 \24 0A \24 0C \2B F3 \1A F3 \1A F3 \1A F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 09 \9D 09 \9D 09 \9D 01 \9D 01 \9D 01 \9D 01 \9D 09 \9D 09 \9D 09 \9D 09 \9D 09 \9D 09 \9D F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 4C \58 0E \BD 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4C \58 00 \FF 00 \FF 00 \FF 4C \58 7F \1B 7F \1B 7F \1B 7F \1B 7F \1B 02 \DB 2A \05 2A \05 02 \DB 2A \06 2A \06 02 \DB 02 \DB 02 \DB 2A \06 2A \05 2A \05 02 \DB 02 \DB 2A \06 2A \06 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 2A \05 
F7 \B0 FF \DB 00 \FF 0A \24 02 \24 0A \24 02 \24 0A \24 02 \24 0A \24 00 \FF FF \DB F7 \B0 F3 \19 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 00 \FF 00 \FF 04 \B2 0C \B2 0E \B2 0F \B2 0F \B2 0F \B2 0E \B2 0C \B2 04 \B2 00 \FF 00 \FF F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 4C \58 0E \BD 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4C \58 00 \FF 4C \58 F7 \B0 7F \18 00 \FF 00 \FF 00 \FF 02 \DB 2A \05 02 \DB 2A \06 02 \DB 02 \DB 2A \06 2A \06 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 19 \7E 19 \7E 19 \7E 02 \DB 02 \DB 02 \DB 2A \05 
F7 \B0 FF \DB 00 \FF 0A \24 02 \24 0A \24 02 \24 0A \24 02 \24 0A \24 00 \FF FF \DB F7 \B0 F3 \19 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 4C \58 4C \58 4C \58 4C \58 4C \58 0D \04 4C \58 4C \58 4C \58 00 \FF 00 \FF 4C \58 F7 \B0 7F \18 00 \FF 7F \19 00 \FF 02 \DB 02 \DB 02 \DB 02 \DB 2A \05 02 \DB 02 \DB 2A \05 2A \05 02 \DB 02 \DB 2A \05 02 \DB 02 \DB 19 \7E 02 \DB 19 \B3 19 \1A 19 \19 19 \7E 19 \7E 2A \05 02 \DB 
F7 \B0 F7 \B0 FF \DB F3 \18 FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB F7 \B0 F7 \B0 F3 \19 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 09 \24 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \24 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 4C \58 00 \FF 4C \58 00 \FF 00 \FF 00 \FF 4C \58 4C \58 F7 \B0 7F \18 00 \FF 7F \19 00 \FF 02 \DB 02 \DB 02 \DB 2A \05 02 \DB 2A \05 02 \DB 02 \DB 02 \DB 2A \06 02 \DB 02 \DB 02 \DB 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \1A 19 \1A 19 \1A 19 \1A 19 \F2 
F7 \B0 F7 \B0 F7 \B0 F3 \18 F7 \B0 F7 \B0 F7 \B0 0C \0F F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F3 \19 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 09 \24 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 09 \24 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 4C \58 00 \FF 4C \58 00 \FF 4C \58 4C \58 FF \DB 4C \58 F7 \B0 7F \18 00 \FF 7F \19 00 \FF 02 \DB 02 \DB 2A \05 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 2A \05 2A \05 
F7 \B0 F7 \B0 F7 \B0 F3 \18 F7 \B0 F7 \B0 F7 \B0 F3 \18 FF \DB FF \DB FF \DB FF \DB FF \DB F3 \19 FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB 4C \58 0D \04 4C \58 FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB 4C \58 00 \FF 4C \58 00 \FF FF \DB FF \DB FF \DB FF \DB F7 \B0 7F \18 00 \FF 7F \19 00 \FF 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 2A \06 02 \DB 2A \06 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 19 \7E 2A \05 2A \05 2A \05 
F7 \B0 F7 \B0 F7 \B0 F3 \18 F3 \1B F3 \1B F3 \1B F3 \F5 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 4C \58 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 7F \19 00 \FF 00 \FF 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 2A \06 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 2A \05 2A \05 02 \DB 02 \DB 19 \7E 19 \7E 19 \7E 2A \05 2A \05 2A \05 2A \05 
F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F3 \19 FF \DB FF \DB FF \DB FF \DB FF \DB F3 \18 FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB 0F \B1 0F \B1 FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB FF \DB 7F \1A 7F \1A 02 \DB 02 \DB 02 \DB 02 \DB 02 \DB 2A \06 02 \DB 2A \06 2A \06 02 \DB 02 \DB 02 \DB 02 \DB 2A \05 2A \05 2A \05 19 \7E 19 \7E 2A \05 2A \05 2A \05 2A \05 2A \05 
F7 \B0 F7 \B0 FF \DB FF \DB FF \DB FF \DB FF \DB F3 \19 FF \DB FF \DB FF \DB FF \DB F7 \B0 F3 \18 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 FF \DB 0F \B1 0F \B1 FF \DB F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 2A \04 2A \04 2A \04 02 \DB 2A \05 2A \05 2A \06 2A \06 2A \06 2A \06 2A \06 2A \06 2A \06 2A \06 2A \06 2A \05 2A \06 2A \05 2A \05 2A \06 2A \05 2A \05 02 \DB 
F7 \B0 F7 \B0 FF \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF FF \DB F7 \B0 F3 \18 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 FF \DB 0F \B1 0F \B1 FF \DB F7 \B0 F7 \B0 F7 \B0 FF \DB FF \DB FF \DB F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 
F7 \B0 F7 \B0 FF \DB 0E \BD 04 \BD 0E \BD 04 \BD 0E \BD 04 \BD 0E \BD 04 \BD F3 \1A F3 \1A F3 \18 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 FF \DB 0F \B1 0F \B1 FF \DB FF \DB FF \DB FF \DB FF \DB 7F \FE FF \DB FF \DB FF \DB FF \DB F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 
F7 \B0 F7 \B0 FF \DB 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF 00 \FF FF \DB F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 FF \DB 0F \B1 0F \B1 0F \B1 0F \B1 0F \B1 0F \B1 0F \B1 0F \B1 FF \DB F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 F7 \B0 
Set "Msg=0E "    No message at now...\n" 04 "Just Get The Keycard\n""
Set "Head1=ÄÄÄÄ<Underground Trees>ÄÄÄÄÄ"
Set "Head2=ÄÄÄÄÄ<Get The Keycard>ÄÄÄÄÄÄ"
</Level3>
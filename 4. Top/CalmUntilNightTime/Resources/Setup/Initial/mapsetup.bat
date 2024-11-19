CALL :SETUPTERRAIN
CALL :SETUPOBJECTS
CALL :SETUPMAPS
GOTO :EOF

:SETUPTERRAIN
SET GRASSA=�����
SET GRASSB=�����
SET GRASSC=�����
SET /a GRASSRANBAT = 1
SET /a GRASSVALID = 1
SET MINE1A=�����
SET MINE1B=�����
SET MINE1C=�����
SET /a MINE1RANBAT = 1
SET /a MINE1VALID = 1
SET PATH1A=     
SET PATH1B=     
SET PATH1C=     
SET /a PATH1RANBAT = 0
SET /a PATH1VALID = 1
SET WALL1A=�����
SET WALL1B=�����
SET WALL1C=�����
SET /a WALL1RANBAT = 0
SET /a WALL1VALID = 0
SET WALL2A=�����
SET WALL2B=�����
SET WALL2C=�����
SET /a WALL2RANBAT = 0
SET /a WALL2VALID = 0
SET WALL3A=� � �
SET WALL3B= � � 
SET WALL3C=� � �
SET /a WALL3RANBAT = 0
SET /a WALL3VALID = 0
SET EXITRIGHTA=^> ^> ^>
SET EXITRIGHTB=^> ^> ^>
SET EXITRIGHTC=^> ^> ^>
SET /a EXITRIGHTRANBAT = 1
SET /a EXITRIGHTVALID = 1
SET EXITLEFTA=^< ^< ^<
SET EXITLEFTB=^< ^< ^<
SET EXITLEFTC=^< ^< ^<
SET /a EXITLEFTRANBAT = 1
SET /a EXITLEFTVALID = 1
SET LADDERA= �Ĵ 
SET LADDERB= �Ĵ 
SET LADDERC= �Ĵ 
SET /a LADDERRANBAT = 0
SET /a LADDERVALID = 1
SET MIST1A=�����
SET MIST1B=�����
SET MIST1C=�����
SET /a MIST1RANBAT = 0
SET /a MIST1VALID = 1
SET MIST2A=�����
SET MIST2B=�����
SET MIST2C=�����
SET /a MIST2RANBAT = 0
SET /a MIST2VALID = 1
SET WATERA=�����
SET WATERB=�����
SET WATERC=�����
SET /a WATERRANBAT = 1
SET /a WATERVALID = 1
SET WATEREDGEA=     
SET WATEREDGEB=~~~~~
SET WATEREDGEC=�����
SET /a WATEREDGERANBAT = 0
SET /a WATEREDGEVALID = 1
::SET PLANT1A= *   
::SET PLANT1B= ��  
::SET PLANT1C= ��� 
::SET /a PLANT1RANBAT = 0
::SET /a PLANT1VALID = 0
::SET PLANT1A=   * 
::SET PLANT1B=  �� 
::SET PLANT1C= ��� 
::SET /a PLANT1RANBAT = 0
::SET /a PLANT1VALID = 0
SET PLANT1A=  *  
SET PLANT1B=  �  
SET PLANT1C= ��� 
SET /a PLANT1RANBAT = 0
SET /a PLANT1VALID = 0
SET CARPETLEFTA=�����
SET CARPETLEFTB=���ϱ
SET CARPETLEFTC=�����
SET /a CARPETLEFTRANBAT = 0
SET /a CARPETLEFTVALID = 1
SET CARPETRIGHTA=�����
SET CARPETRIGHTB=�ϱ��
SET CARPETRIGHTC=�����
SET /a CARPETRIGHTRANBAT = 0
SET /a CARPETRIGHTVALID = 1
SET FLOORA=�����
SET FLOORB=�����
SET FLOORC=�����
SET /a FLOORRANBAT = 0
SET /a FLOORVALID = 1
SET LAVA1A=~ ~ ~
SET LAVA1B= ~ ~ 
SET LAVA1C=~ ~ ~
SET /a LAVA1RANBAT = 0
SET /a LAVA1VALID = 0
SET HELL1A=�����
SET HELL1B=�����
SET HELL1C=�����
SET /a HELL1RANBAT = 1
SET /a HELL1VALID = 1
SET EDGE=�����
GOTO :EOF

:SETUPOBJECTS
SET TRACKUPDOWNA= �Ĵ 
SET TRACKUPDOWNB= �Ĵ 
SET TRACKUPDOWNC= �Ĵ 
SET /a TRACKUPDOWNRANBAT = 0
SET /a TRACKUPDOWNVALID = 1

SET TRACKLEFTRIGHTA=�����
SET TRACKLEFTRIGHTB=�����
SET TRACKLEFTRIGHTC=�����
SET /a TRACKLEFTRIGHTRANBAT = 0
SET /a TRACKLEFTRIGHTVALID = 1

SET TRACKTOPLEFTA= ����
SET TRACKTOPLEFTB= �Ĵ�
SET TRACKTOPLEFTC= ����
SET /a TRACKTOPLEFTRANBAT = 0
SET /a TRACKTOPLEFTVALID = 1

SET TRACKTOPRIGHTA=��Ŀ 
SET TRACKTOPRIGHTB=��Ĵ 
SET TRACKTOPRIGHTC=��Ĵ 
SET /a TRACKTOPRIGHTRANBAT = 0
SET /a TRACKTOPRIGHTVALID = 1

SET TRACKBOTLEFTA= ����
SET TRACKBOTLEFTB= �Ĵ�
SET TRACKBOTLEFTC= ����
SET /a TRACKBOTLEFTRANBAT = 0
SET /a TRACKBOTLEFTVALID = 1

SET TRACKBOTRIGHTA=��Ĵ 
SET TRACKBOTRIGHTB=��Ĵ 
SET TRACKBOTRIGHTC=���� 
SET /a TRACKBOTRIGHTRANBAT = 0
SET /a TRACKBOTRIGHTVALID = 1

SET BOOKCASETOPLEFTA=�����
SET BOOKCASETOPLEFTB=���\ 
SET BOOKCASETOPLEFTC=�����

SET BOOKCASEBOTLEFTA=�   �
SET BOOKCASEBOTLEFTB=�� ݱ
SET BOOKCASEBOTLEFTC=�����

SET BOOKCASETOPRIGHTA=���Ŀ
SET BOOKCASETOPRIGHTB=� /��
SET BOOKCASETOPRIGHTC=���Ĵ

SET BOOKCASEBOTRIGHTA=    �
SET BOOKCASEBOTRIGHTB= /���
SET BOOKCASEBOTRIGHTC=�����

SET MINECARTA=���Ĵ
SET MINECARTB=�   �
SET MINECARTC=�O�O�

GOTO :EOF

:SETUPMAPS
SET MAPSPATH=%INITIALRESOURCEPATH%\Maps
CALL "%MAPSPATH%\mine1cartsetup.bat"
CALL "%MAPSPATH%\mine2cartsetup.bat"
CALL "%MAPSPATH%\mine2setup.bat"
CALL "%MAPSPATH%\mine3cartsetup.bat"
GOTO :EOF
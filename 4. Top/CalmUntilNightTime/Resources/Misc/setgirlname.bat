:START
CLS
ECHO.
ECHO    浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO    �      �                                                                                             �
ECHO    �      �                                                                                             �
ECHO    �      �                                                                                             �
ECHO    �      �                                                                                             �
ECHO    �      �                                                                 敖陳朕                      �
ECHO    �      �                          浜様与                                 �O   �                      �
ECHO    �      �                          �   O�                                 �    �                      �
ECHO    債陳陳潰                          �    �                                 団   �                      �
ECHO    �                                 �   調                                 青笥潰                      �
ECHO    �                                 債笥潰                                敖潰青朕                     �
ECHO    �                              � 攤潰青朕                               �      �                     �
ECHO    �                              � 該     �                               �      �                     �
ECHO    �                              � 該     �   敖�                         �  �   �                     �
ECHO    �                              � �   陳津陳蝶 �                         �  �   �                     �
ECHO    �                              � �      �   青�                         �  �   �                     �
ECHO    債陳陳陳陳朕                   � �      獲様僕様様様様僕様              �  �   �                     �
ECHO    �          �                   � �      �   �         �                 �  �   �                     �
ECHO    �          �                   � 青賃陳潰   �         �                 �  �   �                     �
ECHO    �          �                   �    青陳朕  �         �                 青続賃潰                     �
ECHO    �          �                   逝陳陳賃陳�  �         �                   �  �                       �
ECHO    �          �                    �     �  �  �         �                   �  �                       �
ECHO    �          �                    �     �  �  �         �                   �  �                       �
ECHO    �          �                    �     �  �  �         �                   �  �                       �
ECHO    �          �                    �     �  �  �         �                   �  �                       �
ECHO    �          �                    �     �  �  �         �                   �  �                       �
ECHO    藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO.
ECHO.
ECHO Enter the name of the girl next door
ECHO.
SET /P GIRLNAME=
ECHO.
CALL :GIRLNAMELENGTH
IF %GIRLNAMELENGTH% GTR 11 (
	CALL :TOOLONG
	GOTO :START
)
SET GIRLNAMECAP=%GIRLNAME%
CALL :GIRLNAMECAP GIRLNAMECAP
CALL :GIRLHOUSENAME
CLS
GOTO :EOF


:GIRLNAMELENGTH
SET /a LENGTH = 0
:GIRLNAMELOOPSTART
SET /a LENGTH += 1
SET SUBSTR=!GIRLNAME:~%LENGTH%,1!
IF "%SUBSTR%" NEQ "" (
	GOTO :GIRLNAMELOOPSTART
) ELSE (
	SET /a TEMPCOUNT = %LENGTH% + 1
	SET SUBSTR=!GIRLNAME:~%TEMPCOUNT%,1!
	IF "%SUBSTR%" NEQ "" (
		GOTO :GIRLNAMELOOPSTART
	)
)
SET /a GIRLNAMELENGTH = %LENGTH%
GOTO :EOF

:TOOLONG
ECHO This name is too long, choose a name of 11 characters or less
TIMEOUT /T 2 > nul
GOTO :EOF

:GIRLNAMECAP
SET %~1=!%1:a=A!
SET %~1=!%1:b=B!
SET %~1=!%1:c=C!
SET %~1=!%1:d=D!
SET %~1=!%1:e=E!
SET %~1=!%1:f=F!
SET %~1=!%1:g=G!
SET %~1=!%1:h=H!
SET %~1=!%1:i=I!
SET %~1=!%1:j=J!
SET %~1=!%1:k=K!
SET %~1=!%1:l=L!
SET %~1=!%1:m=M!
SET %~1=!%1:n=N!
SET %~1=!%1:o=O!
SET %~1=!%1:p=P!
SET %~1=!%1:q=Q!
SET %~1=!%1:r=R!
SET %~1=!%1:s=S!
SET %~1=!%1:t=T!
SET %~1=!%1:u=U!
SET %~1=!%1:v=V!
SET %~1=!%1:w=W!
SET %~1=!%1:x=X!
SET %~1=!%1:y=Y!
SET %~1=!%1:z=Z!
GOTO:EOF

:GIRLHOUSENAME
CALL :GIRLHOUSENAME%GIRLNAMELENGTH%
SET GIRLHOUSEVAR1=!GIRLHOUSEVAR:~0,5!
SET GIRLHOUSEVAR2=!GIRLHOUSEVAR:~5,5!
SET GIRLHOUSEVAR3=!GIRLHOUSEVAR:~10!
GOTO :EOF

:GIRLHOUSENAME1
SET GIRLHOUSEVAR=�     %GIRLNAME%'s     �
GOTO :EOF

:GIRLHOUSENAME2
SET GIRLHOUSEVAR=�    %GIRLNAME%'s     �
GOTO :EOF

:GIRLHOUSENAME3
SET GIRLHOUSEVAR=�    %GIRLNAME%'s    �
GOTO :EOF

:GIRLHOUSENAME4
SET GIRLHOUSEVAR=�   %GIRLNAME%'s    �
GOTO :EOF

:GIRLHOUSENAME5
SET GIRLHOUSEVAR=�   %GIRLNAME%'s   �
GOTO :EOF

:GIRLHOUSENAME6
SET GIRLHOUSEVAR=�  %GIRLNAME%'s   �
GOTO :EOF

:GIRLHOUSENAME7
SET GIRLHOUSEVAR=�  %GIRLNAME%'s  �
GOTO :EOF

:GIRLHOUSENAME8
SET GIRLHOUSEVAR=� %GIRLNAME%'s  �
GOTO :EOF

:GIRLHOUSENAME9
SET GIRLHOUSEVAR=� %GIRLNAME%'s �
GOTO :EOF

:GIRLHOUSENAME10
SET GIRLHOUSEVAR=�%GIRLNAME%'s �
GOTO :EOF

:GIRLHOUSENAME11
SET GIRLHOUSEVAR=�%GIRLNAME%'s�
GOTO :EOF
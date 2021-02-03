attrib -r %WINDIR%\system32\drivers\etc\hosts

SET NEWLINE=^& echo.

FIND /C /I "www.sublimetext.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1	www.sublimetext.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "sublimetext.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1	sublimetext.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "sublimehq.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1	sublimehq.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "license.sublimehq.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1	license.sublimehq.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "45.55.255.55" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1	45.55.255.55>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "45.55.41.223" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^127.0.0.1	45.55.41.223>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "license.sublimehq.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0	license.sublimehq.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "45.55.255.55" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0	45.55.255.55>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "45.55.41.223" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO ^0.0.0.0	45.55.41.223>>%WINDIR%\system32\drivers\etc\hosts

attrib +r %WINDIR%\system32\drivers\etc\hosts   
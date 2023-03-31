@ECHO OFF

:: A batch file to report the status of a Computer Under Test

:WORKDIR
:: Work in the users home directory
cd %USERPROFILE%




:LAN
:: local network addresses
ipconfig /all > rep_%COMPUTERNAME%.txt


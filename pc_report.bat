@ECHO OFF

:: A batch file to report the status of a Computer Under Test
:: by <https://github.com/GrantAccess/Jet-Found> (CC)
:: the author has not changed this document since Friday 31 Mar 2023

:ONCE
:: get the date and time of the report.
set CUR_YYYY=%date:~6,4%
set CUR_MM=%date:~3,2%
set CUR_DD=%date:~0,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set BAZ=%CUR_YYYY%-%CUR_MM%-%CUR_DD%-%CUR_HH%-%CUR_NN%
set TENT=rep_%COMPUTERNAME%%BAZ%

:WORKDIR
:: Work in the users home directory
cd %USERPROFILE%

:SYS
del systum.txt :: remove old file
:: Make and Model and Memory
systeminfo.exe > systum.txt

:LAN
del landis.txt :: remove old file
:: local network addresses
ipconfig /all > landis.txt

:SHOW
:: print the file
copy systum.txt+landis.txt %TENT%.txt
del systum.txt
del landis.txt
type %TENT%.txt | less
pause

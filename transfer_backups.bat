@echo off
SetLocal EnableDelayedExpansion

for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set datestamp=%dt:~0,8%
set timestamp=%dt:~8,6%
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%
set stamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%
echo stamp: "%stamp%"
echo datestamp: "%datestamp%"
echo timestamp: "%timestamp%"

set pwdpasswd=password

cls

echo Network disconnecting...
net use /DELETE Y:
REM Network disconnecting...

cls
REM Network connecting...
rem NAS backup
echo Y: connecting...
@net use Y: /PERSISTENT:YES "\\192.168.100.168\Backup" /USER:username %pwdpasswd%

rem pause

xcopy D:\Backup\*.zip Y:\ && move /y D:\Backup\*.zip D:\Backup\Transfered 

if !errorlevel!==0 (
echo Network disconnecting...
net use /DELETE Y:
REM Network disconnecting...	
) 
else 
(
xcopy D:\Backup\*.zip Z:\%YYYY%\ && move /y D:\Backup\*.zip D:\Backup\Transfered
echo Network disconnecting...
net use /DELETE Y:
REM Network disconnecting...   
)

exit
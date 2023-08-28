@echo off
set pwdpass=PASSWORD

cls

echo Network disconnecting...

net use /DELETE Y:

REM Network disconnecting...



cls
REM Network connecting...

rem network disk
echo Y: connecting...
@net use Y: /PERSISTENT:YES "\\192.168.100.125\Folder" /USER:DOMAINNAME\username %pwdpass%

rem pause
exit
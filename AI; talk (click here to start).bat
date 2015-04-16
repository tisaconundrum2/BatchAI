@echo off

title AI Chat
mode 100, 100
type AIVERY.txt
set/p AIname= < re.name
echo %AIname%: hi what is your name?
set /p user=
echo %AIname%: hi i'm %AIname%. It's nice to see a new user %user%!

echo what would you like to talk about?
rem ping localhost -n 3 > nul

rem if understand goto start_talk.bat
rem if not understand goto random reply

call start_talk.bat



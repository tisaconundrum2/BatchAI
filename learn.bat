::learn.bat
@echo off
:no


rem words in question
set /p will_say=<said.txt

echo AI: you can stop my learn protocol at any time by simply typing "stop"
echo AI: I'm sorry what should i have said in
echo response to "%will_say%"

set /p response=
if "%response%"=="stop" goto bottom



echo so i should say this "%response%" in response to "%will_say%"
set /p yes_no=
if "%yes_no%" == "yes" goto 1
if "%yes_no%" == "no" goto no else echo please say "yes" or "no" thank you
:1

:1
echo AI: now writing to memory please wait
echo user: %will_say% ^/^/^/^/ AI:%response%>>chat_database.txt
echo AI: great i'll have a permanent record of that ^:^)

call cutter.bat

echo call talk.bat)>> chat_database.bat
type "if variable.txt">> chat_database.bat
echo "%will_say%" (>> chat_database.bat 
echo call talk.bat) else (call learn.bat)>>chat_database.bat
:bottom

call temp_talk.bat
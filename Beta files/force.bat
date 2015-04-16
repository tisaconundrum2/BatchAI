@echo off > newfile & setLocal enableDELAYedexpansion
for /f "tokens=* delims= " %%a in (cutter.bat) do (
set str=%%a
set str=!call temp_talk.bat=call learn.bat!
echo !str!> cutter.bat
)


for /f "tokens=* delims= " %%a in (chat_database.bat) do (
set str=%%a
set str=!call temp_talk.bat=call learn.bat!
echo !str!> chat_database.bat
)


exit

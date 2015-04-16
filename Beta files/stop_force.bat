for /f "tokens=* delims= " %%a in (cutter.bat) do (
set str=%%a
set str=!call learn.bat=call temp_talk.bat!
echo !str!> response.txt
)


for /f "tokens=* delims= " %%a in (chat_database.bat) do (
set str=%%a
set str=!call learn.bat=call temp_talk.bat!
echo !str!> response.txt
)



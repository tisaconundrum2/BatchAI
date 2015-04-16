::talk.bat
@echo off > newfile & setLocal enableDELAYedexpansion


:loop
findstr /i /c:"%user_said% //" "chat_database.txt" > resp.txt

for /f "tokens=* delims= " %%a in (resp.txt) do (
set str=%%a
set str=!str:user: %user_said% //// =!
echo !str!> response.txt
)

set /p AI=<response.txt
	

echo %AI%
echo %user%: %user_said% >>"latest_chat.txt"
echo %AI% >>"latest_chat.txt"


call start_talk.bat
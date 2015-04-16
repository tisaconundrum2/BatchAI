FIND /v "call talk.bat) else (call learn.bat)" < chat_database.bat > Database.txt
del chat_database.bat
REN Database.txt chat_database.bat
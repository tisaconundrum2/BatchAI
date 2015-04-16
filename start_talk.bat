@echo off

::start_talk

set /p user_said=%user%: 

if "%user_said%"=="rename AI" call ren.bat
if "%user_said%"=="that was random" call learn.bat
if "%user_said%"=="learn" call learn.bat
if "%user_said%"=="force learn" call force.bat
echo %user_said%>said.txt

call chat_database.bat
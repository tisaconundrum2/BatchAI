@echo off

goto start
:renew
::echo AI: if my response seemed a bit random type in "learn" so you can teach me to say a better response.
call start_talk.bat

:start
SetLocal EnableDelayedExpansion

::Both maxlen and minlen must be at least 1
::Minlen must be less than or equal to maxlen
::lenset == number of chars in charset
set maxlen=2
set minlen=1
set charset=1234567890
set lenset=10

set ranstr=
set /a strlen=(%random% %% ((maxlen + 1) - minlen)) + minlen
for /l %%a in (1 1 %strlen%) do (
    set /a char=!random! %% lenset
    for %%b in (!char!) do set ranstr=!ranstr!!charset:~%%b,1!
)

::echo !ranstr!
if not exist "recur\!ranstr!.dll" goto start
type recur\!ranstr!.dll
::pause
goto renew
::goto start
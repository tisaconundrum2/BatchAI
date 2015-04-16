@echo off
set %num%=1
:loop
cls
echo welcome to random chat adder
echo you should phrase most of these sentences as questions.
echo you can choose otherwise if you'd like
echo completely your deal.
echo .
echo .
set/a num=%num%+1
if exist recur\%num%.dll goto loop
echo set the sentence that the AI is going to say.
set/p AI_says=

echo AI: %AI_says% >> recur\%num%.dll

echo.
echo.

echo do you wish to add more random stuff? (y/n)
set/p yn=
if %yn% ==y goto loop
if %yn% ==n goto exit

:exit
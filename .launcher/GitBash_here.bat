@echo off

chdir %1%

set HOME=F:\home
set CHERE_INVOKING=1
F:\work\Tools\Git\bin\bash.exe --login -i

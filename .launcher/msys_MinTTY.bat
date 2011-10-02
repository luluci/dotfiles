@echo off

@chdir %1%

@set HOME=E:\\cygwin\\home\\takuya
@set CHERE_INVOKING=1
@start E:\msys\1.0\bin\mintty -

@rem 残骸共
@rem start E:\msys\1.0\bin\mintty -t "$*" -
@rem start E:\msys\1.0\bin\mintty /e/msys/1.0/bin/bash -
@rem start E:\msys\1.0\bin\mintty /bin/env CHERE_INVOKING=1 -l

@rem exit


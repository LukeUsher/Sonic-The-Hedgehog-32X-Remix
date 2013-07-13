@ECHO OFF

set USEANSI=n

asw.exe -xx -q -A SMPS.asm
pause
p2bin SMPS.p -l 0 -r 0-$

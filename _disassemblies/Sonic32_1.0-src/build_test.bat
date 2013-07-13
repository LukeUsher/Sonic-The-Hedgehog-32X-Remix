@echo off

asmsh /o #+ /q /o psh2 /o w- /p /e TEST=1;S32=1 sh2_m.asm,sh2_m.bin
s_obj
asmsh /o #+ /q /o psh2 /o w- /p /e TEST=1;S32=1 sh2_s.asm,sh2_s.bin

REM snasm68k.exe -emax 0 -p -o ae- main.asm, s32x.32x
asm68k /q /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- /e TEST=1;S32=1  main.asm, Sonic32t.32x

DEL s_obj.inc
DEL sh2_m.bin
DEL sh2_s.bin
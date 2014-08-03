@ECHO OFF

REM Set Paths and Variables
SET PATH=%CD%\bin;%CD%\sh-elf\bin;%PATH%
SET GENDEV=%CD%
SET MAKE_MODE=unix

REM Change to src directory
cd src

REM Build SH2 Binary
cd sh2
cd slave
del PWMDriver_cache.bin
del PWMDriver.h
asmsh /o #+ /q /o psh2 /o w- /p PWMDriver_cache.asm,PWMDriver_cache.bin
bin2h PWMDriver < PWMDriver_cache.bin > PWMDriver.h
cd ..
make.exe
cd..

cd SMPS
call build.bat
cd ..

REM Build 68k Code
cd m68k
call build.bat
cd ..

cd ..

REM Fixup for real hardware
fixheadr sonic.32x

pause
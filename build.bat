@ECHO OFF

REM Set Paths and Variables
SET PATH=%CD%\bin;%CD%\sh-elf\bin;%PATH%
SET GENDEV=%CD%
SET MAKE_MODE=unix

REM Change to src directory
cd src

REM Build SH2 Binary
cd sh2
make.exe
cd ..

cd SMPS
call build.bat
cd ..

REM Build 68k Code
cd m68k
call build.bat
cd ..

cd ..

REM Fixup for real hardware
rompad.exe s1built.32x 255 0
fixheadr s1built.32x

pause
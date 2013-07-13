@ECHO OFF

REM Set Paths and Variables
SET PATH=%CD%\bin;%CD%\sh-elf\bin;%PATH%
SET GENDEV=%CD%
SET MAKE_MODE=unix

REM Change to src directory
cd src

REM Build SH2 Binary
cd sh2
make.exe clean
cd ..

cd SMPS
rm smps.bin
rm smps.p
cd ..

cd ..
rm s1built.32x


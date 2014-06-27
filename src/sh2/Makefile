
ROOTDIR = $(GENDEV)


LDSCRIPTSDIR = $(ROOTDIR)/ldscripts

LIBPATH = -L$(ROOTDIR)/sh-elf/lib -L$(ROOTDIR)/sh-elf/lib/gcc/sh-elf/4.6.2 -L$(ROOTDIR)/sh-elf/sh-elf/lib
INCPATH = -I./include -I$(ROOTDIR)/sh-elf/include -I$(ROOTDIR)/sh-elf/sh-elf/include

CCFLAGS = -m2 -mb -O3 -Wall -g -c -fomit-frame-pointer -std=c99 -D__32X__
LDFLAGS = -T mars-cd.ld -Wl,-Map=output.map -nostdlib 
ASFLAGS = --big

PREFIX = $(ROOTDIR)/sh-elf/bin/sh-elf-
CC = $(PREFIX)gcc
AS = $(PREFIX)as
LD = $(PREFIX)ld
OBJC = $(PREFIX)objcopy

DD = dd
RM = rm -f

TARGET = sh2
LIBS = $(LIBPATH) -lc -lgcc -lgcc-Os-4-200 -lgcc-Os-4-200 -lnosys 
M_OBJS = master/main.o
S_OBJS = slave/main.o 
OBJS = crt0.o libfixmath/fix16.o libfixmath/fix16_sqrt.o libfixmath/fix16_trig.o $(M_OBJS) $(S_OBJS)
FILES =

all: $(TARGET).bin

$(TARGET).bin: $(TARGET).elf
	$(OBJC) -O binary $< sh2.bin

$(TARGET).elf: $(OBJS) $(FILES)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(TARGET).elf

main.o: main.c
	$(CC) $(CCFLAGS) $(INCPATH) $< -o $@

%.o: %.c
	$(CC) $(CCFLAGS) $(INCPATH) $< -o $@

%.o: %.cpp
	$(CC) $(CCFLAGS) $(INCPATH) $< -o $@

	
%.o: %.s
	$(AS) $(ASFLAGS) $(INCPATH) $< -o $@

clean:
	$(RM) $(OBJS) *.bin *.elf output.map

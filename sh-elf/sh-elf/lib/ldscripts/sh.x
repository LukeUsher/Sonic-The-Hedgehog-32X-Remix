/* Default linker script, for normal executables */
OUTPUT_FORMAT("coff-sh")
OUTPUT_ARCH(sh)
MEMORY
{
  ram : o = 0x1000, l = 512k
}
SECTIONS
{
  .text :
  {
    *(.text)
    *(.strings)
     _etext = . ;
  }  > ram
  .tors :
  {
    ___ctors = . ;
    *(.ctors)
    ___ctors_end = . ;
    ___dtors = . ;
    *(.dtors)
    ___dtors_end = . ;
  } > ram
  .data :
  {
    *(.data)
    *(.gcc_exc*)
    ___EH_FRAME_BEGIN__ = . ;
    *(.eh_fram*)
    ___EH_FRAME_END__ = . ;
    LONG(0);
     _edata = . ;
  }  > ram
  .bss :
  {
     _bss_start = . ;
    *(.bss)
    *(COMMON)
     _end = . ;
  }  > ram
  .stack  0x30000   :
  {
     _stack = . ;
    *(.stack)
  }  > ram
  .stab 0 (NOLOAD) :
  {
    *(.stab)
  }
  .stabstr 0 (NOLOAD) :
  {
    *(.stabstr)
  }
}

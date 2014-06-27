Ani_Sonic:
		dc.w SonAni_Walk-Ani_Sonic
		dc.w SonAni_Run-Ani_Sonic
		dc.w SonAni_Roll-Ani_Sonic
		dc.w SonAni_Roll2-Ani_Sonic
		dc.w SonAni_Push-Ani_Sonic
		dc.w SonAni_StandWait-Ani_Sonic
		dc.w SonAni_Balance1-Ani_Sonic
		dc.w SonAni_Lookup-Ani_Sonic
		dc.w SonAni_Duck-Ani_Sonic
		dc.w SonAni_Spindash-Ani_Sonic
		dc.w SonAni_Whistle-Ani_Sonic
		dc.w SonAni_Hang-Ani_Sonic
		dc.w SonAni_Balance2-Ani_Sonic
		dc.w SonAni_Skid-Ani_Sonic
		dc.w SonAni_Float1-Ani_Sonic
		dc.w SonAni_Float2-Ani_Sonic
		dc.w SonAni_Spring-Ani_Sonic
		dc.w SonAni_Hang2-Ani_Sonic
		dc.w byte_12BE3-Ani_Sonic
		dc.w SonAni_Waiting-Ani_Sonic
		dc.w SonAni_Hang3-Ani_Sonic
		dc.w SonAni_GetAir-Ani_Sonic
		dc.w SonAni_Burn-Ani_Sonic
		dc.w SonAni_Drown-Ani_Sonic
		dc.w SonAni_Death-Ani_Sonic
		dc.w byte_12C0A-Ani_Sonic
		dc.w SonAni_Hurt-Ani_Sonic
		dc.w SonAni_Waterslide-Ani_Sonic
		dc.w SonAni_Null-Ani_Sonic
		dc.w SonAni_Float3-Ani_Sonic
		dc.w SonAni_Float4-Ani_Sonic
		dc.w SonAni_Transform-Ani_Sonic
		dc.w byte_12C24-Ani_Sonic
		dc.w byte_12C28-Ani_Sonic
		dc.w SonAni_Hang4-Ani_Sonic
		dc.w SonAni_Hang5-Ani_Sonic
		dc.w SonAni_Transform-Ani_Sonic
		dc.w SonAni_WallJump-Ani_Sonic
		
SonAni_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF


SonAni_Run:	dc.b  $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF


SonAni_Roll:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF


SonAni_Roll2:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF


SonAni_Push:	dc.b  $FD, $B6,	$B7, $B8, $B9, $FF, $FF, $FF, $FF, $FF


SonAni_StandWait:
		dc.b    5, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD, $AD, $AD, $AE, $AE, $AE, $AE, $AE, $AE, $AF, $D9
		dc.b  $D9, $D9, $D9, $D9, $D9, $AF, $AF, $FE, $35
		
SonAni_Balance1:dc.b	7, $A4,	$A5, $A6, $FF
SonAni_Lookup:	dc.b	5, $C3,	$C4, $FE,   1

SonAni_Duck:	dc.b	5, $9B,	$9C, $FE,   1
SonAni_Spindash:dc.b	0, $86,	$87, $86, $88, $86, $89, $86, $8A, $86,	$8B, $FF


SonAni_Whistle:	dc.b	9, $BA,	$C5, $C6, $C6, $C6, $C6, $C6, $C6, $C7,	$C7, $C7, $C7, $C7, $C7, $C7, $C7, $C7,	$C7, $C7
		dc.b  $C7, $FD,   0

SonAni_Hang:	dc.b   $F, $8F,	$FF

SonAni_Balance2:	dc.b	5, $A1,	$A2, $A3, $FF

SonAni_Skid:	dc.b	3, $9D,	$9E, $9F, $A0, $FD,   0

SonAni_Float1:	dc.b	7, $C8,	$FF

SonAni_Float2:	dc.b	7, $C8,	$C9, $CA, $CB, $CC, $CD, $CE, $CF, $FF


SonAni_Spring:	dc.b  $2F, $8E,	$FD,   0

SonAni_Hang2:	dc.b	1, $AA,	$AB, $FF

byte_12BE3:	dc.b   $F, $43,	$43, $43, $FE,	 1

SonAni_Waiting:	dc.b	7, $B0,	$B2, $B2, $B2, $B2, $B2, $B2, $B1, $B2,	$B3, $B2, $FE,	 4


SonAni_Hang3:	dc.b  $13, $91,	$FF

SonAni_GetAir:	dc.b   $B, $AC,	$AC,   3,   4, $FD,   0

SonAni_Burn:	dc.b  $20, $A8,	$FF

SonAni_Drown:	dc.b  $20, $A9,	$FF

SonAni_Death:	dc.b  $20, $A7,	$FF

byte_12C0A:	dc.b	9, $D7,	$D8, $FF

SonAni_Hurt:	dc.b  $40, $8D,	$FF

SonAni_Waterslide:	dc.b	9, $8C,	$8D, $FF

SonAni_Null:	dc.b  $77,   0,	$FF

SonAni_Float3:	dc.b  $13, $D0,	$D1, $FF

SonAni_Float4:	dc.b	3, $CF,	$C8, $C9, $CA, $CB, $FE,   4

byte_12C24:	dc.b	9,   8,	  9, $FF
byte_12C28:	dc.b	3,   7,	$FD,   0
SonAni_Hang4:	dc.b   $B, $90,	$91, $92, $91, $FF
SonAni_Hang5:	dc.b   $B, $90,	$91, $92, $91, $FD,   0,   0

SonAni_Transform:	dc.b	2, $D2,	$D2, $D3, $D3, $D4, $D5, $D6, $D5, $D6,	$D5, $D6, $D5, $D6, $FD,   0
SonAni_WallJump:	dc.b $F, $8F,	$FF

id_Walk:	equ 0
id_Run:		equ 1
id_Roll:	equ 2
id_Roll2:	equ 3
id_Push:	equ 4
id_Wait:	equ 5
id_Balance:	equ 6
id_LookUp:	equ 7
id_Duck:	equ 8
id_SpinDash:	equ 9
id_Whistle:	equ $A
id_Hang2:	equ $B
id_Balance2:	equ $C
id_Stop:	equ $D
id_Float1:	equ $E
id_Float2:	equ $F
id_Spring:	equ $10
id_Hang:	equ $11
id_Leap1:	equ $12
id_Leap2:	equ $13	; TODO: FIX THIS!
id_Waiting:	equ $13
id_Hang3:	equ $14
id_Surf:	equ $14	; TODO: FIX THIS!
id_GetAir:	equ $15
id_Burnt:	equ $16
id_Drown:	equ $17
id_Death:	equ $18
id_Shrink:	equ $19
id_Hurt:	equ $1A
id_WaterSlide:	equ $1B
id_Null:	equ $1C
id_Float3:	equ $1D
id_Float4:	equ $1E
id_12C24:	equ $1F	
id_12C28:	equ $20
id_Hang4:	equ $21
id_Hang5:	equ $22
id_Transform:	equ $23
id_WallJump:	equ $24

;  =========================================================================
; |                  Sonic the Hedgehog 32X Remix PWM Driver                |
;  =========================================================================
;
; Based on the Knuckles Chaotix PWM Driver
; Disassembled by SoullessSentinel
;
; Thanks to DRX for his Sonic 32X port for the variable names in the 32X Driver
; ===========================================================================

		obj $c0000000
; ---------------------------------------------------------------------------
		bra	PWMInit
		nop
; ---------------------------------------------------------------------------
		bra	PWMInt
		nop
; ---------------------------------------------------------------------------

PWMInit:	
		mov.l	#$AAAAAAAA, r0				
		mov.l	#PWMIntCounter,	r1	; Initialise PWM Int Counter
		mov.l	r0, @r1
		mov.l	#$20004000, r1		; Enable PWM Interrupts
		mov	#1, r0
		mov.w	r0, @($1C,r1)
		mov.b	r0, @(1,r1)
		mov.l	#$20004030, r0		; Set PWM Settings
		mov.w	#%100000101, r1
		mov.w	r1, @r0
		mov.l	#$20004032, r0		; Set PWM Cycle rate to ~ 22khz
		mov.w	#1047, r1		
		mov.w	r1, @r0
		mov.l	#$20004034, r6		; Write silence to both PWM Channels
		mov.l	#$20004036, r7
		mov	#0, r0
		mov.w	r0, @r6
		mov.w	r0, @r6
		mov.w	r0, @r6
		mov.w	r0, @r7
		mov.w	r0, @r7
		mov.w	r0, @r7
		rts
		nop
		
		ds.l 	0
		littab
		ds.l	0
		
PWMInt:				
		mov.w	#$FFFFFE10, r1
		mov.b	@(7,r1), r0
		xor	#2, r0
		mov.b	r0, @(7,r1)
		mov.l	#$2000401C, r1
		mov.w	r0, @r1
		mov.l	#PWMIntCounter,	r1
		mov.l	@r1, r0
		rotr	r0
		bf/s	PWMInt_End
		mov.l	r0, @r1
		mov.l	r2, @-r15
		mov.l	r6, @-r15
		mov.l	r7, @-r15
		mov.l	r4, @-r15
		mov.l	r5, @-r15
		mov.l	r14, @-r15
		sts.l	pr, @-r15
		sts.l	macl, @-r15
		mov	#0, r4
		mov	#0, r5
		mov	#0, r6
		mov	#0, r7
		mov.l	#$20004028, r1
		mov.l	#PWM1_Settings,	r14
		bsr	PWMChannel_Process
		nop
		mov.l	#$2000402A, r1
		mov.l	#PWM2_Settings,	r14
		bsr	PWMChannel_Process
		nop
		mov.l	#$2000402C, r1
		mov.l	#PWM3_Settings,	r14
		bsr	PWMChannel_Process
		nop
		mov.l	#$2000402E, r1
		mov.l	#PWM4_Settings,	r14
		bsr	PWMChannel_Process
		nop
		mov.w	#$400, r1
		xor	r1, r4
		xor	r1, r5
		xor	r1, r6
		xor	r1, r7
		mov.w	#$7FF, r1
		and	r1, r4
		and	r1, r5
		and	r1, r6
		and	r1, r7
		mov.w	#$200, r1
		sub	r1, r4
		sub	r1, r5
		sub	r1, r6
		sub	r1, r7
		mov.l	#$20004034, r0
		mov.l	#$20004036, r1
		lds.l	@r15+, macl
		lds.l	@r15+, pr
		mov.l	@r15+, r14
		mov.w	r4, @r0
		mov.w	r5, @r1
		mov.l	@r15+, r5
		mov.l	@r15+, r4

delayloop:				
		mov.w	@r0, r2
		cmp/pz	r2
		bt	enddelay
		mov	#$18, r2

delayloop2:				
		dt	r2
		bf	delayloop2
		bt	delayloop

enddelay:				
		mov.w	r6, @r0
		mov.w	r7, @r1
		mov.l	@r15+, r7
		mov.l	@r15+, r6
		mov.l	@r15+, r2

PWMInt_End:			
					
		rts
		nop

PWMChannel_Process:
		mov.w	@r1, r2
		tst	r2, r2
		bt	MixLastSample
		mov.w	@r1, r0
		cmp/eq	r2, r0
		bf	PWMChannel_Process
		mov	#0, r0
		mov.w	r0, @r1
		extu.b	r2, r0
		mov.l	#PWMSampleTable, r1
		shll2	r0
		mov.l	@r1, r1
		shll2	r0
		add	r0, r1
		mov.l	@r1+, r0
		mov.l	r0, @(0,r14)
		mov.l	@r1+, r0
		mov.l	r0, @(4,r14)
		mov.l	r0, @($10,r14)
		mov.l	@r1+, r0
		mov.l	r0, @(8,r14)
		mov.l	@r1+, r0
		mov.l	r0, @($1C,r14)
		mov	#0, r0
		mov.l	r0, @($28,r14)
		swap.b	r2, r0
		shlr2	r0
		shlr	r0
		and	#$1E, r0
		add	#2, r0
		mov.l	r0, @($14,r14)
		swap.b	r2, r0
		shll	r0
		and	#$1E, r0
		add	#2, r0
		mov.l	r0, @($18,r14)

MixLastSample:		
		mov.l	@($28,r14), r0
		mov.l	@($1C,r14), r1
		mov.w	#$800, r2
		add	r1, r0
		mov.l	r0, @($28,r14)
		cmp/hs	r2, r0
		bt	LoadNewSample
		mov.l	@($20,r14), r0
		mov.l	@($24,r14), r1
		add	r0, r4
		add	r0, r6
		add	r1, r5
		rts
		add	r1, r7

LoadNewSample:		
		sub	r2, r0
		mov.l	r0, @($28,r14)
		mov.l	@($10,r14), r0
		mov.l	@(0,r14), r1
		dt	r0
		bf	playsample
		mov.l	@(8,r14), r1
		tst	r1, r1
		bt	PWMInt_End
		mov.l	@($C,r14), r0

playsample:		
		mov.b	@r1+, r2
		mov.l	r0, @($10,r14)
		mov.l	r1, @(0,r14)
		mov	#$FFFFFF80, r0
		xor	r0, r2
		mov.l	@($14,r14), r1
		muls	r1, r2
		mov.l	@($20,r14), r1
		sts	macl, r0
		shar	r0
		shar	r0
		shar	r0
		shar	r0
		mov.l	r0, @($20,r14)
		add	r0, r6
		add	r1, r0
		shar	r0
		add	r0, r4
		mov.l	@($18,r14), r1
		muls	r1, r2
		mov.l	@($24,r14), r1
		sts	macl, r0
		shar	r0
		shar	r0
		shar	r0
		shar	r0
		mov.l	r0, @($24,r14)
		add	r0, r7
		add	r1, r0
		shar	r0
		rts
		add	r0, r5
		
		ds.l	0
		littab
		ds.l	0
; ---------------------------------------------------------------------------
PWMIntCounter:		dc.l	$AAAAAAAA
PWMSampleTable:		dc.l	$DEADBEEF   		; Pointer to PWM Table in ROM, this is updated to the correct value in cache by main.c before the code is launched.
PWM1_Settings:		dc.l	       0,	  1,	     0,		0,	   1,	   $10,      $10,	$800,	       0,	  0,	     0
PWM2_Settings:		dc.l	       0,	  1,	     0,		0,	   1,	   $10,      $10,	$800,	       0,	  0,	     0
PWM3_Settings:		dc.l	       0,	  1,	     0,		0,	   1,	   $10,      $10,	$800,	       0,	  0,	     0
PWM4_Settings:		dc.l	       0,	  1,	     0,		0,	   1,	   $10,      $10,	$800,	       0,	  0,	     0


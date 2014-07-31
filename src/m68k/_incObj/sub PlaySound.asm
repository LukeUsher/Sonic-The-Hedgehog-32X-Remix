; ---------------------------------------------------------------------------
; Subroutine to	play a music track

; input:
;	d0 = track to play
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


; ---------------------------------------------------------------------------
; Subroutine to	play a sound or	music track
; ---------------------------------------------------------------------------
 
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
 
 
PlaySound:
		cmpi.w	#$FB,d0
		blt.s	PlayNotSpecialFlag
		bhi.s	TestForNormalSpeed
		move	#8,d0
		jmp	SetTempo
 
TestForNormalSpeed:
		cmpi.w	#$FC,d0
		bne.s	PlayNotSpecialFlag
		clr.w	d0
		jmp	SetTempo
 
PlayNotSpecialFlag:
		stopZ80
		move.b	d0,(zMusicNumber).l
		startZ80
		rts
; End of function PlaySound
 
; ---------------------------------------------------------------------------
; Exclusive sound/music subroutine
; ---------------------------------------------------------------------------
 
 
; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||
  
PlaySound_Ex:
		tst.b	4(A0)
		bpl.s	SkipPlaySound_Special
 

; ---------------------------------------------------------------------------
; Unused sound/music subroutine
; ---------------------------------------------------------------------------
 
PlaySound_Unk:
		nop
; ---------------------------------------------------------------------------
; Subroutine to	play a special sound/music (FB-FF)
; ---------------------------------------------------------------------------
 
PlaySound_Special:
		stopz80
		cmp.b	(zSFXNumber0).l,d0
		beq.s	PlaySound_Special1
		tst.b	(zSFXNumber0).l
		bne.s	PlaySound_Special0
		move.b	d0,(zSFXNumber0).l
		startz80
		rts
 
PlaySound_Special0:
		move.b	d0,(zSFXNumber1).l
 
PlaySound_Special1:
		startz80
 
SkipPlaySound_Special:
		rts
; End of function PlaySound_Special
 
; ---------------------------------------------------------------------------
; Subroutine to change the music tempo
; ---------------------------------------------------------------------------
 
SetTempo:
		stopz80
		move.b	d0,(zTempoSpeedup).l
		startz80
		rts
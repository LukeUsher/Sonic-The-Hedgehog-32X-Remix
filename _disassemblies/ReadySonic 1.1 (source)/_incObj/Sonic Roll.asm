; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to roll when he's moving
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Roll:				; XREF: Obj01_MdNormal
		tst.b	(f_jumponly).w
		bne.s	@noroll
		move.w	obInertia(a0),d0
		bpl.s	@ispositive
		neg.w	d0

	@ispositive:
	
	if SpinDashActive=1	;Mercury Spin Dash
		cmpi.w	#$100,d0	; is Sonic moving at $100 speed or faster?
	else
		cmpi.w	#$80,d0		; is Sonic moving at $80 speed or faster?
	endc	;end Spin Dash
	
		bcs.s	@noroll		; if not, branch
		move.b	(v_jpadhold2).w,d0
		andi.b	#btnL+btnR,d0	; is left/right	being pressed?
		bne.s	@noroll		; if yes, branch
		btst	#bitDn,(v_jpadhold2).w ; is down being pressed?
		bne.s	Sonic_ChkRoll	; if yes, branch

	@noroll:
		rts	
; ===========================================================================

Sonic_ChkRoll:
		btst	#2,obStatus(a0)	; is Sonic already rolling?
		beq.s	@roll		; if not, branch
		rts	
; ===========================================================================

@roll:
		bset	#2,obStatus(a0)
		move.b	#$E,obHeight(a0)
		move.b	#7,obWidth(a0)
		move.b	#id_Roll,obAnim(a0) ; use "rolling" animation
		move.b	#fr_Roll1,obFrame(a0)	; hard sets frame so no flicker when roll in tunnels	;Mercury Roll Frame Fix
		addq.w	#5,obY(a0)
		sfx	sfx_Roll	; play rolling sound
		tst.w	obInertia(a0)
		bne.s	@ismoving
		move.w	#$200,obInertia(a0) ; set inertia if 0

	@ismoving:
		rts	
; End of function Sonic_Roll
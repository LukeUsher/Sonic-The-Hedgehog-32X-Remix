; ---------------------------------------------------------------------------
; Object 60 - Orbinaut enemy (LZ, SLZ, SBZ)
; ---------------------------------------------------------------------------

Orbinaut:				; XREF: Obj_Index
		moveq	#0,d0
		move.b	obRoutine(a0),d0
		move.w	Orb_Index(pc,d0.w),d1
		jmp	Orb_Index(pc,d1.w)
; ===========================================================================
Orb_Index:	dc.w Orb_Main-Orb_Index
		dc.w Orb_ChkSonic-Orb_Index
		dc.w Orb_Display-Orb_Index
		dc.w Orb_MoveOrb-Orb_Index
		dc.w Orb_ChkDel2-Orb_Index
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		dc.w Orb_Pause-Orb_Index
		dc.w Orb_MoveOut-Orb_Index

orb_distance: = $2A		; distance of child orbs
	endc	;end SLZ Orbinaut Behaviour Mod

orb_parent:	= $3C		; address of parent object
; ===========================================================================

Orb_Main:	; Routine 0
		move.l	#Map_Orb,obMap(a0)
		move.w	#$429,obGfx(a0)	; SBZ specific code
		cmpi.b	#id_SBZ,(v_zone).w ; check if level is SBZ
		beq.s	@isscrap
		move.w	#$2429,obGfx(a0) ; SLZ specific code

	@isscrap:
		cmpi.b	#id_LZ,(v_zone).w ; check if level is LZ
		bne.s	@notlabyrinth
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		move.w	#$2467,obGfx(a0)	; LZ specific code
	else
		move.w	#$467,obGfx(a0)	; LZ specific code
	endc	;end SLZ Orbinaut Behaviour Mod

	@notlabyrinth:
	
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		move.b	#4,orb_distance(a0)
	endc	;end SLZ Orbinaut Behaviour Mod
	
		ori.b	#4,obRender(a0)
		move.b	#4,obPriority(a0)
		move.b	#$B,obColType(a0)
		move.b	#$C,obActWid(a0)
		moveq	#0,d2
		lea	$37(a0),a2
		movea.l	a2,a3
		addq.w	#1,a2
		moveq	#3,d1

@makesatellites:
		bsr.w	FindNextFreeObj
		bne.s	@fail
		addq.b	#1,(a3)
		move.w	a1,d5
		subi.w	#$D000,d5
		lsr.w	#6,d5
		andi.w	#$7F,d5
		move.b	d5,(a2)+
		move.b	0(a0),0(a1)	; load spiked orb object
		move.b	#6,obRoutine(a1) ; use Orb_MoveOrb routine
		move.l	obMap(a0),obMap(a1)
		move.w	obGfx(a0),obGfx(a1)
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		cmpi.b	#id_SLZ,(v_zone).w ; check if level is SLZ
		beq.s	@isSLZ
		sub.w	#$2000,obGfx(a1)
		
	@isSLZ:
	endc	;end SLZ Orbinaut Behaviour Mod
		
		ori.b	#4,obRender(a1)
		move.b	#4,obPriority(a1)
		move.b	#8,obActWid(a1)
		move.b	#3,obFrame(a1)
		move.b	#$98,obColType(a1)
		move.b	d2,obAngle(a1)
		addi.b	#$40,d2
		move.l	a0,orb_parent(a1)
		dbf	d1,@makesatellites ; repeat sequence 3 more times

	@fail:
		moveq	#1,d0
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		cmpi.b	#2,obSubtype(a0)
		bne.s	@add
		neg.w	d0
	@add:
	endc	;end SLZ Orbinaut Behaviour Mod
		
		btst	#0,obStatus(a0)	; is orbinaut facing left?
		beq.s	@noflip		; if not, branch
		neg.w	d0

	@noflip:
		move.b	d0,$36(a0)
		
	if SLZOrbinautBehaviourMod=0	;Mercury SLZ Orbinaut Behaviour Mod
		move.b	obSubtype(a0),obRoutine(a0) ; if type is 02, skip Orb_ChkSonic
	endc	;end SLZ Orbinaut Behaviour Mod
		
		addq.b	#2,obRoutine(a0)
		move.w	#-$40,obVelX(a0) ; move orbinaut to the left
		btst	#0,obStatus(a0)	; is orbinaut facing left??
		beq.s	@noflip2	; if not, branch
		neg.w	obVelX(a0)	; move orbinaut	to the right

	@noflip2:
		rts	
; ===========================================================================

Orb_ChkSonic:	; Routine 2
		move.w	(v_player+obX).w,d0
		sub.w	obX(a0),d0	; is Sonic to the right of the orbinaut?
		bcc.s	@isright	; if yes, branch
		neg.w	d0

	@isright:
	
	if OrbinautAnimationTweak=1	;Mercury Orbinaut Animation Tweak
		cmpi.w	#OrbinautAnimationTweakRange,d0
	else
		cmpi.w	#$A0,d0		; is Sonic within $A0 pixels of	orbinaut?
	endc	;end Orbinaut Animation Tweak

		bcc.s	@animate	; if not, branch
		move.w	(v_player+obY).w,d0
		sub.w	obY(a0),d0	; is Sonic above the orbinaut?
		bcc.s	@isabove	; if yes, branch
		neg.w	d0

	@isabove:
		cmpi.w	#$50,d0		; is Sonic within $50 pixels of	orbinaut?
		bcc.s	@animate	; if not, branch
		tst.w	(v_debuguse).w	; is debug mode	on?
		bne.s	@animate	; if yes, branch
		move.b	#1,obAnim(a0)	; use "angry" animation

@animate:
		lea	(Ani_Orb).l,a1
		bsr.w	AnimateSprite
		bra.w	Orb_ChkDel
; ===========================================================================

Orb_Display:	; Routine 4
		bsr.w	ObjectMove

Orb_ChkDel:
		out_of_range	@chkgone
		bra.w	DisplaySprite

@chkgone:
		lea	(v_objstate).w,a2
		moveq	#0,d0
		move.b	obRespawnNo(a0),d0
		beq.s	loc_11E34
		bclr	#7,2(a2,d0.w)

loc_11E34:
		lea	$37(a0),a2
		moveq	#0,d2
		move.b	(a2)+,d2
		subq.w	#1,d2
		bcs.s	Orb_Delete

loc_11E40:
		moveq	#0,d0
		move.b	(a2)+,d0
		lsl.w	#6,d0
		addi.l	#v_objspace&$FFFFFF,d0
		movea.l	d0,a1
		bsr.w	DeleteChild
		dbf	d2,loc_11E40

Orb_Delete:
		bra.w	DeleteObject
; ===========================================================================

Orb_MoveOrb:	; Routine 6
		movea.l	orb_parent(a0),a1
		cmpi.b	#id_Orbinaut,0(a1) ; does parent object still exist?
		bne.w	DeleteObject	; if not, delete
		cmpi.b	#2,obFrame(a1)	; is orbinaut angry?
		bne.w	@circle		; if not, branch ;Mercury SLZ Orbinaut Behaviour Mod bne.s => bne.w
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		cmpi.b	#2,obSubtype(a1)
		beq.s	@fire2
	endc	;end SLZ Orbinaut Behaviour Mod
		
		cmpi.b	#$40,obAngle(a0) ; is spikeorb directly under the orbinaut?
		bne.s	@circle		; if not, branch
		addq.b	#2,obRoutine(a0)
		subq.b	#1,$37(a1)
		bne.s	@fire
		addq.b	#2,obRoutine(a1)

	@fire:
		move.w	#-$200,obVelX(a0) ; move orb to the left (quickly)
		btst	#0,obStatus(a1)
		beq.s	@noflip
		neg.w	obVelX(a0)
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		bra.s	@noflip

	@fire2:
		cmpi.b	#3,orb_distance(a1)	; is the orb distance high enough?
		beq.s	@circle			; if so, branch to the code that makes them circle
		move.b	#12,obRoutine(a0)	; change orb to the routine that moves it outward
		move.b	#30,$2E(a0)		; set the orb timer to 30 steps
		subq.b	#1,$37(a1)		; decrease the number of orbs left to be fired off
		bne.s	@skip			; if there are still orbs, branch
		move.b	#10,obRoutine(a1)	; change to the routine that pauses movement
		move.b	#3,orb_distance(a1)	; set orb distance
		move.b	$36(a1),d0		; double orbit speed
		asl.b	#1,d0
		move.b	d0,$36(a1)
		move.b	#30,$2E(a1)		; set a timer to 30 steps
	
	@skip:
		move.w	obX(a0),d2		; set the velocity of the orb based on its position
		sub.w	obX(a1),d2		; relative to the Orbinaut
		asl.w	#3,d2
		move.w	d2,obVelX(a0)
		move.w	obY(a0),d2
		sub.w	obY(a1),d2
		asl.w	#3,d2
		move.w	d2,obVelY(a0)
	endc	;end SLZ Orbinaut Behaviour Mod
		
	@noflip:
		bra.w	DisplaySprite
; ===========================================================================

@circle:

	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		move.b	orb_distance(a1),d2	; put orb distance into d2
	endc	;end SLZ Orbinaut Behaviour Mod

		move.b	obAngle(a0),d0
		jsr	(CalcSine).l
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		asr.w	d2,d1
	else
		asr.w	#4,d1
	endc	;end SLZ Orbinaut Behaviour Mod
		
		add.w	obX(a1),d1
		move.w	d1,obX(a0)
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
		asr.w	d2,d0
	else
		asr.w	#4,d0
	endc	;end SLZ Orbinaut Behaviour Mod

		add.w	obY(a1),d0
		move.w	d0,obY(a0)
		move.b	$36(a1),d0
		add.b	d0,obAngle(a0)
		bra.w	DisplaySprite
; ===========================================================================

	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
Orb_Pause:	; Routine 10
		subq.b	#1,$2E(a0)		; decrease timer
		bne.s	Orb_ChkDel2Skip		; if it hasn't run out, branch
		move.b	#4,obRoutine(a0)	; go back to the normal routine
		bra.s	Orb_ChkDel2Skip

Orb_MoveOut:	; Routine 12
		subq.b	#1,$2E(a0)		; decrease timer
		bne.s	Orb_ChkDel2		; if it hasn't run out, branch
		move.b	#6,obRoutine(a0)	; go back to the normal routine
	endc	;end SLZ Orbinaut Behaviour Mod

Orb_ChkDel2:	; Routine 8
		bsr.w	ObjectMove
		
	if SLZOrbinautBehaviourMod=1	;Mercury SLZ Orbinaut Behaviour Mod
Orb_ChkDel2Skip:
	endc	;end SLZ Orbinaut Behaviour Mod
		
		tst.b	obRender(a0)
		bpl.w	DeleteObject
		bra.w	DisplaySprite

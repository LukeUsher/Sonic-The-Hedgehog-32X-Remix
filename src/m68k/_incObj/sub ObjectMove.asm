; ---------------------------------------------------------------------------
; Subroutine translating object	speed to update	object position
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ObjectMove:
	move.w  obVelX(a0),d0
        ext.l   d0
        lsl.l   #8,d0
        add.l   d0,obX(a0)
        move.w  obVelY(a0),d0
        ext.l   d0
        lsl.l   #8,d0
        add.l   d0,obY(a0)
        rts

; End of function ObjectMove
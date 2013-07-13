; ---------------------------------------------------------------------------
; Subroutine to	make an	object fall downwards, increasingly fast
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


ObjectMoveAndFall:
        move.w  obVelX(a0),d0	; Read object's velocity
        ext.l   d0
        lsl.l   #8,d0		
        add.l   d0,obX(a0)	; Add to objects X position
        move.w  obVelY(a0),d0	; Read objects Y velocity
        addi.w  #$38,obVelY(a0) ; Increase by gravity amount
        ext.l   d0
        lsl.l   #8,d0
        add.l   d0,obY(a0)	; Add to objects Y position
        rts

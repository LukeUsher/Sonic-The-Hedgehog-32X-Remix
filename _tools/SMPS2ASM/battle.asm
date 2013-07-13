battle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     battle_Voices
	smpsHeaderChan      $04, $02
	smpsHeaderTempo     $01, $04

	smpsHeaderDAC       battle_DAC
	smpsHeaderFM        battle_FM1,	$00, $10
	smpsHeaderFM        battle_FM2,	$00, $10
	smpsHeaderFM        battle_FM3,	$00, $10
	smpsHeaderPSG       battle_PSG1,	$DC, $00, $00, $00
	smpsHeaderPSG       battle_PSG2,	$DC, $00, $00, $00

; FM1 Data
battle_FM1:
	smpsPan             panRight, $00
	smpsSetvoice        $02
	dc.b	nA1, $32, nRst, $29, $03
	smpsPan             panCenter, $00
	dc.b	nA1, $05, nRst, $0C, nA1, $32

battle_Jump03:
	dc.b	nRst, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nE2, $05, nB1, $06, nC2, nAb1, nA1, nRst, $0B, nA1, $06, nRst
	dc.b	$0C, nA1, $06, nRst, $0B, nA1, $06, nRst, $0C, nA1, $0A, nRst
	dc.b	$02, nG1, $09, nRst, $02, nA1, $06, nRst, $0C, nA1, $05, nRst
	dc.b	$0C, nA1, $06, nRst, $0C, nA1, $05, nRst, $0C, nA1, $0A, nRst
	dc.b	$02, nG1, $0A, nRst, $02, nF1, $14, nRst, $03, nG1, $0F, nRst
	dc.b	$02, nE1, $0C, nE2, $06, nB1, $0A, nRst, $02, nF1, $09, nRst
	dc.b	$02, nG1, $0A, nRst, $02, nA1, $14, nRst, $03, nB1, $15, nRst
	dc.b	$03, nC2, $14, nRst, $03, nE2, $14, nRst, $03, nF1, $15, nRst
	dc.b	$03, nG1, $0F, nRst, $02, nE1, $0C, nE2, $05, nRst, $01, nB1
	dc.b	$09, nRst, $02, nF1, $0A, nRst, $02, nG1, $0A, nRst, $02, nA1
	dc.b	$05, nRst, $0C, nA1, $06, nRst, $0C, nA1, $05, nRst, $0C, nA1
	dc.b	$06, nRst, $0C, nA1, $09, nRst, $02, nG1, $0A, nRst, $02, nA1
	dc.b	$06, nRst, $0B, nA1, $06, nRst, $0C, nA1, $06, nRst, $0B, nA1
	dc.b	$06, nRst, $0C, nA1, $0A, nRst, $02, nG1, $09, nRst, $02, nA1
	dc.b	$06, nRst, $0C, nA1, $05, nRst, $0C, nA1, $06, nRst, $0C, nA1
	dc.b	$05, nRst, $0C, nA1, $0A, nRst, $02, nG1, $0A, nRst, $02, nF1
	dc.b	$05, nRst, $0C, nF1, $06, nRst, $0C, nE1, $05, nRst, $0C, nD1
	dc.b	$06, nRst, $0C, nE1, $09, nRst, $02, nE1, $0A, nRst, $02, nA1
	dc.b	$06, nRst, $0B, nA1, $06, nRst, $0C, nA1, $06, nRst, $0B, nA1
	dc.b	$06, nRst, $0C, nA1, $0A, nRst, $02, nG1, $09, nRst, $02, nF1
	dc.b	$06, nRst, $0C, nF1, $05, nRst, $0C, nE1, $06, nRst, $0C, nD1
	dc.b	$05, nRst, $0C, nE1, $0A, nRst, $02, nE1, $0A, nRst, $02, nF1
	dc.b	$20, nRst, $03, nFs1, $09, nRst, $02, nG1, $10, nRst, $02, nD1
	dc.b	$0F, nRst, $02, nG1, $0A, nRst, $02, nA1, $0F, nRst, $02, nG1
	dc.b	$1B, nRst, $03, nE1, $0F, nRst, $02, nG1, $14, nRst, $03, nF1
	dc.b	$26, nRst, $03, nFs1, $0A, nRst, $02, nG1, $0F, nRst, $02, nB1
	dc.b	$10, nRst, $02, nG1, $0A, nRst, $02, nD1, $0F, nRst, $02, nA1
	dc.b	$10, nRst, $02, nD2, $15, nRst, $02, nC2, $0A, nRst, $02, nB1
	dc.b	$09, nRst, $02, nA1, $0A, nRst, $02, nF1, $20, nRst, $03, nA1
	dc.b	$0A, nRst, $02, nE1, $0F, nRst, $02, nE2, $10, nRst, $02, nD2
	dc.b	$09, nRst, $02, nC2, $10, nRst, $02, nG1, $0F, nRst, $02, nE2
	dc.b	$0A, nRst, $02, nD2, $0F, nRst, $02, nA1, $10, nRst, $02, nFs1
	dc.b	$0A, nRst, $02, nF1, $20, nRst, $03, nC2, $09, nRst, $02, nF2
	dc.b	$0A, nRst, $02, nE2, $06, nF2, $09, nRst, $02, nE2, $06, nD2
	dc.b	nC2, nFs1, $20, nRst, $03, nC2, $0A, nRst, $02, nEb2, $14, nRst
	dc.b	$03, nFs2, $14, nRst, $03, nG1, $10, nRst, $02, nG2, $0F, nRst
	dc.b	$02, nFs2, $0A, nRst, $02, nF2, $0F, nRst, $02, nF1, $1B, nRst
	dc.b	$03, nE1, $0F, nRst, $02, nE2, $10, nRst, $02, nEb2, $09, nRst
	dc.b	$02, nD2, $10, nRst, $02, nD1, $1A, nRst, $03
	smpsPan             panRight, $00
	dc.b	nA1, $3E
	smpsJump            battle_Jump03

; FM2 Data
battle_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nA2, $32, nRst, $29, $03, nA2, $05, nRst, $0C, nA2, $32

battle_Jump02:
	dc.b	nRst, $17, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nA2, $06, nRst, $0B, nA2, $06, nRst, $0C, nA2, $06, nRst, $0B
	dc.b	nA2, $06, nRst, $0C, nA2, $0A, nRst, $02, nG2, $09, nRst, $02
	dc.b	nA2, $06, nRst, $0C, nA2, $05, nRst, $0C, nA2, $06, nRst, $0C
	dc.b	nA2, $05, nRst, $0C, nA2, $0A, nRst, $02, nG2, $0A, nRst, $02
	dc.b	nF2, $14, nRst, $03, nG2, $0F, nRst, $02, nE2, $32, nRst, $03
	dc.b	nA2, $32, nRst, $28, $03, nF2, $15, nRst, $03, nG2, $0F, nRst
	dc.b	$02, nE2, $32, nRst, $03, nA2, $32, nRst, $28, $60, nA2, $06
	dc.b	$06, $06, $05, nRst, $01, nA2, $05, $06, $06, $06, $06, $05
	dc.b	nRst, $01, nA2, $05, $06, $0A, nRst, $02, nG2, $0A, nRst, $02
	dc.b	nF2, $05, $06, $06, $06, $06, $05, nRst, $01, nE2, $05, $06
	dc.b	$06, nD2, $06, $06, $05, nRst, $01, nE2, $09, nRst, $02, nE2
	dc.b	$0A, nRst, $02, nA2, $06, $05, nRst, $01, nA2, $05, $06, $06
	dc.b	$06, $06, $05, nRst, $01, nA2, $05, $06, $06, $06, $0A, nRst
	dc.b	$02, nG2, $09, nRst, $02, nF2, $06, $06, $06, $05, nRst, $01
	dc.b	nF2, $05, $06, nE2, $06, $06, $06, nD2, $05, nRst, $01, nD2
	dc.b	$05, $06, nE2, $0A, nRst, $02, nE2, $0A, nRst, $02
	smpsPan             panRight, $00
	smpsSetvoice        $01
	dc.b	nA3, $2B, nRst, $03
	smpsPan             panCenter, $00
	dc.b	nG3, $2C, nRst, $03, nC4, $0F, nRst, $02, nB3, $10, nRst, $02
	dc.b	nD4, $0A, nRst, $02, nC4, $14, nRst, $03, nB3, $0F, nRst, $02
	dc.b	nA3, $32, nRst, $03, nB3, $14, nRst, $03, nG3, $15, nRst, $03
	dc.b	nA3, $14, nRst, $03, nG3, $14, nRst, $03, nFs3, $2C, nRst, $03
	dc.b	nA3, $2C, nRst, $03, nG3, $2B, nRst, $03, nG3, $10, nRst, $02
	dc.b	nG3, $0F, nRst, $02, nG3, $0A, nRst, $02, nA3, $0F, nRst, $02
	dc.b	nA3, $10, nRst, $02, nA3, $0A, nRst, $02, nA3, $32, nRst, $28
	dc.b	$03, nA3, $32, nRst, $28, $03, nG3, $10, nRst, $02, nG3, $0F
	dc.b	nRst, $02, nG3, $0A, nRst, $02, nA3, $0F, nRst, $02, nA3, $10
	dc.b	nRst, $02, nA3, $0A, nRst, $02, nC4, $0F, nRst, $02, nC4, $10
	dc.b	nRst, $02, nC4, $09, nRst, $08, nD4, $06, nC4, nB3, $05, nRst
	dc.b	$01, nA3, $05, nAb3, $06, nF3, nE3
	smpsSetvoice        $03
	dc.b	nA2, $3E
	smpsJump            battle_Jump02

; FM3 Data
battle_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nA4, $06
	smpsPan             panCenter, $00
	dc.b	nE4, nC4, nA4, $05, nRst, $01, nF4, $05, nC4, $06, nA4, nFs4
	dc.b	nC4, nA4, $05, nRst, $01, nF4, $05, nC4, $06, nA4, nE4, nD4
	dc.b	nG4, $05, nRst, $01, nA4, $05, nE4, $06, nC4, nA4, nF4, nC4
	dc.b	$05

battle_Jump01:
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nA4, $05, nFs4, $06, nC4, nA4, nF4, nC4, $05, nRst, $01, nA4
	dc.b	$05, nE4, $06, nD4, nG4, nA4, nE4, $05, nRst, $01, nC4, $05
	dc.b	nA4, $06, nF4, nC4, nA4, nFs4, $05, nRst, $01, nC4, $05, nA4
	dc.b	$06, nF4, nC4, nA4, nE4, $05, nRst, $01, nD4, $05, nG4, $06
	dc.b	nA4, nE4, nC4, nA4, $05, nRst, $01, nF4, $05, nC4, $06, nA4
	dc.b	nFs4, nC4, nA4, $05, nRst, $01, nF4, $05, nC4, $06, nA4, nE4
	dc.b	nD4, nG4, $05, nRst, $01, nF4, $09, nRst, $02, nC5, $0A, nRst
	dc.b	$02, nB4, $06, nA4, $09, nRst, $02, nG4, $0C, nA4, $06, nB4
	dc.b	$0A, nRst, $02, nG4, $09, nRst, $02, nD4, $0A, nRst, $02, nE4
	dc.b	$32, nRst, $28, $03, nF4, $0A, nRst, $02, nC5, $0A, nRst, $02
	dc.b	nB4, $05, nA4, $0A, nRst, $02, nG4, $0C, nA4, $05, nRst, $01
	dc.b	nB4, $09, nRst, $02, nG4, $0A, nRst, $02, nD4, $0A, nRst, $02
	dc.b	nE4, $32, nRst, $28, $60, nE4, $06, $06, $06, $05, nRst, $01
	dc.b	nE4, $05, $06, $06, $06, $06, $05, nRst, $01, nE4, $05, $06
	dc.b	$0A, nRst, $02, nE4, $0A, nRst, $02, nF4, $05, $06, $06, $06
	dc.b	$06, $05, nRst, $01, nG4, $05, $06, $06, nF4, $06, $06, $05
	dc.b	nRst, $01, nE4, $09, nRst, $02, nE4, $0A, nRst, $02, nE4, $06
	dc.b	$05, nRst, $01, nE4, $05, $06, $06, $06, $06, $05, nRst, $01
	dc.b	nE4, $05, $06, $06, $06, $0A, nRst, $02, nE4, $09, nRst, $02
	dc.b	nF4, $06, $06, $06, $05, nRst, $01, nF4, $05, $06, nG4, $06
	dc.b	$06, $06, nF4, $05, nRst, $01, nF4, $05, $06, nE4, $0A, nRst
	dc.b	$02, nE4, $0A, nRst, $02
	smpsPan             panRight, $00
	smpsSetvoice        $03
	dc.b	nF2, $20, nRst, $03
	smpsPan             panCenter, $00
	dc.b	nFs2, $09, nRst, $02, nG2, $2C, nRst, $03, nA2, $0F, nRst, $02
	dc.b	nG2, $1B, nRst, $03, nE2, $0F, nRst, $02, nG2, $14, nRst, $03
	dc.b	nF2, $26, nRst, $03, nFs2, $0A, nRst, $02, nG2, $2C, nRst, $03
	dc.b	nA2, $09, nRst, $02, nA2, $06, $0A, nRst, $02, nA2, $05, nRst
	dc.b	$01, nA2, $09, nRst, $02, nA2, $06, $0A, nRst, $02, nA2, $05
	dc.b	nRst, $01, nA2, $09, nRst, $02, nG2, $0A, nRst, $02, nF2, $20
	dc.b	nRst, $03, nF2, $0A, nRst, $02, nE2, $2B, nRst, $03, nC3, $10
	dc.b	nRst, $02, nG2, $1A, nRst, $03, nA2, $0F, nRst, $02, nFs2, $1B
	dc.b	nRst, $03, nF2, $09, nRst, $02, nF2, $06, $0A, nRst, $02, nF2
	dc.b	$05, nRst, $01, nF2, $09, nRst, $02, nF2, $06, $0A, nRst, $02
	dc.b	nF2, $05, nRst, $01, nF2, $09, nRst, $02, nF2, $0A, nRst, $02
	dc.b	nFs2, $0A, nRst, $02, nFs2, $05, $0A, nRst, $02, nFs2, $06, $0A
	dc.b	nRst, $02, nFs2, $05, $0A, nRst, $02, nFs2, $06, $0A, nRst, $02
	dc.b	nFs2, $09, nRst, $02
	smpsPan             panLeft, $00
	smpsSetvoice        $00
	dc.b	nG4, $2C, nRst, $03
	smpsPan             panCenter, $00
	dc.b	nA4, $2C, nRst, $03, nC5, $2B, nRst, $03, nD5, $2C, nRst, $03
	dc.b	nA4, $06, nE4, $05, nRst, $01, nC4, $05, nA4, $06, nF4
	smpsJump            battle_Jump01

; PSG1 Data
battle_PSG1:
	smpsPSGvoice        $00
	dc.b	nE5, $06, nC5, nA4, nF5, $05, nRst, $01, nC5, $05, nA4, $06
	dc.b	nFs5, nC5, nA4, nF5, $05, nRst, $01, nC5, $05, nA4, $06, nE5
	dc.b	nC5, nB4, nD5, $05, nRst, $01, nE5, $05, nC5, $06, nA4, nF5
	dc.b	nC5, nA4, $05

battle_Jump05:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	dc.b	nFs5, $05, nC5, $06, nA4, nF5, nC5, nA4, $05, nRst, $01, nE5
	dc.b	$05, nC5, $06, nB4, nD5, nE5, nC5, $05, nRst, $01, nA4, $05
	dc.b	nF5, $06, nC5, nA4, nFs5, nC5, $05, nRst, $01, nA4, $05, nF5
	dc.b	$06, nC5, nA4, nE5, nC5, $05, nRst, $01, nB4, $05, nD5, $06
	dc.b	nE5, nC5, nA4, nF5, $05, nRst, $01, nC5, $05, nA4, $06, nFs5
	dc.b	nC5, nA4, nF5, $05, nRst, $01, nC5, $05, nA4, $06, nE5, nC5
	dc.b	nB4, nD5, $05, nRst, $01, nA4, $09, nRst, $02, nE5, $0A, nRst
	dc.b	$02, nD5, $06, nC5, $09, nRst, $02, nB4, $0C, nC5, $06, nD5
	dc.b	$0A, nRst, $02, nB4, $09, nRst, $02, nG4, $0A, nRst, $02, nA4
	dc.b	$32, nRst, $28, $03, nA4, $0A, nRst, $02, nE5, $0A, nRst, $02
	dc.b	nD5, $05, nC5, $0A, nRst, $02, nB4, $0C, nC5, $05, nRst, $01
	dc.b	nD5, $09, nRst, $02, nB4, $0A, nRst, $02, nG4, $0A, nRst, $02
	dc.b	nA4, $32, nRst, $28, $60, nA4, $06, $06, $06, $05, nRst, $01
	dc.b	nA4, $05, $06, $06, $06, $06, $05, nRst, $01, nA4, $05, $06
	dc.b	$0A, nRst, $02, nA4, $0A, nRst, $02, nA4, $05, $06, $06, $06
	dc.b	$06, $05, nRst, $01, nA4, $05, $06, $06, $06, $06, $05, nRst
	dc.b	$01, nA4, $09, nRst, $02, nA4, $0A, nRst, $02, nA4, $06, $05
	dc.b	nRst, $01, nA4, $05, $06, $06, $06, $06, $05, nRst, $01, nA4
	dc.b	$05, $06, $06, $06, $0A, nRst, $02, nA4, $09, nRst, $02, nA4
	dc.b	$06, $06, $06, $05, nRst, $01, nA4, $05, $06, $06, $06, $06
	dc.b	$05, nRst, $01, nA4, $05, $06, nB4, $06, nC5, nD5, nE5, $05
	dc.b	nRst, $01, nF5, $20, nRst, $03, nC5, $09, nRst, $02, nB4, $10
	dc.b	nRst, $02, nC5, $0F, nRst, $02, nD5, $0A, nRst, $02, nE5, $0F
	dc.b	nRst, $02, nF5, $10, nRst, $02, nG5, $0A, nRst, $02, nC5, $14
	dc.b	nRst, $03, nB4, $0F, nRst, $02, nA4, $16, nRst, $02, nF5, $0F
	dc.b	nRst, $02, nC5, $0A, nRst, $02, nB4, $0F, nRst, $02, nA4, $10
	dc.b	nRst, $02, nG4, $0A, nRst, $02, nA4, $2B, nRst, $03, nA4, $0A
	dc.b	nRst, $02, nB4, $0A, nRst, $02, nC5, $09, nRst, $02, nE5, $0A
	dc.b	nRst, $02, nF5, $20, nRst, $03, nC5, $0A, nRst, $02, nB4, $0F
	dc.b	nRst, $02, nC5, $10, nRst, $02, nD5, $09, nRst, $02, nE5, $10
	dc.b	nRst, $02, nF5, $0F, nRst, $02, nG5, $0A, nRst, $02, nFs5, $0F
	dc.b	nRst, $02, nG5, $10, nRst, $02, nA5, $0A, nRst, $02, nC6, $32
	dc.b	nRst, $02, nA5, $06, nG5, nF5, $05, nRst, $01, nC5, $05, nA4
	dc.b	$06, nG4, nF4, nC4, $32, nRst, $28, $03, nB4, $2C, nRst, $03
	dc.b	nD5, $2C, nRst, $03, nE5, $2B, nRst, $03, nF5, $2C, nRst, $03
	dc.b	nE5, $06, nC5, $05, nRst, $01, nA4, $05, nF5, $06, nC5
	smpsJump            battle_Jump05

; PSG2 Data
battle_PSG2:
	smpsPSGvoice        $00
	dc.b	nE4, $06, nC4, nA3, nF4, $05, nRst, $01, nC4, $05, nA3, $06
	dc.b	nFs4, nC4, nA3, nF4, $05, nRst, $01, nC4, $05, nA3, $06, nE4
	dc.b	nC4, nB3, nD4, $05, nRst, $01, nE4, $05, nC4, $06, nA3, nF4
	dc.b	nC4, nA3, $05

battle_Jump04:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	dc.b	nFs4, $05, nC4, $06, nA3, nF4, nC4, nA3, $05, nRst, $01, nE4
	dc.b	$05, nC4, $06, nB3, nD4, nE4, nC4, $05, nRst, $01, nA3, $05
	dc.b	nF4, $06, nC4, nA3, nFs4, nC4, $05, nRst, $01, nA3, $05, nF4
	dc.b	$06, nC4, nA3, nE4, nC4, $05, nRst, $01, nB3, $05, nD4, $06
	dc.b	nE4, nC4, nA3, nF4, $05, nRst, $01, nC4, $05, nA3, $06, nFs4
	dc.b	nC4, nA3, nF4, $05, nRst, $01, nC4, $05, nA3, $06, nE4, nC4
	dc.b	nB3, nD4, $05, nRst, $01, nA3, $09, nRst, $02, nE4, $0A, nRst
	dc.b	$02, nD4, $06, nC4, $09, nRst, $02, nB3, $0C, nC4, $06, nD4
	dc.b	$0A, nRst, $02, nB3, $09, nRst, $02, nG3, $0A, nRst, $02, nA3
	dc.b	$32, nRst, $28, $03, nA3, $06, nF3, nE4, nF3, $05, nRst, $01
	dc.b	nD4, $05, nC4, $06, nA3, nB3, nG3, nC4, $05, nRst, $01, nD4
	dc.b	$05, nG3, $06, nB3, nE3, nG3, nE3, $05, nRst, $01, nA3, $32
	dc.b	nRst, $28, $60, nE4, $06, nA4, nB4, nC5, $05, nRst, $01, nB4
	dc.b	$05, nA4, $06, nE4, nC4, nB3, $0A, nRst, $02, nC4, $05, nA3
	dc.b	$0A, nRst, $02, nC4, $06, nB3, nC4, $05, nRst, $01, nD4, $09
	dc.b	nRst, $02, nE4, $06, nC4, $0A, nRst, $02, nE4, $05, nRst, $01
	dc.b	nD4, $05, nE4, $06, nF4, nB3, nC4, nF4, $05, nRst, $01, nA4
	dc.b	$05, nD4, $06, nAb4, nD4, nE4, nA4, $05, nRst, $01, nB4, $05
	dc.b	nC5, $06, nB4, nA4, nE4, nC4, $05, nRst, $01, nB3, $09, nRst
	dc.b	$02, nC4, $06, nA3, $0A, nRst, $02, nC4, $05, nRst, $01, nB3
	dc.b	$05, nC4, $06, nD4, $0A, nRst, $02, nE4, $06, nC4, $09, nRst
	dc.b	$02, nE4, $06, nD4, nE4, nF4, nD4, $05, nRst, $01, nG4, $05
	dc.b	nE4, $06, nA4, nF4, nB4, nAb4, $05, nRst, $01, nC4, $2B, nRst
	dc.b	$03, nD4, $2C, nRst, $03, nE4, $0F, nRst, $02, nD4, $10, nRst
	dc.b	$02, nG4, $0A, nRst, $02, nE4, $09, nRst, $02, nF4, $06, nE4
	dc.b	nD4, nE4, $05, nRst, $01, nD4, $05, nC4, $32, nRst, $03, nD4
	dc.b	$14, nRst, $03, nB3, $15, nRst, $03, nD4, $32, nRst, $28, $03
	dc.b	nC4, $2C, nRst, $03, nD4, $2B, nRst, $03, nC4, $10, nRst, $02
	dc.b	nD4, $0F, nRst, $02, nE4, $0A, nRst, $02, nD4, $0F, nRst, $02
	dc.b	nE4, $10, nRst, $02, nFs4, $0A, nRst, $02, nF4, $32, nRst, $28
	dc.b	$03, nEb4, $32, nRst, $02, nC3, $06, $06, nFs3, $06, nA3, nFs3
	dc.b	$05, nRst, $01, nA3, $05, nC4, $06, nB3, $10, nRst, $02, nD4
	dc.b	$0F, nRst, $02, nB3, $0A, nRst, $02, nD4, $0F, nRst, $02, nG4
	dc.b	$10, nRst, $02, nD4, $0A, nRst, $02, nE4, $0F, nRst, $02, nG4
	dc.b	$10, nRst, $02, nE4, $09, nRst, $08, nF4, $06, nE4, nD4, $05
	dc.b	nRst, $01, nC4, $05, nB3, $06, nA3, nAb3, nE4, nC4, $05, nRst
	dc.b	$01, nA3, $05, nF4, $06, nC4
	smpsJump            battle_Jump04

; DAC Data
battle_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $2C, nRst, $32, dKick, $0F, nRst, $02, dKick, $06, nRst, $46

battle_Jump00:
	smpsPan             panCenter, $00
	dc.b	dKick, $0F, nRst, $02, dKick, $10, nRst, $02, dKick, $0A, nRst, $02
	dc.b	dKick, $05, $06, $06, $06, $06, $05, nRst, $01, dKick, $05, $06
	dc.b	$06, $06, $06, $05, nRst, $01, dKick, $05, $06, $06, $06, $06
	dc.b	$05, nRst, $01, dKick, $05, $06, $06, $06, $06, $05, nRst, $01
	dc.b	dKick, $05, $06, $0A, nRst, $02, dKick, $06, $05, nRst, $01, dKick
	dc.b	$05, $06, $0A, nRst, $02, dKick, $0A, nRst, $02, dKick, $05, $06
	dc.b	$0A, nRst, $02, dKick, $06, $05, nRst, $01, dKick, $05, nRst, $06
	dc.b	dKick, dKick, dKick, dKick, $05, nRst, $01, dKick, $05, $06, $0A, nRst
	dc.b	$02, dKick, $06, $05, nRst, $01, dKick, $05, nRst, $06, dKick, dKick
	dc.b	dKick, $0A, nRst, $02, dKick, $05, $06, $06, $06, $0A, nRst, $02
	dc.b	dKick, $09, nRst, $02, dKick, $06, $06, $0A, nRst, $02, dKick, $0F
	dc.b	nRst, $02, dKick, $10, nRst, $02, dKick, $09, nRst, $02, dKick, $06
	dc.b	$06, $06, $05, nRst, $01, dKick, $05, $06, $06, $06, $0F, nRst
	dc.b	$02, dKick, $10, nRst, $02, dKick, $0A, nRst, $02, dKick, $05, $06
	dc.b	$06, $06, $06, $05, nRst, $01, dKick, $05, $06, $10, nRst, $02
	dc.b	dKick, $0F, nRst, $02, dKick, $0A, nRst, $02, dKick, $06, $05, nRst
	dc.b	$01, dKick, $05, $06, $06, $06, $06, $05, nRst, $01, dKick, $0F
	dc.b	nRst, $02, dKick, $10, nRst, $02, dKick, $09, nRst, $02, dKick, $06
	dc.b	$06, $06, $05, nRst, $01, dKick, $09, nRst, $02, dKick, $0A, nRst
	dc.b	$02, dKick, $0F, nRst, $02, dKick, $10, nRst, $02, dKick, $0A, nRst
	dc.b	$02, dKick, $05, $06, $06, $06, $06, $05, nRst, $01, dKick, $09
	dc.b	nRst, $02, dKick, $10, nRst, $02, dKick, $0F, nRst, $02, dKick, $0A
	dc.b	nRst, $02, dKick, $06, $05, nRst, $01, dKick, $05, $06, $06, $06
	dc.b	$06, $05, nRst, $01, dKick, $09, nRst, $02, dKick, $15, nRst, $03
	dc.b	dKick, $09, nRst, $02, dKick, $0A, nRst, $02, dKick, $06, $0F, nRst
	dc.b	$02, dKick, $0A, nRst, $02, dKick, $0A, nRst, $02, dKick, $05, $10
	dc.b	nRst, $02, dKick, $0A, nRst, $02, dKick, $09, nRst, $02, dKick, $06
	dc.b	$10, nRst, $02, dKick, $05, $06, $0A, nRst, $02, dKick, $14, nRst
	dc.b	$03, dKick, $0A, nRst, $02, dKick, $0A, nRst, $02, dKick, $05, $10
	dc.b	nRst, $02, dKick, $0A, nRst, $02, dKick, $09, nRst, $02, dKick, $06
	dc.b	$10, nRst, $02, dKick, $09, nRst, $02, dKick, $0A, nRst, $02, dKick
	dc.b	$0A, nRst, $02, dKick, $09, nRst, $02, dKick, $0A, nRst, $02, dKick
	dc.b	$0A, nRst, $02, dKick, $14, nRst, $03, dKick, $0A, nRst, $02, dKick
	dc.b	$09, nRst, $02, dKick, $06, $10, nRst, $02, dKick, $09, nRst, $02
	dc.b	dKick, $0A, nRst, $02, dKick, $06, $0F, nRst, $02, dKick, $0A, nRst
	dc.b	$02, dKick, $0A, nRst, $02, dKick, $05, $10, nRst, $02, dKick, $0A
	dc.b	nRst, $02, dKick, $09, nRst, $02, dKick, $15, nRst, $03, dKick, $09
	dc.b	nRst, $02, dKick, $0A, nRst, $02, dKick, $06, $0F, nRst, $02, dKick
	dc.b	$0A, nRst, $02, dKick, $0A, nRst, $02, dKick, $14, nRst, $03, dKick
	dc.b	$0A, nRst, $02, dKick, $09, nRst, $02, dKick, $06, $10, nRst, $02
	dc.b	dKick, $09, nRst, $02, dKick, $0A, nRst, $02, dKick, $06, $0F, nRst
	dc.b	$02, dKick, $0A, nRst, $02, dKick, $0F, nRst, $02, dKick, $10, nRst
	dc.b	$02, dKick, $0A, nRst, $02, dKick, $09, nRst, $02, dKick, $06, $10
	dc.b	nRst, $02, dKick, $09, nRst, $02, dKick, $10, nRst, $02, dKick, $0F
	dc.b	nRst, $02, dKick, $0A, nRst, $02, dKick, $58
	smpsJump            battle_Jump00

battle_Voices:
;	Voice $00
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $01
;	$32
;	$3C, $71, $03, $02, 	$1F, $1F, $1F, $1F, 	$0F, $06, $06, $08
;	$08, $02, $02, $02, 	$26, $16, $26, $47, 	$23, $20, $20, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $02, $03, $01, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $06, $0F
	smpsVcDecayRate2    $02, $02, $02, $08
	smpsVcDecayLevel    $04, $02, $01, $02
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $00, $20, $20, $23

;	Voice $02
;	$28
;	$36, $03, $00, $01, 	$DF, $DC, $DD, $DF, 	$06, $09, $02, $05
;	$06, $04, $01, $00, 	$23, $33, $13, $08, 	$19, $20, $20, $10
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $00, $03, $06
	smpsVcRateScale     $03, $03, $03, $03
	smpsVcAttackRate    $1F, $1D, $1C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $09, $06
	smpsVcDecayRate2    $00, $01, $04, $06
	smpsVcDecayLevel    $00, $01, $03, $02
	smpsVcReleaseRate   $08, $03, $03, $03
	smpsVcTotalLevel    $10, $20, $20, $19

;	Voice $03
;	$38
;	$02, $00, $00, $03, 	$1F, $1F, $1F, $1F, 	$04, $03, $02, $06
;	$02, $01, $01, $01, 	$14, $17, $16, $13, 	$12, $18, $19, $0E
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $02, $03, $04
	smpsVcDecayRate2    $01, $01, $01, $02
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $03, $06, $07, $04
	smpsVcTotalLevel    $0E, $19, $18, $12


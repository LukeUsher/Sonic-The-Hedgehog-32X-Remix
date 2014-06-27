GoingUnder_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     GoingUnder_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       GoingUnder_DAC
	smpsHeaderFM        GoingUnder_FM1,	$00, $13
	smpsHeaderFM        GoingUnder_FM2,	$00, $11
	smpsHeaderFM        GoingUnder_FM3,	$00, $13
	smpsHeaderFM        GoingUnder_FM4,	$00, $16
	smpsHeaderFM        GoingUnder_FM5,	$00, $00
	smpsHeaderFM        GoingUnder_FM6,	$00, $48
	smpsHeaderPSG       GoingUnder_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       GoingUnder_PSG2,	$00, $09, $00, $00
	smpsHeaderPSG       GoingUnder_PSG3,	$00, $0F, $00, fTone_02

; DAC Data
GoingUnder_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, nRst, $11, $86, $06, $86, $06, $9B, $0C, $86, $06
	dc.b	$86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $03, $86, $09
	dc.b	$86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $0C
	dc.b	$86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $03
	dc.b	$86, $09, $86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06
	dc.b	$9B, $0C, $86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06
	dc.b	$9B, $03, $86, $09, $86, $06, $86, $06, $9B, $0C, $86, $06
	dc.b	$86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $06, $86, $03
	dc.b	$86, $03, $86, $06, $86, $06, dKick, $03, $86, $09, $86, $06
	dc.b	$86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $06
	dc.b	$86, $03, $86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06
	dc.b	dKick, $03, $86, $06, $86, $03, $86, $06, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $03, $86, $06, $86, $03, $86, $06
	dc.b	$86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $09
	dc.b	$86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $03
	dc.b	$86, $06, $86, $03, $86, $06, $86, $06, dKick, $0C, $86, $06
	dc.b	$86, $06, dKick, $03, $86, $06, $86, $03, $86, $06, $86, $06
	dc.b	dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $06, $86, $03
	dc.b	$86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06, $9B, $0C
	dc.b	$86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $03
	dc.b	$86, $09, $86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06
	dc.b	$9B, $0C, $86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06
	dc.b	$9B, $03, $86, $09, $86, $06, $86, $06, $9B, $06, $86, $06
	dc.b	$86, $06, $86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06
	dc.b	$86, $06, $86, $0C, dKick, $06, $86, $03, dKick, $09, $86, $06
	dc.b	dKick, $0C, $86, $06, $86, $06, dKick, $09, $86, $09, $86, $06
	dc.b	dKick, $06, $86, $06, $86, $0C, dKick, $06, $86, $03, dKick, $09
	dc.b	$86, $06, dKick, $06, dKick, $03, dKick, $03, $86, $06, $86, $06
	dc.b	dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06, $86, $0C
	dc.b	dKick, $06, $86, $03, dKick, $09, $86, $06, dKick, $0C, $86, $06
	dc.b	$86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06
	dc.b	$86, $0C, dKick, $03, $86, $06, $86, $06, dKick, $03, $86, $06
	dc.b	dKick, $06, dKick, $03, dKick, $03, $86, $2A, dKick, $03, dKick, $03
	dc.b	$86, $06, $86, $06, dKick, $03, $86, $09, $86, $06, $86, $06
	dc.b	dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $06, $86, $03
	dc.b	$86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $03
	dc.b	$86, $06, $86, $03, $86, $06, $86, $06, dKick, $0C, $86, $06
	dc.b	$86, $06, dKick, $03, $86, $06, $86, $03, $86, $06, $86, $06
	dc.b	dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $09, $86, $06
	dc.b	$86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $06
	dc.b	$86, $03, $86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06
	dc.b	dKick, $03, $86, $06, $86, $03, $86, $06, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $03, $86, $06, $86, $03, $86, $06
	dc.b	$86, $06, dKick, $0C, $86, $06, $86, $06, $9B, $0C, $86, $06
	dc.b	$86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $03, $86, $09
	dc.b	$86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $0C
	dc.b	$86, $06, $86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $03
	dc.b	$86, $09, $86, $18, $86, $06, $86, $06, dKick, $09, $86, $09
	dc.b	$86, $06, dKick, $06, $86, $06, $86, $0C, dKick, $06, $86, $03
	dc.b	dKick, $09, $86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $09
	dc.b	$86, $09, $86, $06, dKick, $06, $86, $06, $86, $0C, dKick, $06
	dc.b	$86, $03, dKick, $09, $86, $06, dKick, $06, dKick, $03, dKick, $03
	dc.b	$86, $06, $86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06
	dc.b	$86, $06, $86, $0C, dKick, $06, $86, $03, dKick, $09, $86, $06
	dc.b	dKick, $0C, $86, $06, $86, $06, dKick, $09, $86, $09, $86, $06
	dc.b	dKick, $06, $86, $06, $86, $0C, dKick, $03, $86, $06, dKick, $09
	dc.b	$86, $06, dKick, $06, dKick, $06, dHiTimpani, $06, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $06, dKick, $03, dKick, $03, $86, $06
	dc.b	$86, $06, dKick, $0C, $86, $06, $86, $06, dKick, $0C, $86, $06
	dc.b	$86, $06, dKick, $06, $86, $03, dKick, $1B, $86, $06, $86, $06
	dc.b	dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06, $86, $0C
	dc.b	dKick, $06, $86, $09, dKick, $03, $86, $06, dKick, $0C, $86, $06
	dc.b	$86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06
	dc.b	$86, $09, $86, $03, dKick, $03, $86, $03, dKick, $06, $86, $03
	dc.b	dKick, $03, $86, $06, dKick, $03, $86, $09, dHiTimpani, $60, $86, $06
	dc.b	$86, $06, $9B, $0C, $86, $06, $86, $06, $9B, $0C, $86, $06
	dc.b	$86, $06, $9B, $03, $86, $09, dKick, $12, dKick, $06, $86, $06
	dc.b	$86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06
	dc.b	$86, $0C, dKick, $06, $86, $03, dKick, $09, $86, $06, dKick, $0C
	dc.b	$86, $06, $86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06
	dc.b	$86, $06, $86, $0C, dKick, $06, $86, $03, dKick, $06, dKick, $03
	dc.b	$86, $06, dKick, $06, dKick, $03, dKick, $03, $86, $06, $86, $06
	dc.b	dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06, $86, $0C
	dc.b	dKick, $06, $86, $09, dKick, $03, $86, $06, dKick, $0C, $86, $06
	dc.b	$86, $06, dKick, $09, $86, $09, $86, $06, dKick, $06, $86, $06
	dc.b	$86, $0C, dKick, $03, $86, $06, dKick, $06, dKick, $06, dKick, $03
	dc.b	dKick, $02, dKick, $0A, $86, $06, $86, $06, dKick, $09, dKick, $03
	dc.b	$86, $06, $86, $06, dKick, $06, $86, $06, $86, $0C, dKick, $06
	dc.b	$86, $03, dKick, $03, $86, $03, dKick, $03, $86, $06, dKick, $06
	dc.b	dHiTimpani, $06, $86, $06, $86, $06, dKick, $06, dKick, $03, $86, $06
	dc.b	dKick, $03, $86, $06, dKick, $06, $86, $03, dKick, $03, $86, $0C
	dc.b	dKick, $06, $86, $03, dKick, $03, dHiTimpani, $03, dKick, $03, $86, $06
	dc.b	dKick, $0C, $86, $06, $86, $06, dKick, $03, $86, $06, $86, $03
	dc.b	$86, $06
	smpsStop

; FM1 Data
GoingUnder_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $30, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03
	dc.b	nFs2, $06, nRst, $12, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06
	dc.b	nB1, $03, nFs2, $06, nRst, $12, nFs2, $06, nB1, $06, nRst, $03
	dc.b	nFs2, $06, nB1, $03, nFs2, $06, nRst, $12, nFs2, $06, nB1, $06
	dc.b	nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nRst, $12, nFs2, $06
	dc.b	nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nRst, $12
	dc.b	nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06
	dc.b	nRst, $12, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03
	dc.b	nFs2, $06, nRst, $12, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06
	dc.b	nB1, $03, nFs2, $06, nRst, $42, nFs2, $06, nB1, $06, nRst, $03
	dc.b	nFs2, $06, nB1, $03, nFs2, $06, nRst, $12, nFs2, $06, nB1, $06
	dc.b	nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nRst, $12, nFs2, $06
	dc.b	nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nFs2, $06
	dc.b	nRst, $06, nFs2, $06, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06
	dc.b	nB1, $03, nFs2, $06, nFs2, $06, nRst, $06, nFs2, $06, nFs2, $06
	dc.b	nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nRst, $12
	dc.b	nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06
	dc.b	nRst, $12, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03
	dc.b	nFs2, $06, nFs2, $06, nRst, $06, nFs2, $06, nFs2, $06, nB1, $06
	dc.b	nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nFs2, $06, nRst, $06
	dc.b	nFs2, $06, nRst, $7F, nRst, $41, nB1, $0C, nB1, $12, nG2, $06
	dc.b	nG2, $06, nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06
	dc.b	nE3, $06, nB1, $0C, nB1, $12, nG2, $06, nG2, $06, nG2, $06
	dc.b	nD3, $0C, nD3, $12, nA2, $06, nE3, $06, nE3, $06, nB1, $0C
	dc.b	nB1, $12, nG2, $06, nG2, $06, nG2, $06, nD3, $0C, nD3, $12
	dc.b	nA2, $06, nE3, $06, nE3, $06, nB1, $0C, nB1, $12, nG2, $06
	dc.b	nG2, $06, nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06
	dc.b	nE3, $06, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03
	dc.b	nFs2, $06, nRst, $12, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06
	dc.b	nB1, $03, nFs2, $06, nRst, $12, nFs2, $06, nB1, $06, nRst, $03
	dc.b	nFs2, $06, nB1, $03, nFs2, $06, nRst, $12, nFs2, $06, nB1, $06
	dc.b	nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nFs2, $06, nRst, $06
	dc.b	nFs2, $06, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03
	dc.b	nFs2, $06, nFs2, $06, nRst, $06, nFs2, $06, nFs2, $06, nB1, $06
	dc.b	nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nRst, $12, nFs2, $06
	dc.b	nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06, nRst, $12
	dc.b	nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03, nFs2, $06
	dc.b	nFs2, $06, nRst, $06, nFs2, $06, nFs2, $06, nB1, $06, nRst, $03
	dc.b	nFs2, $06, nB1, $03, nFs2, $06, nFs2, $06, nRst, $06, nFs2, $06
	dc.b	nRst, $7F, nRst, $41, nB1, $0C, nB1, $12, nG2, $06, nG2, $06
	dc.b	nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06, nE3, $06
	dc.b	nB1, $0C, nB1, $12, nG2, $06, nG2, $06, nG2, $06, nD3, $0C
	dc.b	nD3, $12, nA2, $06, nE3, $06, nE3, $06, nB1, $0C, nB1, $12
	dc.b	nG2, $06, nG2, $06, nG2, $06, nD3, $0C, nD3, $12, nA2, $06
	dc.b	nE3, $06, nE3, $06, nB1, $0C, nB1, $12, nG2, $06, nG2, $06
	dc.b	nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06, nE3, $06
	dc.b	nD3, $06, nD3, $06, nG2, $06, nD3, $06, nD3, $06, nG2, $06
	dc.b	nG2, $06, nD3, $06, nFs2, $06, nCs3, $06, nFs2, $06, nFs2, $06
	dc.b	nFs2, $06, nFs2, $06, nFs2, $06, nFs2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nA2, $0C, nD3, $06, nD3, $06, nG2, $06, nD3, $06, nD3, $06
	dc.b	nG2, $06, nG2, $06, nD3, $06, nFs2, $06, nCs3, $06, nFs2, $06
	dc.b	nFs2, $06, nFs2, $06, nRst, $12, nB1, $0C, nB1, $12, nG2, $06
	dc.b	nG2, $06, nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06
	dc.b	nE3, $06, nB1, $0C, nB1, $12, nG2, $06, nG2, $06, nG2, $06
	dc.b	nD3, $0C, nD3, $12, nA2, $06, nE3, $06, nE3, $06, nRst, $7F
	dc.b	nRst, $41, nB1, $0C, nB1, $12, nG2, $06, nG2, $06, nG2, $06
	dc.b	nD3, $0C, nD3, $12, nA2, $06, nE3, $06, nE3, $06, nB1, $0C
	dc.b	nB1, $12, nG2, $06, nG2, $06, nG2, $06, nD3, $0C, nD3, $12
	dc.b	nA2, $06, nE3, $06, nE3, $06, nB1, $0C, nB1, $12, nG2, $06
	dc.b	nG2, $06, nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06
	dc.b	nE3, $06, nB1, $0C, nB1, $12, nG2, $06, nG2, $06, nG2, $06
	dc.b	nD3, $0C, nD3, $12, nA2, $06, nE3, $06, nE3, $06, nB1, $0C
	dc.b	nB1, $12, nG2, $06, nG2, $06, nG2, $06, nD3, $0C, nD3, $12
	dc.b	nA2, $06, nE3, $06, nE3, $06, nB1, $0C, nB1, $12, nG2, $06
	dc.b	nG2, $06, nG2, $06, nD3, $0C, nD3, $12, nA2, $06, nE3, $06
	dc.b	nE3, $06, nFs2, $06, nB1, $06, nRst, $03, nFs2, $06, nB1, $03
	dc.b	nFs2, $06
	smpsStop

; FM2 Data
GoingUnder_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72
	dc.b	nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72
	dc.b	nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72
	dc.b	nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72, nRst, $72
	dc.b	nB3, $03, nE4, $03, nFs4, $03, nA4, $03, nB4, $03, nCs5, $03
	dc.b	nD5, $03, nE5, $03
	smpsAlterNote       $F0
	dc.b	nG5, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $0D
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, nFs5, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nF5, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01, nFs5, $03, nA5, $03, nB5, $03, nA5, $03, nB5, $03
	dc.b	nFs5, $03, nB5, $03, nA5, $03, nB5, $0B, smpsNoAttack, $03
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nBb5, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nA5, $02
	smpsAlterNote       $F2
	dc.b	nBb4, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nB4, $0C, smpsNoAttack, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $17
	dc.b	smpsNoAttack, nBb4, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nB4, $03
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nBb4, $04, nA4, $05, nG4, $04, nFs4, $03, nE4, $03, nB4, $03
	dc.b	nA4, $03, nFs4, $03, nA4, $03, nE4, $03, nFs4, $03, nA4, $03
	dc.b	nB4, $03, nFs4, $03, nA4, $03, nE4, $03, nFs4, $03
	smpsAlterVol        $06
	dc.b	nD4, $03
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nCs4, $01
	smpsAlterVol        $09
	smpsAlterNote       $00
	dc.b	nCs4, $03
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nD4, $01
	smpsAlterNote       $F3
	dc.b	nRst, $01
	smpsAlterNote       $00
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $55, nRst, $55, nRst, $55
	dc.b	nRst, $55, nRst, $55, nRst, $55, nRst, $02
	smpsAlterVol        $FC
	dc.b	nB1, $06, nB1, $06, nRst, $03, nB1, $06, nB1, $03, nB1, $06
	smpsStop

; FM3 Data
GoingUnder_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60
	dc.b	nRst, $60, nRst, $60, nRst, $60, nRst, $60, nRst, $60, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06
	dc.b	nA2, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nA2, $06, nA2, $06, nFs2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nA2, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nA2, $06, nA2, $06
	dc.b	nFs2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nG2, $06, nG2, $06, nA2, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nA2, $06, nA2, $06, nFs2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06
	dc.b	nA2, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nA2, $06, nA2, $06, nFs2, $06, nRst, $68, nRst, $68, nRst, $68
	dc.b	nRst, $68, nRst, $68, nRst, $68, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nA2, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nA2, $06, nA2, $06
	dc.b	nFs2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nG2, $06, nG2, $06, nA2, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nA2, $06, nA2, $06, nFs2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06
	dc.b	nA2, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nA2, $06, nA2, $06, nFs2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nA2, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nA2, $06, nA2, $06
	dc.b	nFs2, $06, nG2, $06, nG2, $06, nG2, $06, nG2, $06, nG2, $06
	dc.b	nG2, $06, nG2, $06, nB2, $06, nFs2, $06, nFs2, $06, nFs2, $06
	dc.b	nFs2, $06, nFs2, $06, nFs2, $06, nFs2, $06, nCs3, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nA2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nA2, $06, nA2, $06, nG2, $06, nG2, $06, nG2, $06
	dc.b	nG2, $06, nG2, $06, nG2, $06, nG2, $06, nB2, $06, nFs2, $06
	dc.b	nFs2, $06, nFs2, $06, nFs2, $06, nFs2, $03, nRst, $15, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06
	dc.b	nA2, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nA2, $06, nA2, $06, nFs2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nA2, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nA2, $06, nA2, $06
	dc.b	nFs2, $06, nRst, $7F, nRst, $41, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nA2, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nA2, $06, nA2, $06
	dc.b	nFs2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nG2, $06, nG2, $06, nA2, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nA2, $06, nA2, $06, nFs2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06
	dc.b	nA2, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nA2, $06, nA2, $06, nFs2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nG2, $06, nG2, $06, nA2, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nD3, $06, nD3, $06, nA2, $06, nA2, $06
	dc.b	nFs2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06, nB2, $06
	dc.b	nG2, $06, nG2, $06, nA2, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nD3, $06, nD3, $06, nA2, $06, nA2, $06, nFs2, $06, nB2, $06
	dc.b	nB2, $06, nB2, $06, nB2, $06, nB2, $06, nG2, $06, nG2, $06
	dc.b	nA2, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06, nD3, $06
	dc.b	nA2, $06, nA2, $06, nFs2, $06, nB2, $06, nB2, $06, nRst, $03
	dc.b	nB2, $06, nB2, $03, nB2, $06
	smpsStop

; FM4 Data
GoingUnder_FM4:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, nRst, $7D, nB4, $0C, nRst, $12, nC6, $0C, nRst, $06
	dc.b	nA5, $0C, nRst, $06, nD5, $0C, nA5, $0C, nFs5, $06, nB4, $0C
	dc.b	nRst, $12, nG5, $0C, nRst, $06, nFs5, $0C, nRst, $7F, nRst, $7F
	dc.b	nRst, $16, nB4, $0C, nRst, $12, nC6, $0C, nRst, $06, nA5, $0C
	dc.b	nRst, $06, nD5, $0C, nA5, $0C, nFs5, $06, nB4, $0C, nRst, $12
	dc.b	nG5, $0C, nRst, $06, nFs5, $0C, nRst, $18
	smpsAlterVol        $05
	dc.b	nG4, $06, nE5, $06, nG4, $03
	smpsAlterVol        $01
	dc.b	nFs5, $06, nG4, $03, nG5, $06, nG4, $03, nFs5, $06, nG4, $03
	dc.b	nE5, $06, nA4, $06
	smpsAlterVol        $FF
	dc.b	nA5, $06, nA4, $03, nFs5, $06, nA4, $03, nG5, $06, nA4, $03
	dc.b	nE5, $06, nA4, $03, nFs5, $06
	smpsAlterVol        $FF
	dc.b	nE4, $06
	smpsAlterVol        $01
	dc.b	nA5, $06, nE4, $03, nFs5, $06, nE4, $03, nG5, $06, nE4, $03
	dc.b	nFs5, $06, nE4, $03, nE5, $06, nE4, $06, nB5, $06, nE4, $03
	dc.b	nA5, $06, nE4, $03, nG5, $06, nE4, $03, nFs5, $09, nE5, $09
	dc.b	nRst, $4F, nRst, $4F, nRst, $4F, nRst, $4F, nRst, $4F, nRst, $4F
	dc.b	nRst, $4F, nRst, $4F, nRst, $01
	smpsAlterVol        $FB
	dc.b	nB4, $0C, nRst, $12, nC6, $0C, nRst, $06, nA5, $0C, nRst, $06
	dc.b	nD5, $0C, nA5, $0C, nFs5, $06, nB4, $0C, nRst, $12, nG5, $0C
	dc.b	nRst, $06, nFs5, $0C, nRst, $18
	smpsAlterVol        $05
	dc.b	nG4, $06, nE5, $06, nG4, $03
	smpsAlterVol        $01
	dc.b	nFs5, $06, nG4, $03, nG5, $06, nG4, $03, nFs5, $06, nG4, $03
	dc.b	nE5, $06, nA4, $06
	smpsAlterVol        $FF
	dc.b	nA5, $06, nA4, $03, nFs5, $06, nA4, $03, nG5, $06, nA4, $03
	dc.b	nE5, $06, nA4, $03, nFs5, $06
	smpsAlterVol        $FF
	dc.b	nE4, $06
	smpsAlterVol        $01
	dc.b	nA5, $06, nE4, $03, nFs5, $06, nE4, $03, nG5, $06, nE4, $03
	dc.b	nFs5, $06, nE4, $03, nE5, $06, nE4, $06, nB5, $06, nE4, $03
	dc.b	nA5, $06, nE4, $03, nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F
	dc.b	nRst, $6F, nRst, $6F, nRst, $6F, nRst, $6F, nG4, $06, nE5, $06
	dc.b	nG4, $03
	smpsAlterVol        $01
	dc.b	nFs5, $06, nG4, $03, nG5, $06, nG4, $03, nFs5, $06, nG4, $03
	dc.b	nE5, $06, nA4, $06
	smpsAlterVol        $FF
	dc.b	nA5, $06, nA4, $03, nFs5, $06, nA4, $03, nG5, $06, nA4, $03
	dc.b	nE5, $06, nA4, $03, nFs5, $06
	smpsAlterVol        $FF
	dc.b	nE4, $06
	smpsAlterVol        $01
	dc.b	nA5, $06, nE4, $03, nFs5, $06, nE4, $03, nG5, $06, nE4, $03
	dc.b	nFs5, $06, nE4, $03, nE5, $06, nE4, $06, nB5, $06, nE4, $03
	dc.b	nA5, $06, nE4, $09
	smpsStop

; FM6 Data
GoingUnder_FM6:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $33, nG3, $01
	smpsAlterVol        $FC
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, nRst, $7F, nRst, $7F, nRst, $7F, nRst, $03
	smpsAlterVol        $0A
	dc.b	nG4, $30, nA4, $30
	smpsAlterVol        $01
	dc.b	nE4, $30
	smpsAlterVol        $FF
	dc.b	nE4, $30
	smpsAlterVol        $F6
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nB4, $1E, nG4, $12
	dc.b	nD5, $1E, nA4, $12, nB4, $1E, nG4, $12, nD5, $1E, nA4, $12
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nRst, $7F, nRst, $59
	smpsAlterVol        $15
	dc.b	nC5, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01, nRst, $7F, nRst, $41
	smpsAlterVol        $09
	dc.b	nG4, $30, nA4, $30
	smpsAlterVol        $01
	dc.b	nE4, $30
	smpsAlterVol        $FF
	dc.b	nE4, $18, nRst, $18
	smpsAlterVol        $F6
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nB4, $1E, nG4, $12
	dc.b	nD5, $1E, nA4, $12, nB4, $1E, nG4, $12, nD5, $1E, nA4, $12
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nG4, $30, nFs4, $30
	dc.b	nB3, $30, nB3, $24, nA3, $0C, nG4, $30, nCs5, $18, nRst, $18
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nB4, $1E, nG4, $12
	dc.b	nD5, $1E, nA4, $12
	smpsAlterVol        $06
	dc.b	nG4, $30
	smpsAlterVol        $01
	dc.b	nA4, $30
	smpsAlterVol        $FF
	dc.b	nE4, $30
	smpsAlterVol        $FD
	dc.b	nE4, $18, nRst, $18
	smpsAlterVol        $FD
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nB4, $1E, nG4, $12
	dc.b	nD5, $1E, nA4, $12, nB4, $1E, nG4, $12, nD5, $1E, nA4, $12
	dc.b	nB4, $1E, nG4, $12, nD5, $1E, nA4, $12, nB4, $1E, nG4, $12
	dc.b	nD5, $1E, nA4, $12, nB4, $1E, nG4, $12, nD5, $1E, nA4, $12
	smpsStop

; PSG1 Data
GoingUnder_PSG1:
	dc.b	nRst, $30, nG0, $09, nFs0, $08, nRst, $01, nE0, $06, nG0, $09
	dc.b	nFs0, $08, nRst, $01, nE0, $06, nG0, $09, nFs0, $06, nE0, $03
	dc.b	nFs0, $0C, nRst, $1E, nFs0, $03, nB0, $05, nRst, $01, nB0, $06
	dc.b	nCs1, $05, nRst, $01, nCs1, $06, nA0, $06, nFs0, $0F, nRst, $24
	dc.b	nG0, $09, nFs0, $08, nRst, $01, nE0, $06, nG0, $09, nFs0, $08
	dc.b	nRst, $01, nE0, $06, nG0, $09, nFs0, $08, nRst, $01, nFs0, $0C
	dc.b	nRst, $12, nB0, $17, nRst, $01, nB0, $0C, nCs1, $0C, nE1, $0F
	dc.b	smpsNoAttack, nFs1, $03, smpsNoAttack, nE1, $03, nFs1, $1B, nRst, $30, nG1, $09
	dc.b	nFs1, $09, nE1, $06, nG1, $09, nFs1, $09, nE1, $06, nG1, $09
	dc.b	nFs1, $06, nE1, $03, nFs1, $0C, nRst, $1E, nFs1, $03, nB1, $05
	dc.b	nRst, $01, nB1, $06, nCs2, $05, nRst, $01, nCs2, $06, nA1, $06
	dc.b	nFs1, $0F, nRst, $1E, nE1, $06, nG1, $09, nFs1, $09, nE1, $06
	dc.b	nG1, $09, nFs1, $09, nE1, $06, nG1, $09, nFs1, $06, nE1, $06
	dc.b	nFs1, $0C, nRst, $03, nFs1, $06, nA1, $06, nB1, $12, nRst, $06
	dc.b	nB1, $0C, nCs2, $0B, nRst, $01, nCs2, $12, nRst, $03, nD2, $03
	dc.b	nCs2, $03, nB1, $09, nRst, $0C, nB1, $2D, nA1, $03, nG1, $06
	dc.b	smpsNoAttack, nFs1, $2A, nB1, $27, nFs1, $03, nFs1, $03, nA1, $09, nG1
	dc.b	$0B, nRst, $01, nG1, $06, nD2, $06, nCs2, $06, nB1, $06, nCs2
	dc.b	$0C, nB1, $18, nRst, $2A, nB1, $06, nCs2, $0B, nRst, $01, nCs2
	dc.b	$06, smpsNoAttack, nD2, $18, nRst, $2A, nFs1, $06, nD2, $06, nCs2, $06
	dc.b	nB1, $06, nCs2, $0C, nB1, $18, nRst, $24, nFs1, $06, nB1, $05
	dc.b	nRst, $01, nCs2, $0B, nRst, $01, nCs2, $0C, nD2, $1E, nB1, $06
	dc.b	nA1, $1E, nD2, $06, nCs2, $06, nB1, $06, nCs2, $0C, nB1, $18
	dc.b	nRst, $12, nG0, $09, nFs0, $09, nE0, $06, nG0, $09, nFs0, $09
	dc.b	nE0, $06, nG0, $09, nFs0, $09, nE0, $06, nFs0, $0C, nRst, $6C
	dc.b	nG0, $09, nFs0, $09, nE0, $06, nG0, $09, nFs0, $09, nE0, $06
	dc.b	nG0, $09, nFs0, $09, nE0, $06, nFs0, $0C, nRst, $1E, nFs1, $03
	dc.b	nFs1, $06, nFs1, $06, nB1, $06, nD2, $06, nCs2, $12, nD2, $06
	dc.b	nCs2, $06, nB1, $0F, nRst, $06, nB1, $2D, nA1, $03, nG1, $06
	dc.b	smpsNoAttack, nFs1, $2A, nB1, $27, nFs1, $03, nFs1, $03, nA1, $09, nG1
	dc.b	$0B, nRst, $01, nG1, $06, nD2, $06, nCs2, $06, nB1, $06, nCs2
	dc.b	$0C, nB1, $18, nRst, $2A, nB1, $06, nCs2, $0B, nRst, $01, nCs2
	dc.b	$06, smpsNoAttack, nD2, $18, nRst, $2A, nFs1, $06, nD2, $06, nCs2, $06
	dc.b	nB1, $06, nCs2, $0C, nB1, $18, nRst, $24, nFs1, $06, nB1, $05
	dc.b	nRst, $01, nCs2, $0B, nRst, $01, nCs2, $0C, nD2, $1E, nB1, $06
	dc.b	nA1, $18, nFs1, $06, nD2, $06, nCs2, $06, nB1, $06, nG1, $1D
	dc.b	nRst, $01, nG1, $06, nB1, $0C, nCs2, $11, nRst, $01, nCs2, $06
	dc.b	nD2, $0C, nCs2, $0B, nRst, $01, nCs2, $0C, nB1, $1E, nD2, $06
	dc.b	nCs2, $0C, nD2, $0C, nCs2, $0C, nD2, $06, nCs2, $06, nB1, $1E
	dc.b	nG1, $06, nB1, $0C, nCs2, $0C, nFs1, $05, nRst, $01, nFs1, $05
	dc.b	nRst, $01, nFs1, $05, nRst, $01, nD2, $06, nCs2, $06, nB1, $06
	dc.b	nCs2, $0C, nB1, $2A, nRst, $7F, nRst, $11, nB1, $2D, nA1, $03
	dc.b	nG1, $06, nFs1, $2A, nB1, $27, nFs1, $03, nG1, $03, nCs2, $14
	dc.b	nRst, $01, nCs2, $06, nD2, $06, nCs2, $06, nB1, $06, nCs2, $0C
	dc.b	nB1, $1E, nRst, $24, nB1, $06, nCs2, $0B, nRst, $01, nCs2, $06
	dc.b	smpsNoAttack, nD2, $18, nRst, $2A, nFs1, $06, nD2, $06, nCs2, $06, nB1
	dc.b	$06, nCs2, $0C, nB1, $18, nRst, $24, nFs1, $06, nB1, $05, nRst
	dc.b	$01, nCs2, $0B, nRst, $01, nCs2, $0C, nD2, $1E, nB1, $06, nA1
	dc.b	$18, nFs1, $06, nD2, $06, nCs2, $06, nB1, $06, nCs2, $0C, nB1
	dc.b	$18, nRst, $2A, nD2, $06, nCs2, $06, nB1, $06, nCs2, $0C, nB1
	dc.b	$12, smpsNoAttack, $18, nRst, $12, nFs1, $06, nD2, $06, nCs2, $06, nB1
	dc.b	$06, nCs2, $0C, nB1, $12
	smpsStop

; PSG2 Data
GoingUnder_PSG2:
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $33, nD2, $06, nCs2, $06
	dc.b	nB1, $06, nCs2, $0C, nB1, $12, nRst, $7F, nRst, $11
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03, nCs2, $05, nRst, $01, nCs2, $06, nA1, $06, nFs1, $0C
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $2A, nG1, $05, nRst, $01
	dc.b	nG1, $0B, nRst, $01, nG1, $0C, nFs1, $12, nRst, $18, nB1, $12
	dc.b	nRst, $06, nG1, $05, nRst, $01, nG1, $0B, nRst, $01, nG1, $0C
	dc.b	nFs1, $12, nRst, $30, nG1, $05, nRst, $01, nG1, $05, nRst, $01
	dc.b	nG1, $05, nRst, $01, nG1, $0C, nFs1, $12, nRst, $3C, nG1, $06
	dc.b	nFs1, $2A, nRst, $7F, nRst, $7F, nRst, $58
	smpsPSGAlterVol     $03
	dc.b	nG2, $0C, nFs2, $0C, nRst, $7F, nRst, $7F, nRst, $28
	smpsPSGAlterVol     $FD
	dc.b	nG1, $05, nRst, $01, nG1, $0B, nRst, $01, nG1, $0C, nFs1, $12
	dc.b	nRst, $18, nB1, $12, nRst, $06, nG1, $05, nRst, $01, nG1, $0B
	dc.b	nRst, $01, nG1, $0C, nFs1, $12, nRst, $30, nG1, $05, nRst, $01
	dc.b	nG1, $05, nRst, $01, nG1, $05, nRst, $01, nG1, $0C, nFs1, $12
	dc.b	nRst, $3C, nG1, $06, nFs1, $2A, nRst, $36, nFs1, $11, nRst, $01
	dc.b	nG1, $06, nE1, $0C, nD1, $0C, nE1, $0C, nD1, $1E, nRst, $30
	dc.b	nFs1, $06, nG1, $1E, nRst, $12, nFs1, $0C, nRst, $7F, nRst, $7F
	dc.b	nRst, $7F, nRst, $45, nG1, $05, nRst, $01, nG1, $0B, nRst, $01
	dc.b	nG1, $0C, nFs1, $12, nRst, $18, nB1, $12, nRst, $06, nG1, $05
	dc.b	nRst, $01, nG1, $0B, nRst, $01, nG1, $0C, nFs1, $12, nRst, $30
	dc.b	nG1, $05, nRst, $01, nG1, $05, nRst, $01, nG1, $05, nRst, $01
	dc.b	nG1, $0C, nFs1, $12, nRst, $3C, nG1, $06, nFs1, $2A, nRst, $24
	dc.b	nG1, $05, nRst, $01, nG1, $0B, nRst, $01, nG1, $0C, nFs1, $12
	dc.b	nRst, $30, nG1, $05, nRst, $01, nG1, $0B, nRst, $01, nG1, $0C
	dc.b	nFs1, $12
	smpsStop

; PSG3 Data
GoingUnder_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $7F, nRst, $1F, nA5, $01, nA5, $02, nA5, $01, nA5, $02
	dc.b	nA5, $01, nA5, $02, nA5, $57, nA5, $01, nA5, $02, nA5, $01
	dc.b	nA5, $02, nA5, $01, nA5, $02, nA5, $57, nA5, $01, nA5, $02
	dc.b	nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $57, nA5, $01
	dc.b	nA5, $02, nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $1F
	smpsPSGAlterVol     $F5
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $05
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FB
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $05
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FB
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $14
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $07
	dc.b	nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $01, nA5, $02
	dc.b	nA5, $57, nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $01
	dc.b	nA5, $02, nA5, $4F
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $F5
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_08
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_08
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $3C
	smpsPSGvoice        fTone_02
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $05
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FB
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $05
	dc.b	nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FB
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $0C, nA5, $14
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $07
	dc.b	nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $01, nA5, $02
	dc.b	nA5, $57, nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $01
	dc.b	nA5, $02, nA5, $4F
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $F5
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_08
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $12, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $1E
	smpsPSGvoice        fTone_08
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_08
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $74
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $0B
	dc.b	nA5, $01, nA5, $02, nA5, $01, nA5, $02, nA5, $01, nA5, $02
	dc.b	nA5, $13, nA5, $1E
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $F5
	dc.b	nA5, $12, nA5, $03
	smpsPSGvoice        fTone_08
	dc.b	nA5, $09, nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $03
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FD
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $18, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $0C, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06, nA5, $06
	dc.b	nA5, $06, nA5, $06, nA5, $03
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $04
	dc.b	nA5, $03
	smpsPSGvoice        fTone_08
	smpsPSGAlterVol     $FC
	dc.b	nA5, $06, nA5, $06, nA5, $06, nA5, $0C
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06
	smpsPSGvoice        fTone_08
	dc.b	nA5, $03
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06, nA5, $03
	smpsPSGvoice        fTone_08
	dc.b	nA5, $06
	smpsStop

; FM5 Data
GoingUnder_FM5:
	smpsStop

GoingUnder_Voices:
;	Voice $00
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$14, $13, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $00, $0A, $13, $14

;	Voice $01
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$1F, $1E, $19, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $00, $19, $1E, $1F

;	Voice $02
;	$04
;	$01, $00, $00, $00, 	$1F, $1F, $DD, $1F, 	$11, $0D, $05, $05
;	$00, $02, $02, $02, 	$65, $3A, $15, $1A, 	$27, $00, $13, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $03, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $0D, $11
	smpsVcDecayRate2    $02, $02, $02, $00
	smpsVcDecayLevel    $01, $01, $03, $06
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $13, $00, $27

;	Voice $03
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

;	Voice $04
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C


macanu_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     macanu_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       macanu_DAC
	smpsHeaderFM        macanu_FM1,	$00, $08
	smpsHeaderFM        macanu_FM2,	$00, $08
	smpsHeaderFM        macanu_FM3,	$00, $12
	smpsHeaderFM        macanu_FM4,	$00, $08
	smpsHeaderFM        macanu_FM5,	$00, $08
	smpsHeaderPSG       macanu_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       macanu_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       macanu_PSG3,	$00, $00, $00, $00

; DAC Data
macanu_DAC:
	dc.b	nRst

macanu_Loop00:
	dc.b	$6D
	smpsLoop            $00, $0C, macanu_Loop00
	dc.b	$86

macanu_Loop01:
	dc.b	$18, $06, $06
	smpsLoop            $00, $12, macanu_Loop01
	dc.b	$1E, $06, $18, $06, $06, $18, $0C, $0C, $48
	smpsStop

; FM1 Data
macanu_FM1:
	smpsSetvoice        $00

macanu_Loop07:
	dc.b	nD4, $06, nF4, nD5, nC5, nF4, nA4
	smpsLoop            $00, $05, macanu_Loop07
	dc.b	nC4, nF4, nD5, nC5, nF4, nA4, nBb3, nF4, nD5, nC5, nD5, nA4
	dc.b	nC4, nF4, nD5, nC5, nF4, nA4, $03, nA3, nC4

macanu_Loop08:
	dc.b	nD4, nF4, $06, nD5, nC5, nF4, nA4
	smpsLoop            $00, $02, macanu_Loop08
	dc.b	nC4, nD4, nE4, nF4, nG4, nA4, nBb4, nC5, nD5, nE5, nF5, nE5

macanu_Loop09:
	dc.b	nD4, nF4, nD5, nC5, nF4, nA4
	smpsLoop            $00, $02, macanu_Loop09
	dc.b	nBb3, nD4, nBb4, nG4, nBb3, nD4, nC4, nE4, nA4, nG4, nA4, nC5
	dc.b	nD4, nF4, nD5, nC5, nF4, nA4, nC4, nG4, nA4, nG4, nA4, nC5

macanu_Loop0A:
	dc.b	nF5, $03, nD5, nA4, nD5
	smpsLoop            $00, $03, macanu_Loop0A
	dc.b	nF5, $18, nRst, $0C, nBb3, $06, nD4, nBb4, nG4, nBb3, nD4, nC4
	dc.b	nE4, nC5, nA4, nC4, nE4, nD4, nE4, nF4, nG4, nA4, nC5, nE5
	dc.b	nC5, nA4, nC5, nD5, nC5, nBb3, nD4, nBb4, nG4, nBb3, nD4, nC4
	dc.b	nE4, nC5, nA4, nC4, nE4, nD4, nA4, nF4, nG4, nA4, nC5, nE5
	dc.b	nG5, nF5, nE5, nD5, nC5, nBb3, nD4, nBb4, nG4, nBb3, nD4, nC4
	dc.b	nE4, nC5, nA4, nC4, nE4, nD4, nF4, nD5, nC5, nF4, nA4, nC4
	dc.b	nF4, nD5, nC5, nD5, nA4, nBb3, nD4, nBb4, nG4, nBb3, nD4, nC4
	dc.b	nE4, nA4, nC5, nA4, nC5, nD4, nA4, nE5, nG5, nF5, nE5

macanu_Loop0B:
	dc.b	nF5, $03, nD5, nA4, nD5
	smpsLoop            $00, $03, macanu_Loop0B
	dc.b	nF5, $09, nE5, $03, nD4, $06, nF4, nD5, nC5, nF4, nA4, nC4
	dc.b	nF4, nD5, nC5, nC4, nA4, nBb3, nF4, nD5, nC5, nBb3, nA4, nC4
	dc.b	nF4, nD5, nC5, nC4

macanu_Loop0C:
	dc.b	nA4, nD4, nF4, nD5, nC5, nF4
	smpsLoop            $00, $02, macanu_Loop0C
	dc.b	nA4, nC4, nD4, nE4, nF4, nG4, nA4, nBb4, nC5, nD5, nE5, nF5
	dc.b	nE5, nD4, nF4, nD5, nC5, nF4, nA4, nC4, nF4, nD5, nC5, nC4
	dc.b	nE4, nBb3, nD4, nBb4, nG4, nBb3, nD4, nC4, nE4

macanu_Loop0D:
	dc.b	nA4, nG4, nA4, nC5, nD4, nF4, nD5, nC5, nF4, nA4, nC4, nG4
	smpsLoop            $00, $03, macanu_Loop0D
	dc.b	nA4, nG4, nA4, nC5, nF5, $03, nD5, nA4, nD5, nF5, nD5, nA4
	dc.b	nD5, nE5, nD5, nA4, nD5, nE5, nD5, nA4, nD5, nF5, nD5, nA4
	dc.b	nD5, nF5, nD5, nA4, nD5, nF5, $0C, nD5, nA4, nD5, nD4, $48
	smpsStop

; FM2 Data
macanu_FM2:
	smpsSetvoice        $04

macanu_Loop04:
	dc.b	nD3, $1E, nA2, $06
	smpsLoop            $00, $03, macanu_Loop04
	dc.b	nD3, $1E, nC3, $06
	smpsLoop            $01, $02, macanu_Loop04

macanu_Loop05:
	dc.b	nD3, $1E, nA2, $06
	smpsLoop            $00, $03, macanu_Loop05
	dc.b	nD3, $1E, nF3, $06, nD3, $1E, nA2, $06, nD3, $1E, nA2, $06
	dc.b	nBb2, $1E, nD3, $06, nC3, $1E, nA2, $06, nD3, $1E, nA2, $06
	dc.b	nD3, $1E, nC3, $06, nD3, $1E, nA2, $06, nD3, $1E, nA2, $06
	dc.b	nBb2, $1E, nG2, $06, nC3, $1E, nA2, $06, nD3, $1E, nE3, $06
	dc.b	nC3, $18, $03, nD3, nC3, nA2, nBb2, $1E, nG2, $06, nC3, $18
	dc.b	nA2, $06, nC3, nD3, $1E, nE3, $06, nC3, $18, $03, nD3, nE3
	dc.b	nA2, nBb2, $18, nA2, $06, nBb2, nC3, $18, nF3, $06, nE3, nD3
	dc.b	$1E, nA2, $06, nC3, $18, nG3, $03, nF3, nE3, nC3, nBb2, $1E
	dc.b	nG2, $06, nA2, $18, nC3, $06, nA2, nD3, $1E, nA2, $06, nD3
	dc.b	$1E, nA2, $06, $06, $06, nD3, $1E, nA2, $06, nD3, $1E, nC3
	dc.b	$06, nBb2, $18, nE3, $06, nD3, nC3, $18, nA2, $06, nC3, nD3
	dc.b	$1E, nA2, $06, nC3, $1E, nA2, $06, nBb2, $1E, nD3, $06, nC3
	dc.b	$15, nG2, $03, nA2, $06, nC3, nD3, $1E, nA2, $06, nC3, $18
	dc.b	$03, nD3, nC3, nA2, nBb2, $1E, nG2, $06, nC3, $18, nA2, $06
	dc.b	nC3, $03, nB2, nBb2, $1E, nF3, $06, nC3, $18, $03, nD3, nC3
	dc.b	nA2, nBb2, $1E, nG3, $06, nC3, $18, nF3, $03, nG3, nA3, nC3
	dc.b	nBb2, $1E, nC4, $06, nG3, $18, nF3, $06, nE3

macanu_Loop06:
	dc.b	nD3, $03, nA3, nE4, nF4, nE4, nA3
	smpsLoop            $00, $04, macanu_Loop06
	dc.b	nD3, $24, nA2, $0C, nD3, $18
	smpsStop

; FM3 Data
macanu_FM3:
	smpsSetvoice        $02
	dc.b	nD4, $7F, smpsNoAttack, $11, $7F, smpsNoAttack, $11, $48, nC4, nD4, nBb3, $24
	dc.b	nC4, nD4, nC4, nD4, $48, nC4, $24, nD4, nE4, nD4, nA3, nG3
	dc.b	nA3, nC4, nBb3, nC4, nF4, nC4, nBb3, nC4, nD4, $30
	smpsStop

; FM4 Data
macanu_FM4:
	smpsSetvoice        $03
	dc.b	nRst, $78, nRst, $78, nRst, $78, nRst, $78, nRst, $78, nRst, $78
	dc.b	nC4, $24, nD4, nE4, nF4, nA4, nC5, nA4, nG4, nA4, $18, nC5
	dc.b	$06, nD5, nC5, $18, nA4, $06, nG4, nA4, $18, nD5, $06, nC5
	dc.b	nA4, $18, nG4, $06, nA4, nBb4, $18, nE4, $06, nF4, nA4, $12
	dc.b	nG4, $06, nA4, nC5, nD5, $3C, $0C, nD4, $06, nC4, nD4, $1E
	dc.b	nA3, $06, nC4, $1E, nA3, $06, nBb3, $1E, nA3, $06, nC4, $18
	dc.b	nA3, $06, nC4, nD4, $1E, nE4, $06, nC4, $1E, nD4, $06, nBb3
	dc.b	$18, nA3, $06, nBb3, nC4, $18, nA3, $06, nC4, nD4, $1E, nE4
	dc.b	$06, nC4, $1E, nA3, $06, nBb3, $18, nC4, $06, nD4, nC4, $24
	dc.b	nBb3

macanu_Loop03:
	dc.b	nC4, $18, nA3, $06, nC4, nBb3, $24
	smpsLoop            $00, $02, macanu_Loop03
	dc.b	nC4, $18, nA3, $06, nC4
	smpsStop

; FM5 Data
macanu_FM5:
	smpsSetvoice        $01
	dc.b	nRst, $7F, nRst, $0B, nA4, $06, $12, nG4, $06, nA4, nC5, nA4
	dc.b	$0C, nE4, nF4, nG4, $12, nA4, $06, nD4, $09, $03, $0C, nC4
	dc.b	$12, nD4, $03, nE4, nF4, $0C, nG4, nA4, nC5, $12, nA4, $06
	dc.b	nE4, nF4, nG4, $3C, nRst, $06, nA4, nA4, $12, nG4, $06, nA4
	dc.b	nC5, nA4, $0C, nE4, nF4, nG4, $12, nA4, $06, nD4, $09, $03
	dc.b	$0C, nC4, $12, $06, nF4, $0C, nE4, nD4, nD4, nC4, $18, nD4
	dc.b	$3C, nRst, $06, nA4, nA4, $12, nG4, $06, nE4, nF4, nG4, $0C
	dc.b	nA4, nRst, $06, nG4, nE4, $0C, nF4, $06, nE4, nC4, nD4, nA4
	dc.b	$24, nRst, $06, nG4, nA4, nE5, nA4, $0C, nG4, $18, nF4, $06
	dc.b	nE4, nE4, nF4, nG4, nA4, nE4, $0C, nC4, nD4, $06, nE4, nF4
	dc.b	nG4, nA4, $18, nG4, $06, nF4, nE4, $18, nF4, $06, nG4, nF4
	dc.b	nE4, nF4, nG4, nA4, nD5, nC5, $24, nA4, $12, nG4, $06, nE4
	dc.b	nF4, nG4, $12, nF4, $06, nE4, nC4, nD4, $48, nRst, $06, nA4
	dc.b	nA4, $12, nG4, $06, nA4, nC5, nA4, $0C, nE4, nF4, nG4, $12
	dc.b	nA4, $06, nD4, $18, nC4, $0C, nRst, $06, nD4, $03, nE4, nF4
	dc.b	$18, nG4, $06, nA4, nC5, $12, nA4, $06, nE4, nF4, nG4, $3C
	dc.b	nRst, $06, nA4, nA4, $12, nG4, $06, nA4, nC5, nA4, $0C, nG4
	dc.b	$06, nF4, nE4, nF4, nG4, $12, nA4, $06, nD4, $09, $03, $0C
	dc.b	nC4, $12, $06

macanu_Loop02:
	dc.b	nE4, $03, nF4, $09, nE4, $0C, nD4, nD4, nC4, $18
	smpsLoop            $00, $03, macanu_Loop02
	dc.b	nD4, $3C
	smpsStop

; PSG1 Data
macanu_PSG1:
	dc.b	nRst

macanu_Loop0F:
	dc.b	$5D
	smpsLoop            $00, $0E, macanu_Loop0F
	dc.b	nA1, $06, $12, nG1, $06, nA1, nC2, nA1, $0C, nE1, nF1, nG1
	dc.b	$12, nA1, $06, nD1, $18, nC1, $12, nD1, $03, nE1, nF1, $18
	dc.b	nG1, $06, nA1, nC2, $12, nA1, $06, nE1, nF1, nG1, $3C, nRst
	dc.b	$06, nG1, $03, nA1, nA1, $12, nG1, $06, nA1, nC2, nA1, $0C
	dc.b	nG1, $06, nF1, nE1, nF1, nG1, $12, nA1, $06, nD1, $09, $03
	dc.b	$0C, nC1, nC1, nF1

macanu_Loop10:
	dc.b	nE1, nD1, nD1, nC1, $18, nF1, $0C
	smpsLoop            $00, $02, macanu_Loop10
	dc.b	nE1, nD1, nD1, nC1, $18, nD1, $3C
	smpsStop

; PSG2 Data
macanu_PSG2:
	dc.b	nRst, $77, nRst, $77, nRst, $77, nRst, $77, nRst, $77, nRst, $77
	dc.b	nA2, $06, $12, nG2, $06, nE2, nF2, nG2, $0C, nA2, nRst, $06
	dc.b	nG2, nE2, $0C, nF2, $06, nE2, nC2, nD2, nA2, $24, nRst, $06
	dc.b	nG2, nA2, nE3, nA2, $0C, nG2, $18, nF2, $06, nE2, nE2, nF2
	dc.b	nG2, nA2, nE2, $0C, nC2, nD2, $06, nE2, nF2, nG2, nA2, $24
	dc.b	nE2, nF2, $06, nE2, nF2, nG2, nA2, nD3, nC3, $03, nD3, nC3
	dc.b	$12, $06, nBb2, nA2, $12, nG2, $06, nE2, nF2, nG2, $12, nF2
	dc.b	$06, nE2, nC2, nC2, $03, nD2, $45
	smpsStop

; PSG3 Data
macanu_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $7F, nRst, $11, nD1, $24, nC1, nBb0, nC1, nD1, nC1, nBb0
	dc.b	nC1, nD1, nC1, nBb0, nG0, nF0, $18, nG0, $06, nA0, nC1, $18
	dc.b	nA0, $06, nC1, nD1, $48, nC1, $24, nG0, nD1, nA0, nBb0, $18
	dc.b	nC1, $06, nD1, nC1, $18, nF1, $06, nE1, nF1, $18, nG1, $06
	dc.b	nA1, nG1, $0C, nA1, nC2, nD2, $24, $21, nC2, $03, nA1, $18
	dc.b	nBb1, $06, nA1, nG1, $12, nA1, $06, nG1, nE1, nF1, $18, nE1
	dc.b	$06, nD1, nE1, $1E, nC1, $06, nD1, $48, nRst, $0C
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nD1, $24
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nBb0
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nF1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nBb0
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nF1, $18, nE1, $06, nD1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1, $18, nBb0, $06, nA0
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nBb0, $24
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nBb0

macanu_Loop0E:
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1, $1E, $06
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nBb0, $24
	smpsLoop            $00, $02, macanu_Loop0E
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nC1, $1E, $06
	smpsPSGvoice        fTone_04
	smpsPSGvoice        $00
	dc.b	nD1, $24
	smpsPSGvoice        fTone_04
	dc.b	nA5, $18, nRst, $0C, nA5, $18
	smpsPSGvoice        $00
	dc.b	nCs2, $48
	smpsStop

macanu_Voices:
;	Voice $00
;	$10
;	$35, $76, $70, $30, 	$DF, $DF, $5F, $5F, 	$06, $08, $09, $09
;	$06, $03, $03, $01, 	$26, $16, $06, $26, 	$21, $34, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $00, $00, $06, $05
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $08, $06
	smpsVcDecayRate2    $01, $03, $03, $06
	smpsVcDecayLevel    $02, $00, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $19, $34, $21

;	Voice $01
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

;	Voice $02
;	$04
;	$13, $01, $11, $01, 	$1F, $12, $1F, $1F, 	$05, $00, $05, $00
;	$00, $01, $00, $01, 	$39, $35, $36, $35, 	$16, $00, $17, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $01
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $05, $00, $05
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $03, $03, $03
	smpsVcReleaseRate   $05, $06, $05, $09
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $03
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

;	Voice $04
;	$2A
;	$50, $03, $11, $00, 	$90, $CE, $CD, $9B, 	$05, $0A, $09, $08
;	$00, $00, $12, $0C, 	$09, $FF, $50, $4A, 	$18, $27, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $05
	smpsVcCoarseFreq    $00, $01, $03, $00
	smpsVcRateScale     $02, $03, $03, $02
	smpsVcAttackRate    $1B, $0D, $0E, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $0A, $05
	smpsVcDecayRate2    $0C, $12, $00, $00
	smpsVcDecayLevel    $04, $05, $0F, $00
	smpsVcReleaseRate   $0A, $00, $0F, $09
	smpsVcTotalLevel    $00, $25, $27, $18


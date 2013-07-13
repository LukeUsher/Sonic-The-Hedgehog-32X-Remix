sml2map2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     sml2map2_Voices
	smpsHeaderChan      $05, $02
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       sml2map2_DAC
	smpsHeaderFM        sml2map2_FM1,	$00, $10
	smpsHeaderFM        sml2map2_FM2,	$00, $10
	smpsHeaderFM        sml2map2_FM3,	$00, $10
	smpsHeaderFM        sml2map2_FM4,	$00, $10
	smpsHeaderPSG       sml2map2_PSG1,	$DC, $02, $00, $00
	smpsHeaderPSG       sml2map2_PSG2,	$DC, $02, $00, $00

; FM1 Data
sml2map2_FM1:
	smpsCall            sml2map2_Call08
	smpsCall            sml2map2_Call09
	smpsCall            sml2map2_Call09
	smpsCall            sml2map2_Call09
	smpsJump            sml2map2_FM1

; FM2 Data
sml2map2_FM2:
	smpsCall            sml2map2_Call06
	smpsCall            sml2map2_Call07
	smpsCall            sml2map2_Call07
	smpsCall            sml2map2_Call07
	smpsJump            sml2map2_FM2

; FM3 Data
sml2map2_FM3:
	smpsCall            sml2map2_Call04
	smpsCall            sml2map2_Call05
	smpsCall            sml2map2_Call05
	smpsCall            sml2map2_Call05
	smpsJump            sml2map2_FM3

; FM4 Data
sml2map2_FM4:
	smpsCall            sml2map2_Call02
	smpsCall            sml2map2_Call03
	smpsCall            sml2map2_Call03
	smpsCall            sml2map2_Call03
	smpsJump            sml2map2_FM4

; PSG1 Data
sml2map2_PSG1:
	smpsCall            sml2map2_Call0B
	smpsCall            sml2map2_Call0C
	smpsCall            sml2map2_Call0C
	smpsCall            sml2map2_Call0C
	smpsJump            sml2map2_PSG1

; PSG2 Data
sml2map2_PSG2:
	smpsPSGform         $E7
	smpsCall            sml2map2_Call0A
	smpsCall            sml2map2_Call0A
	smpsCall            sml2map2_Call0A
	smpsCall            sml2map2_Call0A
	smpsJump            sml2map2_PSG2

; DAC Data
sml2map2_DAC:
	smpsCall            sml2map2_Call00
	smpsCall            sml2map2_Call00
	smpsCall            sml2map2_Call00
	smpsCall            sml2map2_Call01
	smpsJump            sml2map2_DAC

sml2map2_Call08:
	smpsSetvoice        $01
	dc.b	nG2, $08, nFs2, nG2, nC3, nRst, nC3, nRst, nC3, nG3, nFs3, nG3
	dc.b	nC3, nRst, nC3, nRst, nC3
	smpsReturn

sml2map2_Call09:
	dc.b	nA2, $08, nAb2, nA2, nD3, nRst, nD3, nRst, nD3, nA3, nAb3, nA3
	dc.b	nD3, nRst, nD3, nRst, nD3
	smpsReturn

sml2map2_Call06:
	smpsSetvoice        $00
	dc.b	nF4, $0E, nRst, $02, nBb4, $08, nE4, nRst, nA4, nRst, nD4, nRst
	dc.b	nG4, nRst, nEb4, nE4, nRst, nA4, nRst
	smpsReturn

sml2map2_Call07:
	dc.b	nG4, $0E, nRst, $02, nC5, $08, nFs4, nRst, nB4, nRst, nE4, nRst
	dc.b	nA4, nRst, nF4, nFs4, nRst, nB4, nRst
	smpsReturn

sml2map2_Call04:
	dc.b	nRst, $10
	smpsSetvoice        $00
	dc.b	nD5, $08, nRst, $10, nC5, $08, nRst, $18, nBb4, $08, nRst, $20
	dc.b	nC5, $08, nRst
	smpsReturn

sml2map2_Call05:
	dc.b	nRst, $10, nE5, $08, nRst, $10, nD5, $08, nRst, $18, nC5, $08
	dc.b	nRst, $20, nD5, $08, nRst
	smpsReturn

sml2map2_Call02:
	smpsSetvoice        $03
	dc.b	nF5, $1C, nRst, $04, nE5, $1C, nRst, $04, nD5, $1C, nRst, $04
	dc.b	nE5, $1C, nRst, $04
	smpsReturn

sml2map2_Call03:
	dc.b	nG5, $1C, nRst, $04, nFs5, $1C, nRst, $04, nE5, $1C, nRst, $04
	dc.b	nFs5, $1C, nRst, $04
	smpsReturn

sml2map2_Call0B:
	smpsPSGvoice        $00
	dc.b	nD4, $08, nF4, $04, nBb4, nD5, nF5, nE5, $08, nC5, nG4, nE4
	dc.b	nC4, $04, nC4, nD4, $08, nF4, $04, nBb4, nD5, nF5, nE5, $28
	smpsReturn

sml2map2_Call0C:
	dc.b	nE4, $08, nG4, $04, nC5, nE5, nG5, nFs5, $08, nD5, nA4, nFs4
	dc.b	nD4, $04, nD4, nE4, $08, nG4, $04, nC5, nE5, nG5, nFs5, $28
	smpsReturn

sml2map2_Call0A:
	smpsPSGvoice        fTone_02
	dc.b	nCs0, $04, nRst, nCs0, nCs0, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nCs0, nCs0, nRst, nCs0
	dc.b	nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst, nCs0, nRst
	smpsReturn

sml2map2_Call00:
	dc.b	dKick, $18, $08, $20, $18, $08, $10, dKick
	smpsReturn

sml2map2_Call01:
	dc.b	dKick, $18, $08, $18, $08, $18, $08, $10, dKick
	smpsReturn

; Voices were not within the file: they are the first 4 voices located at 406 bytes from the start of the song.
; The following label is a dummy label and should be moved to the correct location.
sml2map2_Voices:
; Voices were not within the file: they are the first 4 voices located at 406 bytes from the start of the song.
; The following label is a dummy label and should be moved to the correct location.
sml2map2_Voices:

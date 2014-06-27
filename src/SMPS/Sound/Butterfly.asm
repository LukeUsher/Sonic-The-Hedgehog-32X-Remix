Butterfly_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Butterfly_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $20

	smpsHeaderDAC       Butterfly_DAC
	smpsHeaderFM        Butterfly_FM1,	$00, $08
	smpsHeaderFM        Butterfly_FM2,	$00, $0C
	smpsHeaderFM        Butterfly_FM3,	$00, $0F
	smpsHeaderFM        Butterfly_FM4,	$00, $0F
	smpsHeaderFM        Butterfly_FM5,	$00, $20
	smpsHeaderPSG       Butterfly_PSG1,	$00, $07, $00, $00
	smpsHeaderPSG       Butterfly_PSG2,	$00, $01, $00, $00
	smpsHeaderPSG       Butterfly_PSG3,	$00, $09, $00, $00

; DAC Data
Butterfly_DAC:
	smpsPan             panCenter, $00
	dc.b	$8F, $7F, nRst, $11, dKick

Butterfly_Loop00:
	dc.b	$06
	smpsLoop            $00, $08, Butterfly_Loop00

Butterfly_Loop01:
	dc.b	$86

Butterfly_Loop05:
	dc.b	$8F
	smpsLoop            $00, $0E, Butterfly_Loop01
	dc.b	dKick, $03, $03, $8F, dKick, dKick, dKick, $8F

Butterfly_Loop02:
	dc.b	$8F, $86, $06
	smpsLoop            $00, $10, Butterfly_Loop02
	dc.b	$8F, $03, $03

Butterfly_Loop03:
	dc.b	$86, $06, $8F
	smpsLoop            $00, $0E, Butterfly_Loop03
	dc.b	$86, $0C, dHiTimpani

Butterfly_Loop04:
	dc.b	$86, $06, $8F
	smpsLoop            $00, $0F, Butterfly_Loop04
	dc.b	$86, $8F, $03, $03
	smpsLoop            $01, $02, Butterfly_Loop04
	dc.b	$86, $06
	smpsLoop            $02, $02, Butterfly_Loop05

Butterfly_Loop06:
	dc.b	$8F, $86
	smpsLoop            $00, $0F, Butterfly_Loop06
	dc.b	$8F, $03, $03

Butterfly_Loop07:
	dc.b	$86, $06, $8F
	smpsLoop            $00, $0C, Butterfly_Loop07
	dc.b	$8F, $8F, $8F, $8F, $8F, $2D
	smpsStop

; FM1 Data
Butterfly_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $06, nAb4, nAb4, nA4, nAb4, nFs4, nE4, $0A, nRst, $08, nAb4
	dc.b	$06, $06, nA4, nB4, nAb4, nE4, $0A, nRst, $08, nFs4, $06, $06
	dc.b	nAb4, nFs4, nEb4, nB3, $0A, nRst, $02, nFs4, $04, nRst, $02, nAb4
	dc.b	$04, nRst, $02, nFs4, $04, nRst, $02, nE4, $04, nRst, $02

Butterfly_Loop2D:
	dc.b	nCs4, $0A, nRst, $7F, nRst, $43, nAb3, $04, nRst, $02, nAb3, $04
	dc.b	nRst, $02, nCs4, $09, $03, $06, nEb4, nE4, $0A, nRst, $0E, nE4
	dc.b	$09, $03, $06, nFs4, nAb4, $0A, nRst, $0E, nFs4, $0A, nRst, $02
	dc.b	nFs4, $06, nEb4, nB3, $0A, nRst, $02, nEb4, $0A, nRst, $02, nE4
	dc.b	$06, nFs4, nE4, nEb4, nCs4, $0A, nRst, $08, nAb3, $06, nCs4, $09
	dc.b	$03, $06, nEb4, nE4, $0A, nRst, $0E, nE4, $09, $03, $06, nFs4
	dc.b	nAb4, $0A, nRst, $0E, nFs4, $0A, nRst, $02, nFs4, $06, nEb4, nB3
	dc.b	$0A, nRst, $02, nEb4, $0A, nRst, $02, nE4, $06, nFs4, nE4, nEb4
	dc.b	nCs4, $0A, nRst, $02, nAb3, $0A, nRst, $02, nAb4, $0A, nRst, $02
	dc.b	nAb4, $06, nB4, nCs5, $0A, nRst, $02, nAb4, $06, nB4, nCs5, nE5
	dc.b	nCs5, nB4, nAb4, $0A, nRst, $0E, nFs4, $0A, nRst, $02, nFs4, $06
	dc.b	nAb4, nB4, $0A, nRst, $02, nAb4, $06, nE4, nFs4, nAb4, nFs4, nE4
	dc.b	nCs4, $0A, nRst, $0E, nAb4, $0A, nRst, $02, nAb4, $06, nB4, nCs5
	dc.b	$0A, nRst, $02, nAb4, $06, nB4, nCs5, nE5, nCs5, nB4, nAb4, $0A
	dc.b	nRst, $0E, nFs4, $0A, nRst, $02, nFs4, $06, nAb4, nB4, $0A, nRst
	dc.b	$02, nAb4, $06, nE4, nFs4, nAb4, nFs4, nE4
	smpsLoop            $00, $02, Butterfly_Loop2D

Butterfly_Loop2E:
	dc.b	nCs4, $0A, nRst, $14, nAb4, $06, $06, nA4, nAb4, nFs4, nE4, $0A
	dc.b	nRst, $08, nAb4, $06, $06, nA4, nB4, nAb4, nE4, $0A, nRst, $08
	dc.b	nFs4, $06, $06, nAb4, nFs4, nEb4, nB3, $0A, nRst, $02, nFs4, $04
	dc.b	nRst, $02, nAb4, $04, nRst, $02, nFs4, $04, nRst, $02, nE4, $04
	dc.b	nRst, $02
	smpsLoop            $00, $02, Butterfly_Loop2E
	dc.b	nCs4, $0A
	smpsStop

; FM2 Data
Butterfly_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nCs2, $30, nE2, nB1, nCs2, $06, nRst, $2A
	smpsAlterVol        $08

Butterfly_Loop2C:
	dc.b	nCs2, $30, nE2, nB1, nCs2, $2D, nRst, $7F, nRst, $7F, nRst, $7F
	dc.b	nRst, $06

Butterfly_Loop2B:
	dc.b	nCs2, $30, nE2, nB1, nCs2, $2D, nRst, $03
	smpsLoop            $00, $02, Butterfly_Loop2B
	smpsLoop            $01, $02, Butterfly_Loop2C
	dc.b	nCs2, $30, nE2, nB1, nCs2, $2D, nRst, $03, nCs2, $30, nE2, nB1
	smpsStop

; FM3 Data
Butterfly_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02

Butterfly_Loop17:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop17

Butterfly_Loop18:
	dc.b	nE4, $02, nRst, $01, nFs4, $02, nRst, $01, nAb4, $02, nRst, $01
	dc.b	nB4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop18

Butterfly_Loop19:
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $01
	smpsLoop            $00, $03, Butterfly_Loop19
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $31

Butterfly_Loop1A:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop1A

Butterfly_Loop1B:
	dc.b	nE4, $02, nRst, $01, nFs4, $02, nRst, $01, nAb4, $02, nRst, $01
	dc.b	nB4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop1B

Butterfly_Loop1C:
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop1C

Butterfly_Loop1D:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $05, Butterfly_Loop1D

Butterfly_Loop21:
	dc.b	nCs4, $03, nRst, $09, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nE4, $02, nRst, $01, nAb4, $02, nRst, $01, nCs4, $03, nRst, $09

Butterfly_Loop1E:
	dc.b	nE4, $02, nRst, $01, nFs4, $02, nRst, $01, nAb4, $02, nRst, $01
	dc.b	nB4, $02, nRst, $01
	smpsLoop            $00, $03, Butterfly_Loop1E
	dc.b	nE4, $03, nRst, $09

Butterfly_Loop1F:
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop1F

Butterfly_Loop20:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $03, Butterfly_Loop20
	dc.b	nCs4, $03, nRst, $09, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nE4, $02, nRst, $01, nAb4, $02, nRst, $01
	smpsLoop            $01, $02, Butterfly_Loop21

Butterfly_Loop22:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $03, Butterfly_Loop22

Butterfly_Loop23:
	dc.b	nE4, $02, nRst, $01, nFs4, $02, nRst, $01, nAb4, $02, nRst, $01
	dc.b	nB4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop23

Butterfly_Loop24:
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop24

Butterfly_Loop25:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $08, Butterfly_Loop25
	smpsLoop            $01, $02, Butterfly_Loop23
	smpsLoop            $02, $02, Butterfly_Loop1B

Butterfly_Loop26:
	dc.b	nE4, $02, nRst, $01, nFs4, $02, nRst, $01, nAb4, $02, nRst, $01
	dc.b	nB4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop26

Butterfly_Loop27:
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop27

Butterfly_Loop28:
	dc.b	nCs4, $02, nRst, $01, nEb4, $02, nRst, $01, nE4, $02, nRst, $01
	dc.b	nAb4, $02, nRst, $01
	smpsLoop            $00, $08, Butterfly_Loop28

Butterfly_Loop29:
	dc.b	nE4, $02, nRst, $01, nFs4, $02, nRst, $01, nAb4, $02, nRst, $01
	dc.b	nB4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop29

Butterfly_Loop2A:
	dc.b	nB3, $02, nRst, $01, nCs4, $02, nRst, $01, nEb4, $02, nRst, $01
	dc.b	nFs4, $02, nRst, $01
	smpsLoop            $00, $04, Butterfly_Loop2A
	dc.b	nFs4, $04, nRst, $02, nAb4, $04, nRst, $02, nFs4, $04, nRst, $02
	dc.b	nE4, $04, nRst, $02, nCs4, $0A
	smpsStop

; FM4 Data
Butterfly_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nAb4, $2D, nRst, $03, nB4, $2D, nRst, $03, nFs4, $2D, nRst, $33

Butterfly_Loop16:
	dc.b	nAb4, $2D, nRst, $03, nB4, $2D, nRst, $03, nFs4, $2D, nRst, $03
	dc.b	nAb4, $2D, nRst, $7F, nRst, $7F, nRst, $79, nB4, $0A, nRst, $02

Butterfly_Loop15:
	dc.b	nAb4, $2D, nRst, $03, nB4, $2D, nRst, $03, nFs4, $2D, nRst, $03
	dc.b	nAb4, $2D, nRst, $03
	smpsLoop            $00, $02, Butterfly_Loop15
	smpsLoop            $01, $02, Butterfly_Loop16
	dc.b	nAb4, $2D, nRst, $03, nB4, $2D, nRst, $03, nFs4, $2D, nRst, $03
	dc.b	nAb4, $2D, nRst, $03, nAb4, $2D, nRst, $03, nB4, $2D, nRst, $03
	dc.b	nFs4, $2D
	smpsStop

; FM5 Data
Butterfly_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	dc.b	nRst, $7F, nRst, $11, nCs3, $06, nAb2, nCs3, nCs3, nCs3, nAb2, nCs3
	dc.b	nCs3
	smpsAlterVol        $EF
	dc.b	nCs4, nCs3, nCs4, nCs3, $03, $03, nCs4, $06, nCs3, nCs4, nCs3, $03

Butterfly_Loop08:
	dc.b	$03

Butterfly_Loop0F:
	dc.b	nE4, $06, nE3, nE4, nE3, $03
	smpsLoop            $00, $02, Butterfly_Loop08

Butterfly_Loop09:
	dc.b	$03, nB3, $06, nB2, nB3, nB2, $03
	smpsLoop            $00, $02, Butterfly_Loop09

Butterfly_Loop0A:
	dc.b	$03, nCs4, $06, nCs3, nCs4, nCs3, $03
	smpsLoop            $00, $04, Butterfly_Loop0A
	smpsLoop            $01, $02, Butterfly_Loop08

Butterfly_Loop0B:
	dc.b	$03

Butterfly_Loop0E:
	dc.b	nE4, $06, nE3, nE4, nE3, $03
	smpsLoop            $00, $02, Butterfly_Loop0B

Butterfly_Loop0C:
	dc.b	$03, nB3, $06, nB2, nB3, nB2, $03
	smpsLoop            $00, $02, Butterfly_Loop0C
	dc.b	$03, nCs4, $06, nCs3, nCs4, nCs3, $03, $03, nCs4, $06, nCs3, nCs4
	dc.b	$0A, nRst, $02

Butterfly_Loop0D:
	dc.b	nCs4, $06, nCs3, nCs4, nCs3, $03, $03
	smpsLoop            $00, $02, Butterfly_Loop0D
	smpsLoop            $01, $03, Butterfly_Loop0E
	smpsLoop            $02, $02, Butterfly_Loop0F

Butterfly_Loop10:
	dc.b	nE4, $06, nE3, nE4, nE3, $03, $03
	smpsLoop            $00, $02, Butterfly_Loop10

Butterfly_Loop11:
	dc.b	nB3, $06, nB2, nB3, nB2, $03, $03
	smpsLoop            $00, $02, Butterfly_Loop11
	dc.b	nCs4, $06, nCs3, nCs4, nCs3, $03, $03, nCs4, $06, nCs3, nCs4, $0A
	dc.b	nRst, $02

Butterfly_Loop12:
	dc.b	nCs4, $06, nCs3, nCs4, nCs3, $03, $03
	smpsLoop            $00, $02, Butterfly_Loop12

Butterfly_Loop13:
	dc.b	nE4, $06, nE3, nE4, nE3, $03, $03
	smpsLoop            $00, $02, Butterfly_Loop13

Butterfly_Loop14:
	dc.b	nB3, $06, nB2, nB3, nB2, $03, $03
	smpsLoop            $00, $02, Butterfly_Loop14
	dc.b	nFs3, $04, nRst, $02, nAb3, $04, nRst, $02, nFs3, $04, nRst, $02
	dc.b	nE3, $04, nRst, $02, nCs3, $0A
	smpsStop

; PSG1 Data
Butterfly_PSG1:
	dc.b	nRst, $7F, nRst, $41, nAb1, $02, nRst, $01, nAb1, $02, nRst, $01
	dc.b	nAb1, $04, nRst, $02, nAb1, $04, nRst, $02, nAb1

Butterfly_Loop77:
	dc.b	nRst, $01, nAb1, $02
	smpsLoop            $00, $03, Butterfly_Loop77
	dc.b	nRst, $01, nAb1, $04, nRst, $02, nAb1, $04, nRst, $02, nAb1, nRst
	dc.b	$01, nAb1, $02

Butterfly_Loop78:
	dc.b	nRst, $01, nB1, $02, nRst, $01, nB1, $02, nRst, $01, nB1, $04
	dc.b	nRst, $02, nB1, $04, nRst, $02, nB1, nRst, $01, nB1, $02
	smpsLoop            $00, $02, Butterfly_Loop78

Butterfly_Loop79:
	dc.b	nRst, $01, nFs1, $02, nRst, $01, nFs1, $02, nRst, $01, nFs1, $04
	dc.b	nRst, $02, nFs1, $04, nRst, $02, nFs1, nRst, $01, nFs1, $02
	smpsLoop            $00, $02, Butterfly_Loop79

Butterfly_Loop7A:
	dc.b	nRst, $01, nAb1, $02, nRst, $01, nAb1, $02, nRst, $01, nAb1, $04
	dc.b	nRst, $02, nAb1, $04, nRst, $02, nAb1, nRst, $01, nAb1, $02
	smpsLoop            $00, $02, Butterfly_Loop7A
	dc.b	nRst, $7F, nRst, $7F, nRst, $7F, nRst, $04, nAb1, $02, nRst, $01
	dc.b	nAb1, $02, nRst, $01, nAb1, $04, nRst, $02, nAb1, $04, nRst, $02
	dc.b	nAb1

Butterfly_Loop7B:
	dc.b	nRst, $01, nAb1, $02
	smpsLoop            $00, $03, Butterfly_Loop7B
	dc.b	nRst, $01, nAb1, $04, nRst, $02, nAb1, $04, nRst, $02, nAb1, nRst
	dc.b	$01, nAb1, $02

Butterfly_Loop7C:
	dc.b	nRst, $01, nB1, $02, nRst, $01, nB1, $02, nRst, $01, nB1, $04
	dc.b	nRst, $02, nB1, $04, nRst, $02, nB1, nRst, $01, nB1, $02
	smpsLoop            $00, $02, Butterfly_Loop7C

Butterfly_Loop7D:
	dc.b	nRst, $01, nFs1, $02, nRst, $01, nFs1, $02, nRst, $01, nFs1, $04
	dc.b	nRst, $02, nFs1, $04, nRst, $02, nFs1, nRst, $01, nFs1, $02
	smpsLoop            $00, $02, Butterfly_Loop7D

Butterfly_Loop7E:
	dc.b	nRst, $01, nAb1, $02, nRst, $01, nAb1, $02, nRst, $01, nAb1, $04
	dc.b	nRst, $02, nAb1, $04, nRst, $02, nAb1, nRst, $01, nAb1, $02
	smpsLoop            $00, $04, Butterfly_Loop7E
	smpsLoop            $01, $02, Butterfly_Loop7C
	smpsLoop            $02, $02, Butterfly_Loop78

Butterfly_Loop7F:
	dc.b	nRst, $01, nB1, $02, nRst, $01, nB1, $02, nRst, $01, nB1, $04
	dc.b	nRst, $02, nB1, $04, nRst, $02, nB1, nRst, $01, nB1, $02
	smpsLoop            $00, $02, Butterfly_Loop7F

Butterfly_Loop80:
	dc.b	nRst, $01, nFs1, $02, nRst, $01, nFs1, $02, nRst, $01, nFs1, $04
	dc.b	nRst, $02, nFs1, $04, nRst, $02, nFs1, nRst, $01, nFs1, $02
	smpsLoop            $00, $02, Butterfly_Loop80

Butterfly_Loop81:
	dc.b	nRst, $01, nAb1, $02, nRst, $01, nAb1, $02, nRst, $01, nAb1, $04
	dc.b	nRst, $02, nAb1, $04, nRst, $02, nAb1, nRst, $01, nAb1, $02
	smpsLoop            $00, $04, Butterfly_Loop81

Butterfly_Loop82:
	dc.b	nRst, $01, nB1, $02, nRst, $01, nB1, $02, nRst, $01, nB1, $04
	dc.b	nRst, $02, nB1, $04, nRst, $02, nB1, nRst, $01, nB1, $02
	smpsLoop            $00, $02, Butterfly_Loop82

Butterfly_Loop83:
	dc.b	nRst, $01, nFs1, $02, nRst, $01, nFs1, $02, nRst, $01, nFs1, $04
	dc.b	nRst, $02, nFs1, $04, nRst, $02, nFs1, nRst, $01, nFs1, $02
	smpsLoop            $00, $02, Butterfly_Loop83
	dc.b	nRst, $01, nFs1, $04, nRst, $02, nAb1, $04, nRst, $02, nFs1, $04
	dc.b	nRst, $02, nE1, $04, nRst, $02, nCs1, $0A
	smpsStop

; PSG2 Data
Butterfly_PSG2:
	dc.b	nRst, $7F, nRst, $41, nAb3, $04, nRst, $02, nCs3, $04, nRst, $02

Butterfly_Loop6E:
	dc.b	nAb3, $04, nRst, $02, nCs3, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop6E
	dc.b	nAb3, $04, nRst, $02, nCs3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nB2, $04, nRst, $02

Butterfly_Loop6F:
	dc.b	nAb3, $04, nRst, $02, nB2, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop6F
	dc.b	nAb3, $04, nRst, $02, nB3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nFs3, $04, nRst, $02, nB2, $04, nRst, $02

Butterfly_Loop70:
	dc.b	nFs3, $04, nRst, $02, nB2, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop70
	dc.b	nFs3, $04, nRst, $02, nB2, $04, nRst, $02, nFs3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nCs3, $04, nRst, $02

Butterfly_Loop71:
	dc.b	nAb3, $04, nRst, $02, nCs3, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop71
	dc.b	nAb3, $04, nRst, $02, nB3, $04, nRst, $02, nAb3, $04, nRst

Butterfly_Loop72:
	dc.b	$6E
	smpsLoop            $00, $07, Butterfly_Loop72
	dc.b	nAb3, $04, nRst, $02, nCs3, $04, nRst, $02

Butterfly_Loop73:
	dc.b	nAb3, $04, nRst, $02, nCs3, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop73
	dc.b	nAb3, $04, nRst, $02, nCs3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nB2, $04, nRst, $02

Butterfly_Loop74:
	dc.b	nAb3, $04, nRst, $02, nB2, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop74
	dc.b	nAb3, $04, nRst, $02, nB3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nFs3, $04, nRst, $02, nB2, $04, nRst, $02

Butterfly_Loop75:
	dc.b	nFs3, $04, nRst, $02, nB2, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop75
	dc.b	nFs3, $04, nRst, $02, nB2, $04, nRst, $02, nFs3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nCs3, $04, nRst, $02

Butterfly_Loop76:
	dc.b	nAb3, $04, nRst, $02, nCs3, nRst, $01
	smpsLoop            $00, $02, Butterfly_Loop76
	dc.b	nAb3, $04, nRst, $02, nB3, $04, nRst, $02, nAb3, $04
	smpsStop

; PSG3 Data
Butterfly_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $7F, nRst, $11
	smpsPSGvoice        fTone_04
	dc.b	nA5, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06, $06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_01
	dc.b	$02, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop2F:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop2F
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop30:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop30
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop31:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop31
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop32:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop32
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop33:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop33
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop34:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop34
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop35:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop35
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02, nRst, $01, nA5, $06, $03, $03, $06

Butterfly_Loop37:
	dc.b	$03, $03, $03, $03

Butterfly_Loop36:
	dc.b	$03, $03, $06
	smpsLoop            $00, $03, Butterfly_Loop36
	smpsLoop            $01, $07, Butterfly_Loop37
	dc.b	$03, $03
	smpsPSGvoice        fTone_08
	dc.b	$18
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	$02, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop38:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop38
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop39:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop39
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop3A:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop3A
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop3B:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop3B
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop3C:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop3C
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop3D:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop3D
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop3E:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop3E
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop3F:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop3F
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop40:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop40
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop41:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop41
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop42:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop42
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop43:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop43
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop44:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop44
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop45:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop45
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop46:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop46
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop47:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop47
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop48:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop48
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop49:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop49
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop4A:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop4A
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop4B:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop4B
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop4C:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop4C
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop4D:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop4D
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop4E:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop4E
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02, nRst, $01, nA5, $06, $03, $03, $06

Butterfly_Loop50:
	dc.b	$03, $03, $03, $03

Butterfly_Loop4F:
	dc.b	$03, $03, $06
	smpsLoop            $00, $03, Butterfly_Loop4F
	smpsLoop            $01, $07, Butterfly_Loop50
	dc.b	$03, $03
	smpsPSGvoice        fTone_08
	dc.b	$18
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	$02, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop51:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop51
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop52:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop52
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop53:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop53
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop54:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop54
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop55:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop55
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop56:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop56
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop57:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop57
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop58:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop58
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop59:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop59
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop5A:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop5A
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop5B:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop5B
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop5C:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop5C
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop5D:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop5D
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop5E:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop5E
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop5F:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop5F
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop60:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop60
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop61:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop61
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop62:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop62
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop63:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop63
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop64:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop64
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop65:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop65
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop66:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop66
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop67:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop67
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop68:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop68
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nAb2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop69:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop69
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop6A:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop6A
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nB2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop6B:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop6B
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop6C:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $02, Butterfly_Loop6C
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $04
	dc.b	nFs2, $02, nRst, $01
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FC
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5

Butterfly_Loop6D:
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02
	smpsLoop            $00, $03, Butterfly_Loop6D
	dc.b	nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $03, $01, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $04, nRst, $02
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	nA5, $02, nRst, $01, nA5, $06, $03, $03, $06, $06, $06, $06
	smpsPSGvoice        fTone_04
	dc.b	$21
	smpsStop

Butterfly_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

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
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $00, $00, $00
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

;	Voice $03
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

;	Voice $04
;	$2C
;	$70, $40, $21, $60, 	$9F, $1F, $1F, $5F, 	$0C, $09, $0C, $15
;	$04, $04, $06, $06, 	$56, $46, $46, $4F, 	$0C, $00, $10, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $04, $07
	smpsVcCoarseFreq    $00, $01, $00, $00
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $0C, $09, $0C
	smpsVcDecayRate2    $06, $06, $04, $04
	smpsVcDecayLevel    $04, $04, $04, $05
	smpsVcReleaseRate   $0F, $06, $06, $06
	smpsVcTotalLevel    $00, $10, $00, $0C


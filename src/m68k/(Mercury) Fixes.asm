; ELECTIVE MODS
; ================================================================================

; TODO: Hard code these into the rom, make them switchable by Options menu

; Name: Wall Jump
; Function: Gives Sonic a Wall Jump ability
; Date: 2011-02-02 (Feb), 2011-02-03 (Feb), 2011-02-05 (Feb)
; Depends On: Constants, Macros
WallJumpActive: = 1

; Name: Move Lamppost VRAM
; Function: Moves the Lamppost tiles in VRAM to allow for things like dust or the Insta-Shield to fit instead.
; Date: 2011-02-11 (Feb)
MoveLamppostVRAM: = 1

; Name: UseDMAQueue
; Function: Uses a DMA queue to load Sonic's art, freeing RAM and allowing Spin Dash dust or the Insta-Shield to function.
; Date: 2011-02-11 (Feb)
; Thanks To: Sonic Retro How-To by (various)
UseDMAQueue: = 1

; Name: Spin Dash
; Function: Enables the Sonic 2 Spin Dash
; Date: 2011-02-10 (Feb)
; Thanks To: Sonic Retro How-To by (various)
SpinDashActive: = 1
	SpinDashDustActive: = SpinDashActive*MoveLamppostVRAM*UseDMAQueue*1	; activates animated dust sprite when Spin Dashing
	SpinDashCancel: = SpinDashActive*1	; makes Sonic stop Spin Dashing if the A/B/C button is let up for long enough
	SpinDashNoRevDown: = SpinDashActive*1	; makes the Spin Dash not rev down as long as A/B/C button is held down
	SpinDashCameraLag: = SpinDashActive*1	; makes the camera lag behind when Sonic launches
; Notes: You should also apply the following fixes to avoid bugs: Walking In Air Fix, Pushing While Walking Fix, High Speed Camera Fix, Caterkiller Fix

; Name: Dash CD
; Function: Enables the Sonic CD Dash (aka Super Peel Out).
; Date: 2011-02-11 (Feb)
DashCDActive: = 1

; Name: Balance CD
; Function: Uses the Sonic CD balancing sprites (forward and back) instead of Sonic 1's.
; Date: 2011-02-11 (Feb)
BalanceCDActive: = 1

; Name: Insta-Shield
; Function: Enables the Sonic 3/K Insta-Shield.
; Date: 2011-02-11 (Feb)
InstaShieldActive: = 0
; Notes: Not yet functional

; Name: Simple Cheat Entry
; Function: Enters Level Select, Debug Mode, Slow Mo, and extended Sound Test cheats automatically upon U,D,L,R,A,Start
; Date: 2011-02-05 (Feb)
SimpleCheatEntry: = 1

; Name: Monitor Art Optimise
; Function: Shuffles the Monitor Art in order to free 8 free tiles (useful for modding HUD)
; Date: 2011-02-09 (Feb)
MonitorArtOptimise: = 1

; Name: HUD Centiseconds
; Function: Adds Sonic CD-style centiseconds to the HUD
; Date: 2011-02-05 (Feb), 2011-02-07 (Feb), 2011-02-09 (Feb)
HUDCentiseconds: = MonitorArtOptimise*1

; Name: Chunks In ROM
; Function: Loads Chunks (256x256) directly from ROM, freeing a huge amount of RAM ($0000-$A3FF)
; Date: 2011-02-05 (Feb)
; Thanks To: Sonic Retro How-To by FraGag
ChunksInROM: = 1

; Name: Blocks In ROM
; Function: Similar to "Chunks In ROM" only with Blocks (16x16), freeing a huge amount of RAM ($B000-$C7FF)
; Date: 2011-04-19 (Apr)
BlocksInROM: = 1

; Name: HUD Has Leading Zeroes
; Function: Gives Rings, Score and Lives leading zeroes (i.e. 001 as opposed to 1)
; Date: 2011-02-09 (Feb)
; Thanks to: Markey Jester
HUDHasLeadingZeroes: = 0

; Name: TIME/RINGS Flash Fix
; Function: Makes TIME and RINGS words in the HUD flash under the correct circumstances
; Date: 2011-02-07 (Feb), 2011-02-08 (Feb)
; Thanks To: 
TimeRingsFlashFix: = 1
	TimeRingsFlashFixNotRed: = TimeRingsFlashFix*1	; when true, "TIME" and "RINGS" will flash on and off instead of flashing red. Useful when changing palettes.

; Name: Dynamic Special Stage Walls 
; Function: Dynamically loads the wall art in the Special Stages to free VRAM (for things like the HUD)
; Date: 2011-02-05 (Feb), 2011-02-06 (Feb), 2011-02-07 (Feb)
DynamicSpecialStageWalls: = 0

; Name: HUD In Special Stage
; Function: Adds HUD to Special Stage. Also useful for adding a decreasing time limit to Special Stage
; Date: 2011-02-05 (Feb), 2011-02-06 (Feb), 2011-02-07 (Feb), 2011-02-08 (Feb)
; Depends On: Dynamic Special Stage Walls
HUDInSpecialStage: = DynamicSpecialStageWalls*1
	HUDInSpecialStageType: = 0	; 0=normal; 1=score not shown; 2=score & time not shown; 3=rings only
	
; Name: Time Limit in Special Stage
; Function: If HUDInSpecialStage is active, the Special Stage has a working 9:59 time limit anyway, but this makes it a decreasing one with custom values
; Date: 2011-02-08 (Feb)
; Depends On: Dynamic Special Stage Walls, HUD In Special Stage, Time Rings Flash Fix
TimeLimitInSpecialStage: = HUDInSpecialStage*TimeRingsFlashFix*1
	TimeLimitInSpecialStagePinch: = $00001E00	; "pinch" threshold that time must reach in order to trigger "TIME" to flash. Format: $000MSSCC
	TimeLimitInSpecialStageStart: = $00010000	; time on the clock to start with when Special Stage is entered. Format: $000MSSCC
		;IMPORTANT! TimeLimitInSpecialStageStart must always end in 00,

; Name: Title Screen Palette Fix
; Function: Uses the proper GHZ palette on the Title Screen
; Date: 2011-02-07 (Feb)
TitleScreenPaletteFix: = 1

; Name: Special Stage Jump Fix
; Function: Gives Sonic variable jump height in the Special Stage to be more fair and consistent with the rest of the game
; Date: 2011-02-07 (Feb)
SpecialStageJumpFix: = 1

; Name: Warm Palette Mod
; Function: Gives the game a Chaotix-like shine that helps mask the palette changes and update the look
; Date: 2011-02-07 (Feb)
WarmPaletteMod: = 0
; Notes: Not yet functional.

; Name: Shield Art Mod
; Function: Attempts to improve the look of the shield.
; Date: 2011-02-12 (Feb)
ShieldArtMod: = 1	; set to 1 to simply make the mirroring less obvious; set to 2 to make it solid, smooth and more like Chaotix's shield art.
	; It's not recommended to set this to 2 unless Warm Palette Mod is on.

; Name: Sonic CD Roll Jump
; Function: Makes the Roll Jump work like Sonic CD (Sonic can still control his horizontal trajectory). Frees up a status bit for Sonic.
; Date: 2011-02-09 (Feb)
SonicCDRollJump: = 1

; Name: Rebound Mod
; Function: Makes rebounding from enemies/monitors after rolling off a cliff onto them function the same as if they were jumped on - the rebound is cut short if the jump button is released.
; Date: 2011-02-12 (Feb)
ReboundMod: = 1

; Name: Enable Press Start Button Message
; Function: Makes the "Press Start Button" message appear correctly on the Title Screen
; Date: 2011-02-09 (Feb)
EnablePSBMessage: = 1

; Name: Limit LZ Block Rising Speed
; Function: Limits the rising speed of blocks in LZ so that Sonic can jump off them more comfortably.
; Date: 2011-02-10 (Feb)
LimitLZBlockRisingSpeed: = 1

; Name: Skip Check Sum Check
; Function: Skips the Check Sum check in order to speed up the game booting, plus frees the 4 bytes of RAM with the 'init' string in them
; Date: 2011-02-10 (Feb)
SkipCheckSumCheck: = 1

; Name: Speed Up Score Tally
; Function: Allows the player to hold a button to speed up the score tally
; Date: 2011-02-10 (Feb)
SpeedUpScoreTally: = 1

; Name: Spike SFX Fix
; Function: Makes the proper sound effect play when Sonic is harmed by Spikes/LZ Harpoons.
; Date: 2011-02-11 (Feb)
SpikeSFXFix: = 1

; Name: Rolling Turn Around Fix
; Function: Prevents Sonic from turning around while rolling (which without this fix could be abused to roll in place forever).
; Date: 2011-02-11 (Feb)
RollingTurnAroundFix: = 1

; Name: Scroll Delay
; Function: Adds a delay before the screen begins to scroll when looking up and down. This is essential if adding the Spin Dash or Super Peel Out.
; Date: 2011-02-11 (Feb)
; Thanks To: Sonic Retro How-To by shobiz
ScrollDelay: = 1
	ScrollDelayTime: = 120	; number of steps before the screen starts to scroll.
	
; Name: Look Shift Fix
; Function: Fixing the looking up/down camera shift so that it stops at zone boundaries, preventing a delay when returning to the neutral position.
; Date: 2011-02-11 (Feb)
LookShiftFix: = 1

; Name: Spike Fix
; Function: Prevents spikes from harming Sonic while he's flashing.
; Date: 2011-02-11 (Feb)
; Thanks To: Sonic Retro How-To by FraGag
SpikeFix: = 1

; Name: Caterkiller Fix
; Function: Makes it safe to roll into the caterkiller from the front at high speeds without fear of being hurt some times and not others.
; Date: 2011-02-11 (Feb)
CaterkillerFix: = 1

; Name: Custom Demo Delay
; Function: Makes it possible to customise how long the Title Screen waits before going to a demo.
; Date: 2011-03-02 (Mar)
CustomDemoDelay: = 1
	CustomDemoDelayTime: = $280	; delay until demo is played; default is $178; use -1 for never (will return to Sega Screen eventually, though).

; Name: Orbinaut Animation Tweak
; Function: Makes Orbinaut "notice" Sonic at a closer range so that it's more likely to happen onscreen, and "get angry" quicker.
; Date: 2011-03-02 (Mar)
OrbinautAnimationTweak: = 1
	OrbinautAnimationTweakRange: = $80	; horizontal range in pixels at which Sonic is noticed by the Orbinaut
	OrbinautAnimationTweakSpeed: = $8	; animation speed of the Orbinaut's "getting angry" animation
	
; Name: SLZ Orbinaut Behaviour Mod
; Function: Makes the SLZ Orbinauts beatable by giving them behaviour similar to Sonic 4's.
; Date: 2011-03-06 (Mar)
SLZOrbinautBehaviourMod: = 1
	
; Name: Newtron Behaviour Tweak
; Function: Slightly alters the behaviour of Newtrons.
; Date: 2011-03-02 (Mar)
NewtronBehaviourTweak: = 3
	; set to 1 to make red-blue Newtrons vulnerable after they finish appearing but before they land
	; set to 2 to make yellow-green Newtrons reappear once Sonic leaves the vicinity and returns
	; set to 3 for both of the above

; Name: Lost Rings Flash
; Function: Makes Lost Rings flash before they disappear.
; Date: 2011-03-02 (Mar)
LostRingsFlash: = 1
	LostRingsFlashTime: = 80	; number of steps of life the rings need to have left before they start to flash.
	
; Name: FZ Boss Invuln Mod
; Function: Allows you to customise the number of steps the FZ Boss's invulnerability lasts.
; Date: 2011-03-02 (Mar)
FZBossInvulnMod: = 1
	FZBossInvulnModTime: = $20	; default is $64.

; Name: Disable Speed Cap
; Function: Disables the speed cap in the air and on the ground.
; Date: 2011-03-02 (Mar)
DisableSpeedCap: = 3
	; set to 1 to remove ground speed cap
	; set to 2 to remove air speed cap
	; set to 3 for both of the above
	
; Name: Giant Ring Art Loads With End Sign
; Function: Makes the Giant Ring art load when End Sign's does, avoiding some issues.
; Date: 2011-03-03 (Mar)
; Depends On: MZ2 Layout Fix
GiantRingArtLoadsWithEndSign: = 1

; Name: Special Stage Index Increases Only If Won
; Function: Makes the Special Stage index not increase when you fail the stage, allowing you to practise the stages more easily because next time you enter one it'll be the same one you failed last time.
; Date: 2011-03-09 (Mar)
SpecialStageIndexIncreasesOnlyIfWon: = 1

; Name: Special Stages Still Appear With All Emeralds
; Function: Makes the Special Stages still accessible even once all emeralds are collected. Of course more emeralds aren't possible to be collected; they are replaced with Continues, making use of the unused 1-up item in the Special Stages.
; Date: 2011-03-09 (Mar)
SpecialStagesStillAppearWithAllEmeralds: = 1
	
; Name: Giant Rings In SBZ
; Function: Adds Giant Rings (and therefore extra shots at the Special Stage) to SBZ1 and SBZ2.
; Date: 2011-03-03 (Mar)
; Modifies: levels\sbz2.bin, objpos\sbz1.bin, objpos\sbz1 (JP1).bin, objpos\sbz2.bin
GiantRingsInSBZ: = GiantRingArtLoadsWithEndSign*1
	GiantRingsInSBZArtLoc1: = $4DA	; originally $400, this is where the Giant Ring art is loaded into VRAM
	GiantRingsInSBZArtLoc2: = $568	; originally $518, this is where the SBZ Crumbling Floor art is loaded into VRAM
	GiantRingsInSBZArtLoc3: = $3A0	; originally $400, this is where the SBZ Eggman art is loaded into VRAM
	GiantRingsInSBZArtLoc4: = $4C0	; originally $4A0, this is where the SBZ Eggman Switch art is loaded into VRAM

; Name: Padding Active
; Function: Pads the ROM with a value until it reaches a certain number of megs
; Date: 2011-02-27 (Feb)
PaddingActive: = 1
	PaddingValue: = $FF
	PaddingMegs: = 1
	
; Name: Quarterloop Fix
; Function: Makes Sonic behave better when running back down quarterloops by using Sonic 2's code.
; Date: 2011-03-15 (Mar)
QuarterloopFix: = 1

; Name: Magnetic Rings
; Function: Gives Rings ability to be attracted to Sonic while he has a Shield.
; Date: 2011-03-24 (Mar)
MagneticRings: = 1

; Name:  Rings Bounce At Zone Bottom
; Function: Rings will bounce off of the bottom boundary of the Zone, making SYZ boss more fair.
; Date: 2011-04-19 (Apr)
RingsBounceAtZoneBottom: = 1

; VARIABLES
; ================================================================================

	if DynamicSpecialStageWalls=1	;Mercury Dynamic Special Stage Walls
v_ssangleprev:	= $FFFFF784	; previous Special Stage angle (1 byte)
	endc	;	;Mercury Dynamic Special Stage Walls

	if SpinDashCameraLag=1 ;Mercury Spin Dash Camera Lag
v_cameralag:	= $FFFFFEB3	; camera lag after launching Spin Dash (1 byte)
	endc	;end Spin Dash Camera Lag

	if ScrollDelay=1	;Mercury Scroll Delay
v_scrolldelay:	= $FFFFFEBE	; scroll delay timer
	endc	;end Scroll Delay

	if HUDCentiseconds=1	;Mercury HUD Centiseconds
v_centstep:	= $FFFFFEBF	; value used to increment centiseconds
	endc	;end HUD Centiseconds

; CONSTANTS
; ================================================================================

; Sonic Status Bits
staFacing:	equ 0
staAir:		equ 1
staSpin:	equ 2
staOnObj:	equ 3
staRollJump:equ 4
staPush:	equ 5
staWater:	equ 6

	if DashCDActive=1	;Mercury Dash CD
staDash:	equ 1
	endc	;end Dash CD

	if SpinDashActive=1	;Mercury Spin Dash
staSpinDash:	equ 0
	endc	;end Spin Dash

; Sonic OST Bytes
obWallJump:	equ $2C	; Wall Jump flag
			; $2D reserved, as well
obInvuln:	equ $30	; Invulnerable (blinking) timer
			; $31 reserved as well
obInvinc:	equ $32	; Invincibility timer
			; $33 reserved as well
obShoes:	equ $34	; Speed Shoes timer
			; $35 reserved as well
			
obFrontAngle:	equ $36
obRearAngle:	equ $37
			
obOnWheel:	equ $38	; on convex wheel flag

obStatus2:	equ $39	; status for abilities such as Spin Dash

	if SpinDashActive|DashCDActive=1	;Mercury Spin Dash
obRevSpeed:	equ $3A	; rev speed for Spin Dash or Dash
			; $3B reserved as well
	endc	;end Spin Dash

obRestartTimer:	equ $3A ; level restart timer
obJumping:	equ $3C	; jumping flag
obPlatformID:	equ $3D	; ost slot of the object Sonic's on top of
obLRLock:	equ $3E	; flag for preventing left and right input

; MACROS
; ================================================================================


; ---------------------------------------------------------------------------
; SpriteMap macro usage
; l = left coordinate
; t = top coordinate
; w = width (in tiles)
; h = height (in tiles)
; x = horizontal mirroring 1=yes 0=no
; y = vertical mirroring 1=yes 0=no
; pri = priority 1=always on top
; pal = palette index (0...3)
; ind = starting tile index
; ---------------------------------------------------------------------------

SpriteMap:	macro	l, t, w, h, x, y, pri, pal, ind
		dc.b	t
		dc.b	(h-1)|((w-1)<<2)
		dc.b	(pri<<7)|(pal<<5)|(y<<4)|(x<<3)|(ind>>8)
		dc.b	ind&0xFF
		dc.b	l
		endm

; ---------------------------------------------------------------------------
; DynPLC macro usage
; n = number of tiles
; i = starting tile index
; o = offset (optional), i.e. Art_SonicSpinDash-Art_Sonic
; ---------------------------------------------------------------------------

DynPLC:		macro	n, i, o
		if (narg=2)
		dc.b	((n-1)<<4)|(i>>8)
		dc.b	i&$FF
		else
		dc.b	((n-1)<<4)|((i+((o)>>5))>>8)
		dc.b	(i+((o)>>5))&$FF
		endc
		endm

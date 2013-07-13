; Variables (v) and Flags (f)

v_regbuffer:	= $FFFFFC00	; stores registers d0-a7 during an error event ($40 bytes)
v_spbuffer:	= $FFFFFC40	; stores most recent sp address (4 bytes)
v_errortype:	= $FFFFFC44	; error type

v_256x256:	=   $FF0000	; 256x256 tile mappings ($A400 bytes)
v_lvllayout:	= $FFFFA400	; level and background layouts ($400 bytes)

v_ngfx_buffer:	= $FFFFAA00	; Nemesis graphics decompression buffer ($200 bytes)
v_spritequeue:	= $FFFFAC00	; sprite display queue, in order of priority ($400 bytes)
v_16x16:	= $FFFFB000	; 16x16 tile mappings

v_sgfx_buffer:	= $FFFFC800	; buffered Sonic graphics ($18 cells) ($300 bytes)
v_tracksonic:	= $FFFFCB00	; position tracking data for Sonic ($100 bytes)
v_scrolltable:	= $FFFFCC00	; scrolling table data ($400 bytes)
v_objspace:	= $FFFFD000	; object variable space ($40 bytes per object) ($2000 bytes)
v_player:	= v_objspace	; object variable space for Sonic ($40 bytes)
v_lvlobjspace:	= $FFFFD800	; level object variable space ($1800 bytes)
v_sndtype:	= $FFFFF000	; sound type (90=music; 80=waterfall; 70=sound; 68/60=special sound)

f_stopmusic:	= $FFFFF003	; flag set to stop music when paused

v_playsnd0:	= $FFFFF009	; sound or music copied from below
v_playsnd1:	= $FFFFF00A	; sound or music to play
v_playsnd2:	= $FFFFF00B	; special sound to play
v_playnull:	= $FFFFF00C	; unused sound to play

v_voice_ptr:	= $FFFFF018	; voice data pointer (4 bytes)

v_tempo_mod:	= $FFFFF028	; music - tempo modifier

v_ring_speaker:	= $FFFFF02B	; which speaker the "ring" sound is played in (00 = right; 01 = left)

v_tempo_time:	= $FFFFF042	; music - tempo dividing timing

v_dac_ptr:	= $FFFFF044	; DAC channel pointer (4 bytes)

v_fm1_ptr:	= $FFFFF074	; FM channel 1 pointer (4 bytes)
v_fm1_mod:	= $FFFFF078	; FM channel 1 modifier (2 bytes)

v_fm2_ptr:	= $FFFFF0A4	; FM channel 2 pointer (4 bytes)
v_fm2_mod:	= $FFFFF0A8	; FM channel 2 modifier (2 bytes)

v_fm3_ptr:	= $FFFFF0D4	; FM channel 3 pointer (4 bytes)
v_fm3_mod:	= $FFFFF0D8	; FM channel 3 modifier (2 bytes)

v_fm4_ptr:	= $FFFFF104	; FM channel 4 pointer (4 bytes)
v_fm4_mod:	= $FFFFF108	; FM channel 4 modifier (2 bytes)

v_fm5_ptr:	= $FFFFF134	; FM channel 5 pointer (4 bytes)
v_fm5_mod:	= $FFFFF138	; FM channel 5 modifier (2 bytes)

v_psg1_ptr:	= $FFFFF194	; PSG channel 1 pointer (4 bytes)
v_psg1_mod:	= $FFFFF198	; PSG channel 1 modifier (2 bytes)

v_psg2_ptr:	= $FFFFF1C4	; PSG channel 2 pointer (4 bytes)
v_psg2_mod:	= $FFFFF1C8	; PSG channel 2 modifier (2 bytes)

v_psg3_ptr:	= $FFFFF1F4	; PSG channel 3 pointer (4 bytes)
v_psg3_mod:	= $FFFFF1F8	; PSG channel 3 modifier (2 bytes)

f_fastmusic:	= $FFFFF3CA	; flag set to speed up the music (00 = normal; 80 = fast)

v_gamemode:	= $FFFFF600	; game mode (00=Sega; 04=Title; 08=Demo; 0C=Level; 10=SS; 14=Cont; 18=End; 1C=Credit; +8C=PreLevel)
v_jpadhold2:	= $FFFFF602	; joypad input - held, duplicate
v_jpadpress2:	= $FFFFF603	; joypad input - pressed, duplicate
v_jpadhold1:	= $FFFFF604	; joypad input - held
v_jpadpress1:	= $FFFFF605	; joypad input - pressed

v_vdp_buffer1:	= $FFFFF60C	; VDP instruction buffer (2 bytes)

v_demolength:	= $FFFFF614	; the length of a demo in frames (2 bytes)
v_scrposy_dup:	= $FFFFF616	; screen position y (duplicate) (2 bytes)

v_scrposx_dup:	= $FFFFF61A	; screen position x (duplicate) (2 bytes)

v_hbla_hreg:	= $FFFFF624	; VDP H.interrupt register buffer (8Axx) (2 bytes)
v_hbla_line:	= $FFFFF625	; screen line where water starts and palette is changed by HBlank
v_pfade_start:	= $FFFFF626	; palette fading - start position in bytes
v_pfade_size:	= $FFFFF627	; palette fading - number of colours
v_vbla_routine:	= $FFFFF62A	; VBlank - routine counter
v_spritecount:	= $FFFFF62C	; number of sprites on-screen
v_pcyc_num:	= $FFFFF632	; palette cycling - current reference number (2 bytes)
v_pcyc_time:	= $FFFFF634	; palette cycling - time until the next change (2 bytes)
v_random:	= $FFFFF636	; pseudo random number buffer (4 bytes)
f_pause:	= $FFFFF63A	; flag set to pause the game (2 bytes)
v_vdp_buffer2:	= $FFFFF640	; VDP instruction buffer (2 bytes)
f_hbla_pal:	= $FFFFF644	; flag set to change palette during HBlank (0000 = no; 0001 = change) (2 bytes)
v_waterpos1:	= $FFFFF646	; water height, actual (2 bytes)
v_waterpos2:	= $FFFFF648	; water height, ignoring sway (2 bytes)
v_waterpos3:	= $FFFFF64A	; water height, next target (2 bytes)
f_water:	= $FFFFF64C	; flag set for water
v_wtr_routine:	= $FFFFF64D	; water event - routine counter
f_wtr_state:	= $FFFFF64E	; water palette state when water is above/below the screen (00 = partly/all dry; 01 = all underwater)

v_pal_buffer:	= $FFFFF650	; palette data buffer (used for palette cycling) ($30 bytes)
v_plc_buffer:	= $FFFFF680	; pattern load cues buffer (maximum $10 PLCs) ($60 bytes)
v_ptrnemcode:	= $FFFFF6E0	; pointer for nemesis decompression code ($1502 or $150C) (4 bytes)

f_plc_execute:	= $FFFFF6F8	; flag set for pattern load cue execution (2 bytes)

v_screenposx:	= $FFFFF700	; screen position x (2 bytes)

v_screenposy:	= $FFFFF704	; screen position y (2 bytes)

v_limitleft1:	= $FFFFF720	; left level boundary (2 bytes)
v_limitright1:	= $FFFFF722	; right level boundary (2 bytes)
v_limittop1:	= $FFFFF724	; top level boundary (2 bytes)
v_limitbtm1:	= $FFFFF726	; bottom level boundary (2 bytes)
v_limitleft2:	= $FFFFF728	; left level boundary (2 bytes)
v_limitright2:	= $FFFFF72A	; right level boundary (2 bytes)
v_limittop2:	= $FFFFF72C	; top level boundary (2 bytes)
v_limitbtm2:	= $FFFFF72E	; bottom level boundary (2 bytes)

v_limitleft3:	= $FFFFF732	; left level boundary, at the end of an act (2 bytes)

v_scrshiftx:	= $FFFFF73A	; screen shift as Sonic moves horizontally

v_lookshift:	= $FFFFF73E	; screen shift when Sonic looks up/down (2 bytes)
v_dle_routine:	= $FFFFF742	; dynamic level event - routine counter
f_nobgscroll:	= $FFFFF744	; flag set to cancel background scrolling

v_bgscroll1:	= $FFFFF754	; background scrolling variable 1
v_bgscroll2:	= $FFFFF756	; background scrolling variable 2
v_bgscroll3:	= $FFFFF758	; background scrolling variable 3
f_bgscrollvert:	= $FFFFF75C	; flag for vertical background scrolling
v_sonspeedmax:	= $FFFFF760	; Sonic's maximum speed (2 bytes)
v_sonspeedacc:	= $FFFFF762	; Sonic's acceleration (2 bytes)
v_sonspeeddec:	= $FFFFF764	; Sonic's deceleration (2 bytes)
v_sonframenum:	= $FFFFF766	; frame to display for Sonic
f_sonframechg:	= $FFFFF767	; flag set to update Sonic's sprite frame
v_anglebuffer:	= $FFFFF768	; angle of collision block that Sonic or object is standing on

v_opl_routine:	= $FFFFF76C	; ObjPosLoad - routine counter
v_opl_screen:	= $FFFFF76E	; ObjPosLoad - screen variable
v_opl_data:	= $FFFFF770	; ObjPosLoad - data buffer ($10 bytes)

v_ssangle:	= $FFFFF780	; Special Stage angle (2 bytes)
v_ssrotate:	= $FFFFF782	; Special Stage rotation speed (2 bytes)

v_btnpushtime1:	= $FFFFF790	; button push duration - in level (2 bytes)
v_btnpushtime2:	= $FFFFF792	; button push duration - in demo (2 bytes)
v_palchgspeed:	= $FFFFF794	; palette fade/transition speed (0 is fastest) (2 bytes)
v_collindex:	= $FFFFF796	; ROM address for collision index of current level (4 bytes)
v_palss_num:	= $FFFFF79A	; palette cycling in Special Stage - reference number (2 bytes)
v_palss_time:	= $FFFFF79C	; palette cycling in Special Stage - time until next change (2 bytes)

v_obj31ypos:	= $FFFFF7A4	; y-position of object 31 (MZ stomper) (2 bytes)
v_bossstatus:	= $FFFFF7A7	; status of boss and prison capsule (01 = boss defeated; 02 = prison opened)
v_trackpos:	= $FFFFF7A8	; position tracking reference number (2 bytes)
v_trackbyte:	= $FFFFF7A9	; low byte for position tracking
f_lockscreen:	= $FFFFF7AA	; flag set to lock screen during bosses
v_256loop1:	= $FFFFF7AC	; 256x256 level tile which contains a loop (GHZ/SLZ)
v_256loop2:	= $FFFFF7AD	; 256x256 level tile which contains a loop (GHZ/SLZ)
v_256roll1:	= $FFFFF7AE	; 256x256 level tile which contains a roll tunnel (GHZ)
v_256roll2:	= $FFFFF7AF	; 256x256 level tile which contains a roll tunnel (GHZ)
v_lani0_frame:	= $FFFFF7B0	; level graphics animation 0 - current frame
v_lani0_time:	= $FFFFF7B1	; level graphics animation 0 - time until next frame
v_lani1_frame:	= $FFFFF7B2	; level graphics animation 1 - current frame
v_lani1_time:	= $FFFFF7B3	; level graphics animation 1 - time until next frame
v_lani2_frame:	= $FFFFF7B4	; level graphics animation 2 - current frame
v_lani2_time:	= $FFFFF7B5	; level graphics animation 2 - time until next frame
v_lani3_frame:	= $FFFFF7B6	; level graphics animation 3 - current frame
v_lani3_time:	= $FFFFF7B7	; level graphics animation 3 - time until next frame
v_lani4_frame:	= $FFFFF7B8	; level graphics animation 4 - current frame
v_lani4_time:	= $FFFFF7B9	; level graphics animation 4 - time until next frame
v_lani5_frame:	= $FFFFF7BA	; level graphics animation 5 - current frame
v_lani5_time:	= $FFFFF7BB	; level graphics animation 5 - time until next frame
v_gfxbigring:	= $FFFFF7BE	; settings for giant ring graphics loading (2 bytes)
f_conveyrev:	= $FFFFF7C0	; flag set to reverse conveyor belts in LZ/SBZ
v_obj63:	= $FFFFF7C1	; object 63 (LZ/SBZ platforms) variables (6 bytes)
f_wtunnelmode:	= $FFFFF7C7	; LZ water tunnel mode
f_lockmulti:	= $FFFFF7C8	; flag set to lock controls, lock Sonic's position & animation
f_wtunnelallow:	= $FFFFF7C9	; LZ water tunnels (00 = enabled; 01 = disabled)
f_jumponly:	= $FFFFF7CA	; flag set to lock controls apart from jumping
v_obj6B:	= $FFFFF7CB	; object 6B (SBZ stomper) variable
f_lockctrl:	= $FFFFF7CC	; flag set to lock controls during ending sequence
f_bigring:	= $FFFFF7CD	; flag set when Sonic collects the giant ring
v_itembonus:	= $FFFFF7D0	; item bonus from broken enemies, blocks etc. (2 bytes)
v_timebonus:	= $FFFFF7D2	; time bonus at the end of an act (2 bytes)
v_ringbonus:	= $FFFFF7D4	; ring bonus at the end of an act (2 bytes)
f_endactbonus:	= $FFFFF7D6	; time/ring bonus update flag at the end of an act
v_sonicend:	= $FFFFF7D7	; routine counter for Sonic in the ending sequence
f_switch:	= $FFFFF7E0	; flags set when Sonic stands on a switch ($10 bytes)

v_sprites:	= $FFFFF800	; sprite table ($200 bytes)
v_pal0_wat:	= $FFFFFA00	; duplicate palette data - underwater ($80 bytes)
v_pal0_dry:	= $FFFFFA80	; duplicate palette data - main ($80 bytes)
v_pal1_wat:	= $FFFFFB00	; palette data - underwater ($80 bytes)
v_pal1_dry:	= $FFFFFB80	; palette data - main ($80 bytes)
v_objstate:	= $FFFFFC00	; object state list ($200 bytes)
f_restart:	= $FFFFFE02	; restart level flag (2 bytes)
v_framecount:	= $FFFFFE04	; frame counter (adds 1 every frame) (2 bytes)
v_framebyte:	= v_framecount+1; low byte for frame counter
v_debugitem:	= $FFFFFE06	; debug item currently selected (NOT the object number of the item)
v_debuguse:	= $FFFFFE08	; debug mode use & routine counter (when Sonic is a ring/item) (2 bytes)
v_debugxspeed:	= $FFFFFE0A	; debug mode - horizontal speed
v_debugyspeed:	= $FFFFFE0B	; debug mode - vertical speed
v_vbla_count:	= $FFFFFE0C	; vertical interrupt counter (adds 1 every VBlank) (4 bytes)
v_vbla_word:	= v_vbla_count+2 ; low word for vertical interrupt counter (2 bytes)
v_vbla_byte:	= v_vbla_word+1	; low byte for vertical interrupt counter
v_zone:		= $FFFFFE10	; current zone number
v_act:		= $FFFFFE11	; current act number
v_lives:	= $FFFFFE12	; number of lives
v_air:		= $FFFFFE14	; air remaining while underwater (2 bytes)
v_airbyte:	= v_air+1	; low byte for air
v_lastspecial:	= $FFFFFE16	; last special stage number
v_continues:	= $FFFFFE18	; number of continues
f_timeover:	= $FFFFFE1A	; time over flag
v_lifecount:	= $FFFFFE1B	; lives counter value (for actual number, see "v_lives")
f_lifecount:	= $FFFFFE1C	; lives counter update flag
f_ringcount:	= $FFFFFE1D	; ring counter update flag
f_timecount:	= $FFFFFE1E	; time counter update flag
f_scorecount:	= $FFFFFE1F	; score counter update flag
v_rings:	= $FFFFFE20	; rings (2 bytes)
v_ringbyte:	= v_rings+1	; low byte for rings
v_time:		= $FFFFFE22	; time (4 bytes)
v_timemin:	= $FFFFFE23	; time - minutes
v_timesec:	= $FFFFFE24	; time - seconds
v_timecent:	= $FFFFFE25	; time - centiseconds
v_score:	= $FFFFFE26	; score (4 bytes)
v_shield:	= $FFFFFE2C	; shield status (00 = no; 01 = yes)
v_invinc:	= $FFFFFE2D	; invinciblity status (00 = no; 01 = yes)
v_shoes:	= $FFFFFE2E	; speed shoes status (00 = no; 01 = yes)
v_lastlamp:	= $FFFFFE30	; number of the last lamppost you hit
v_lamp_xpos:	= v_lastlamp+2	; x-axis for Sonic to respawn at lamppost (2 bytes)
v_lamp_ypos:	= v_lastlamp+4	; y-axis for Sonic to respawn at lamppost (2 bytes)
v_lamp_rings:	= v_lastlamp+6	; rings stored at lamppost (2 bytes)
v_lamp_time:	= v_lastlamp+8	; time stored at lamppost (2 bytes)
v_lamp_dle:	= v_lastlamp+$C	; dynamic level event routine counter at lamppost
v_lamp_limitbtm:= v_lastlamp+$E	; level bottom boundary at lamppost (2 bytes)
v_lamp_scrx:	= v_lastlamp+$10 ; x-axis screen at lamppost (2 bytes)
v_lamp_scry:	= v_lastlamp+$12 ; y-axis screen at lamppost (2 bytes)

v_lamp_wtrpos:	= v_lastlamp+$20 ; water position at lamppost (2 bytes)
v_lamp_wtrrout:	= v_lastlamp+$22 ; water routine at lamppost
v_lamp_wtrstat:	= v_lastlamp+$23 ; water state at lamppost
v_lamp_lives:	= v_lastlamp+$24 ; lives counter at lamppost
v_emeralds:	= $FFFFFE57	; number of chaos emeralds
v_emldlist:	= $FFFFFE58	; which individual emeralds you have (00 = no; 01 = yes) (6 bytes)
v_oscillate:	= $FFFFFE5E	; values which oscillate - for swinging platforms, et al ($42 bytes)

v_ani0_time:	= $FFFFFEC0	; synchronised sprite animation 0 - time until next frame (used for synchronised animations)
v_ani0_frame:	= $FFFFFEC1	; synchronised sprite animation 0 - current frame
v_ani1_time:	= $FFFFFEC2	; synchronised sprite animation 1 - time until next frame
v_ani1_frame:	= $FFFFFEC3	; synchronised sprite animation 1 - current frame
v_ani2_time:	= $FFFFFEC4	; synchronised sprite animation 2 - time until next frame
v_ani2_frame:	= $FFFFFEC5	; synchronised sprite animation 2 - current frame
v_ani3_time:	= $FFFFFEC6	; synchronised sprite animation 3 - time until next frame
v_ani3_frame:	= $FFFFFEC7	; synchronised sprite animation 3 - current frame
v_ani3_buf:	= $FFFFFEC8	; synchronised sprite animation 3 - info buffer (2 bytes)
v_limittopdb:	= $FFFFFEF0	; level upper boundary, buffered for debug mode (2 bytes)
v_limitbtmdb:	= $FFFFFEF2	; level bottom boundary, buffered for debug mode (2 bytes)

v_levseldelay:	= $FFFFFF80	; level select - time until change when up/down is held (2 bytes)
v_levselitem:	= $FFFFFF82	; level select - item selected (2 bytes)
v_levselsound:	= $FFFFFF84	; level select - sound selected (2 bytes)
v_scorecopy:	= $FFFFFFC0	; score, duplicate (4 bytes)
v_scorelife:	= $FFFFFFC0	; points required for an extra life (4 bytes) (JP1 only)
f_levselcheat:	= $FFFFFFE0	; level select cheat flag
f_slomocheat:	= $FFFFFFE1	; slow motion & frame advance cheat flag
f_debugcheat:	= $FFFFFFE2	; debug mode cheat flag
f_creditscheat:	= $FFFFFFE3	; hidden credits & press start cheat flag
v_title_dcount:	= $FFFFFFE4	; number of times the d-pad is pressed on title screen (2 bytes)
v_title_ccount:	= $FFFFFFE6	; number of times C is pressed on title screen (2 bytes)

f_demo:		= $FFFFFFF0	; demo mode flag (0 = no; 1 = yes; $8001 = ending) (2 bytes)
v_demonum:	= $FFFFFFF2	; demo level number (not the same as the level number) (2 bytes)
v_creditsnum:	= $FFFFFFF4	; credits index number (2 bytes)
v_megadrive:	= $FFFFFFF8	; Megadrive machine type
f_debugmode:	= $FFFFFFFA	; debug mode flag (sometimes 2 bytes)
v_init:		= $FFFFFFFC	; 'init' text string (4 bytes)
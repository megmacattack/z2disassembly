; globals in the zero page
.globalzp frame_counter
.globalzp joy_pressed
.globalzp joy1_pressed
.globalzp joy2_pressed
.globalzp joy_held
.globalzp joy1_held
.globalzp joy2_held

; globals in system RAM
.global nmi_mode
.enum nmi_mode
; the values here seems designed to work well
; with the BIT instruction, allowing for a
; quick check at the start of the NMI as to what
; kind of super-mode we're in, and how to
; configure the PPU.
    ; The title screen, game select, elimination mode, etc.
    ; runs bank5_title_NMI
    title                            = %10000000 ; 0x80
    ; A blank screen while loading is happening, keeps the music running
    ; runs run_only_sound_NMI
    blank                            = %01000000 ; 0x40
    ; A normal gameplay screen of any sort
    ; runs the normal bank7_NMI_Entry_Point to completion
    gameplay                         = %11000000 ; 0xc0
.endenum

; the overall mode of the game, either in
; gameplay (`game_mode`) or in the title (`title_mode`).
; These two values share the same address, and are
; used depending on the current nmi_mode.
.global game_mode
.enum game_mode
    load_rom_bank_data                      = $00
    go_outside                              = $01
    overworld_init                          = $02
    overworld_load_tile_maps                = $03
    reset_726_and_overworld_main            = $04
    overworld_main                          = $05
    load_sideview_area                      = $06
    reset_routine_and_next_mode             = $07
    empty1                                  = $08
    side_view_draw_init                     = $09
    switch_chr_bank_and_side_view_init      = $0A
    side_view_main                          = $0B
    vertical_exit_init                      = $0C
    vertical_exit_tile_setup                = $0D
    vertical_exit_setup                     = $0E
    vertical_exit_main                      = $0F
    take_side_exit                          = $10
    unknown1                                = $11
    vertical_exit_with_elevator             = $12
    take_elevator_exit                      = $13
    empty2                                  = $14
    unknown2                                = $15
    take_door_exit                          = $16
    raft_travel_init                        = $17
    raft_travel_main                        = $18
.endenum
title_mode := game_mode
.enum title_mode
    unknown1                                = $00
    register_name                           = $01
    elimination_mode                        = $02
    title_screen_animation                  = $03
.endenum

.global game_event ; automated events/cutscenes/etc. that take the game over when this is set.
.global game_running_event
.enum game_event
    restart_game                            = $00
    no_event                                = $01
    game_over                               = $02
    zelda_awakens                           = $03
    roll_credits                            = $04
    restart_scene_with_lives                = $06
    unknown                                 = $07
.endenum
title_event := game_event
.enum title_event
    title_screen_animation                  = $00
    player_select                           = $01
    start_game                              = $02
.endenum
.global region_number
.enum region_number
    west_hyrule                             = $00
    subworld                                = $01
    east_hyrule                             = $02
.endenum
.global world_number
.enum world_number
    overworld                               = $00
    west_towns                              = $01
    east_towns                              = $02
    palaces_125                             = $03
    palaces_346                             = $04
    great_palace                            = $05
    maybe_ending_sequence                   = $06
.endenum

.global rng_base
.global rng_out
.global rng_alt
.global rng_tail
.global area_code
.global town_code
.global palace_code
.global lives_remaining
.global PRG_bank
.global PPU_macro_select
.global player_magic
.global player_life
.global player_stats
.global player_exp
.global player_levels
.global player_atk_lvl
.global player_magic_lvl
.global player_life_lvl
.global player_items
.global player_jars
.global player_spells
.global player_magic_jars
.global player_life_jars
.global player_has_candle
.global player_has_glove
.global player_has_raft
.global player_has_boots
.global player_has_flute
.global player_has_cross
.global player_has_hammer
.global player_has_anykey
.global placed_gems_list
.global player_keys
.global player_gems_remain
.global player_skills
.global player_next_lvl
.global player_slot
.global new_game_plus
.global player_name
.global player_exp_add
.global item_presence_west_hyrule
.global item_presence_death_maze
.global item_presence_east_hyrule
.global item_presence_west_towns
.global item_presence_palace_1_2
.global item_presence_palace_3
.global item_presence_great_palace

.global bss_010A
.global bss_010B
.global bss_010C
.global bss_010D
.global bss_010E
.global bss_010F
.global bss_0112
.global bss_01AD
.global bss_01F0
.global bss_01F2
.global bss_01F4
.global bss_01F5
.global bss_01F6
.global bss_01F7
.global bss_01F8
.global bss_01FA
.global bss_01FB
.global bss_01FC
.global bss_01FD
.global bss_01FE
.global bss_01FF
.global bss_0200
.global bss_0201
.global bss_0202
.global bss_0203
.global bss_0204
.global bss_0205
.global bss_0206
.global bss_0207
.global bss_0208
.global bss_0209
.global bss_020A
.global bss_020B
.global bss_020C
.global bss_020D
.global bss_020E
.global bss_020F
.global bss_0210
.global bss_0211
.global bss_0212
.global bss_0213
.global bss_0216
.global bss_0217
.global bss_0218
.global bss_0219
.global bss_021A
.global bss_021B
.global bss_021F
.global bss_0220
.global bss_0221
.global bss_0222
.global bss_0223
.global bss_0224
.global bss_0225
.global bss_0226
.global bss_0227
.global bss_022B
.global bss_022F
.global bss_0230
.global bss_0231
.global bss_0232
.global bss_0233
.global bss_0234
.global bss_0235
.global bss_0236
.global bss_0237
.global bss_0240
.global bss_0241
.global bss_0242
.global bss_0243
.global bss_0244
.global bss_0245
.global bss_0246
.global bss_0247
.global bss_0250
.global bss_0252
.global bss_0253
.global bss_0254
.global bss_0256
.global bss_0257
.global bss_0258
.global bss_025A
.global bss_025B
.global bss_025C
.global bss_025F
.global bss_0260
.global bss_0262
.global bss_0264
.global bss_0266
.global bss_0267
.global bss_026C
.global bss_026F
.global bss_0270
.global bss_0271
.global bss_0272
.global bss_0273
.global bss_0274
.global bss_0275
.global bss_0276
.global bss_0277
.global bss_0278
.global bss_0279
.global bss_027A
.global bss_027B
.global bss_027C
.global bss_027D
.global bss_027E
.global bss_027F
.global bss_0280
.global bss_0281
.global bss_0282
.global bss_0283
.global bss_0284
.global bss_0285
.global bss_0286
.global bss_0287
.global bss_0290
.global bss_0291
.global bss_0292
.global bss_0293
.global bss_0294
.global bss_0295
.global bss_0296
.global bss_0297
.global bss_02A0
.global bss_02A1
.global bss_02A2
.global bss_02A3
.global bss_02A4
.global bss_02A5
.global bss_02A6
.global bss_02A7
.global bss_02A8
.global bss_02A9
.global bss_02AA
.global bss_02AB
.global bss_02AC
.global bss_02AD
.global bss_02AE
.global bss_02AF
.global bss_02B0
.global bss_02B1
.global bss_02B2
.global bss_02B3
.global bss_02B4
.global bss_02B5
.global bss_02B6
.global bss_02B7
.global bss_02C0
.global bss_02C1
.global bss_02C2
.global bss_02C3
.global bss_02D3
.global bss_02FF
.global bss_0300
.global bss_0301
.global bss_0302
.global bss_0303
.global bss_0304
.global bss_0305
.global bss_0306
.global bss_0307
.global bss_0308
.global bss_0309
.global bss_030A
.global bss_030B
.global bss_030C
.global bss_030D
.global bss_030E
.global bss_030F
.global bss_0311
.global bss_0312
.global bss_0313
.global bss_0314
.global bss_0316
.global bss_0317
.global bss_0318
.global bss_031D
.global bss_031E
.global bss_031F
.global bss_0320
.global bss_0325
.global bss_0326
.global bss_0327
.global bss_0328
.global bss_0329
.global bss_0348
.global bss_0362
.global bss_0363
.global bss_0364
.global bss_0365
.global bss_0366
.global bss_0367
.global bss_0368
.global bss_0369
.global bss_036A
.global bss_036B
.global bss_036C
.global bss_036D
.global bss_0372
.global bss_03A3
.global bss_03A4
.global bss_03A5
.global bss_03A6
.global bss_03A7
.global bss_03A8
.global bss_03D6
.global bss_03E6
.global bss_0400
.global bss_0401
.global bss_040E
.global bss_0410
.global bss_0411
.global bss_0414
.global bss_041A
.global bss_041F
.global bss_0420
.global bss_0424
.global bss_0429
.global bss_042E
.global bss_0433
.global bss_0438
.global bss_043E
.global bss_0444
.global bss_0447
.global bss_044A
.global bss_044B
.global bss_044C
.global bss_0452
.global bss_0458
.global bss_045E
.global bss_0464
.global bss_0470
.global bss_0471
.global bss_0477
.global bss_0479
.global bss_047E
.global bss_047F
.global bss_0480
.global bss_0481
.global bss_0484
.global bss_0485
.global bss_0486
.global bss_0487
.global bss_0488
.global bss_0489
.global bss_048A
.global bss_048B
.global bss_048C
.global bss_048D
.global bss_048E
.global bss_0494
.global bss_0495
.global bss_0497
.global bss_0499
.global bss_049A
.global bss_049C
.global bss_049D
.global bss_049E
.global bss_049F
.global bss_04A0
.global bss_04D0
.global bss_04E8
.global bss_0500
.global bss_0501
.global bss_0502
.global bss_0503
.global bss_0504
.global bss_0505
.global bss_0506
.global bss_0509
.global bss_050A
.global bss_050C
.global bss_050D
.global bss_050E
.global bss_0512
.global bss_0516
.global bss_0518
.global bss_0524
.global bss_0525
.global bss_0526
.global bss_053E
.global bss_0543
.global bss_0544
.global bss_054C
.global bss_054D
.global bss_0551
.global bss_0552
.global bss_055A
.global bss_0562
.global bss_0563
.global bss_0564
.global bss_0565
.global bss_0566
.global bss_0567
.global bss_0568
.global bss_0569
.global bss_056A
.global bss_056D
.global bss_0575
.global bss_057D
.global bss_057E
.global bss_0581
.global bss_0584
.global bss_058D
.global bss_0593
.global bss_0599
.global bss_059F
.global bss_05A5
.global bss_05AB
.global bss_05B1
.global bss_05B7
.global bss_05BD
.global bss_05C3
.global bss_05C9
.global bss_05CA
.global bss_05CC
.global bss_05D3
.global bss_05DA
.global bss_05DB
.global bss_05DC
.global bss_05DD
.global bss_05DE
.global bss_05E2
.global bss_05E3
.global bss_05E4
.global bss_05E5
.global bss_05E6
.global bss_05E7
.global bss_05E8
.global bss_05E9
.global bss_06FE
.global bss_0700
.global bss_0701
.global bss_0704
.global bss_0705
.global bss_0708
.global bss_0709
.global bss_070A
.global bss_070B
.global bss_070C
.global bss_070D
.global bss_070E
.global bss_070F
.global bss_0710
.global bss_0717
.global bss_071B
.global bss_071C
.global bss_071D
.global bss_071E
.global bss_071F
.global bss_0720
.global bss_0721
.global bss_0722
.global bss_0726
.global bss_0727
.global bss_0728
.global bss_0729
.global bss_072A
.global bss_072B
.global bss_072C
.global bss_072D
.global bss_072E
.global bss_072F
.global bss_0730
.global bss_0731
.global bss_0732
.global bss_0733
.global bss_0734
.global bss_0735
.global bss_0737
.global bss_0738
.global bss_0739
.global bss_073B
.global bss_073C
.global bss_073D
.global bss_073E
.global bss_073F
.global bss_0740
.global bss_0741
.global bss_0742
.global bss_0743
.global bss_0744
.global bss_0746
.global bss_0747
.global bss_0748
.global bss_0749
.global bss_074A
.global bss_074B
.global bss_074C
.global bss_074E
.global bss_074F
.global bss_0750
.global bss_0751
.global bss_0752
.global bss_0753
.global bss_0754
.global bss_0757
.global bss_0758
.global bss_0759
.global bss_075A
.global bss_075B
.global bss_075C
.global bss_075D
.global bss_075F
.global bss_0760
.global bss_0761
.global bss_0762
.global bss_0763
.global bss_0764
.global bss_0765
.global bss_0766
.global bss_0767
.global bss_0768
.global bss_076B
.global bss_076E
.global bss_076F
.global bss_0797
.global bss_0798
.global bss_079A
.global bss_079C
.global bss_079D
.global bss_079F
.global bss_07A9
.global bss_07AA
.global bss_07AB
.global bss_07AC
.global bss_07AD
.global bss_07AE
.global bss_07AF
.global bss_07B0
.global bss_07DA
.global bss_07DB
.global bss_07DC
.global bss_07DD
.global bss_07DE
.global bss_07DF
.global bss_07E0
.global bss_07E1
.global bss_07E2
.global bss_07E3
.global bss_07E4
.global bss_07E5
.global bss_07E6
.global bss_07E7
.global bss_07E8
.global bss_07E9
.global bss_07EA
.global bss_07EB
.global bss_07EC
.global bss_07ED
.global bss_07EE
.global bss_07EF
.global bss_07F0
.global bss_07F1
.global bss_07F2
.global bss_07F3
.global bss_07F4
.global bss_07F5
.global bss_07F6
.global bss_07F7
.global bss_07F8
.global bss_07F9
.global bss_07FA
.global bss_07FB
.global bss_07FC
.global bss_07FD
.global bss_07FE
.global bss_07FF


; bank 0 exports
.global bank0_Manual_Save_Game_Routine_UP_AND_A
.global bank0_Return_of_Ganon_screen_Palettes
.global bank0_unknown1
.global bank0_game_mode_raft_travel_init
.global bank0_unknown27
.global bank0_unknown28
.global bank0_unknown37
.global bank0_unknown39
.global bank0_game_mode_raft_travel_main
.global bank0_game_mode_vertical_exit_main
.global bank0_903A
.global bank0_96A8
.global bank0_9925
.global bank0_9A04
.global bank0_A199
.global bank0_A256
.global bank0_A30F
.global bank0_A315
.global bank0_A329
.global bank0_A334
.global bank0_A338
.global bank0_game_mode_vertical_exit_tile_setup
.global bank0_99E6
.global Chandeliers_in_North_Castle
.global Check_for_Fire_Spell
.global Hub_Update_Routine
.global game_mode_overworld_init
.global LevelUp_Pane__BlankLine_SecondHalfOnly
.global Side_View_Initialization_when_entering_a_Key_Area
.global Some_Palettes_Data_related_to_Falling_Animation
.global Spell_Casting_Routine
.global Tables_for_Game_Over_screen_text
.global game_mode_overworld_main
.global game_mode_overworld_load_tile_maps
.global startup_init_begin_game

; bank 1 exports
.global bank1_Transform_completed_palaces_into_stone

; bank 3 exports
.global bank3_B082
.global bank3_Door_Destinations_in_Towns
.global bank3_Build_a_pointer_with_86_and_a_value_from_C643
.global bank3_Small_Objects_Construction_Routine
.global bank3_Object_Construction_Routine
.global bank3_Townfolks_Tile_Mappings_unknown0

; bank 4 exports
.global bank4_Palettes
.global bank4_Palettes_for_Palaces1
.global bank4_Palettes_for_Palaces2
.global bank4_Palettes_for_Palaces3
.global bank4_Palettes_for_Palaces4
.global bank4_Palettes_for_Palaces5
.global bank4_Palettes_for_Palaces6
.global bank4_Palaces_Type_A_B_Palettes
.global bank4_Unknown_Palettes
.global bank4_Build_a_pointer_with_81_and_a_value_from_10165
.global bank4_9A46

; bank 5 exports
.global bank5_8B69
.global bank5_code4
.global bank5_routines_related_to_Ending_sequence
.global bank5_9764
.global bank5_PowerON__Reset_Memory
.global bank5_title_NMI_entry_point
.global bank5_B9CA
.global bank5_Build_a_pointer_with_81_and_a_value_from_14177
.global bank5_Object_Construction_Routine
.global bank5_Small_Objects_Construction_Routine

; bank 6 exports
.global bank6_Title_Music_Tick
.global bank6_Game_Music_Tick

; bank 7 exports
.global bank7_Change_Enemy_Facing_Direction_and_X_Velocity ; banks 1 2 3 4 5
.global bank7_Check_for_Hidden_Palace_spot_Bank_1 ; banks 0
.global bank7_Controllers_Input ; banks 5
.global bank7_Desert_Rocks_initialization_routine ; banks 1 2 5
.global bank7_Determine_Enemy_Facing_Direction_relative_to_Link ; banks 1 2 3 4 5
.global bank7_Display ; banks 1 2 3 4 5
.global bank7_Enemy_Routines1_Ache_and_Acheman ; banks 1 2 3 5
.global bank7_Enemy_Routines1_Bago_Bago0 ; banks 1 2 4 5
.global bank7_Enemy_Routines1_Bago_Bago1 ; banks 1 2 4 5
.global bank7_Enemy_Routines1_Bago_Bago_Generator ; banks 1 2 4 5
.global bank7_Enemy_Routines1_Bit ; banks 1 2 3
.global bank7_Enemy_Routines1_Bot ; banks 1 2 3 4 5
.global bank7_Enemy_Routines1_Deeler ; banks 1 2 5
.global bank7_Enemy_Routines1_Elevator ; banks 1 2 4 5
.global bank7_Enemy_Routines1_Fairy ; banks 1 2 3 4 5
.global bank7_Enemy_Routines1_Locked_Door ; banks 1 2 3 4 5
.global bank7_Enemy_Routines1_Moa ; banks 1 2 3 5
.global bank7_Enemy_Routines1_Myu ; banks 1 2 4 5
.global bank7_Enemy_Routines1_Octorok ; banks 1 2 4 5
.global bank7_Enemy_Routines1_Raising_Bubbles ; banks 1 2 5
.global bank7_Enemy_Routines1_Red_Jar ; banks 1 2 3 4 5
.global bank7_Enemy_Routines2_Ache_and_Acheman ; banks 1 2 3 5
.global bank7_Enemy_Routines2_BagoBago ; banks 1 2 4 5
.global bank7_Enemy_Routines2_Bot_and_Bit ; banks 1 2 3 4 5
.global bank7_Enemy_Routines2_Deeler ; banks 1 2 5
.global bank7_Enemy_Routines2_Elevator ; banks 1 2 4 5
.global bank7_Enemy_Routines2_Fairy ; banks 1 2 3 4 5
.global bank7_Enemy_Routines2_LockedDoor ; banks 1 2 3 4 5
.global bank7_Enemy_Routines2_Moa ; banks 1 2 3 4 5
.global bank7_Enemy_Routines2_Myu ; banks 1 2 4 5
.global bank7_Enemy_Routines2_Octorok ; banks 1 2 4
.global bank7_Enemy_Routines2_RedJar ; banks 1 2 3 4 5
.global bank7_Enemy_Routines2_unknown ; banks 1 2 4 5
.global bank7_Enemy_Stops_when_Hit ; banks 1 2 4 5
.global bank7_Erase_Name_Tables_0and1__set_scroll_to_0_0 ; banks 0 5
.global bank7_Floor_Y_Position ; banks 1 2 4 5
.global bank7_Gravity ; banks 1 2 4 5
.global bank7_Link_Collision_Detection ; banks 1 2 4 5
.global bank7_Link_Hit_Routine ; banks 1 4 5
.global bank7_Links_Display_Routine ; banks 0
.global bank7_Mute_music_when_loading_between_areas ; banks 0
.global bank7_NMI_Entry_Point ; used in duplicated end of banks
.global bank7_Overworld_Boundaries__Mountain_or_Water_Bank_1 ; banks 0
.global bank7_PowerON_code ; used in duplicated end of banks
.global bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP ; banks 0 1 2 3 4 5
.global bank7_Remove_All_Sprites ; banks 0 5
.global bank7_Remove_All_Sprites_except_Sprite0 ; banks 5
.global bank7_Reset_Memory_Ranges ; banks 5
.global bank7_Set_0E_0F_pointer_according_to_Object_Group ; banks 3
.global bank7_Set_Memory_300_4FF_and_00_DF_to_Zero ; banks 5
.global bank7_Set_RAM_Address_for_Object0E0F ; banks 1 2 3 4 5
.global bank7_Set_Ram_Addy_for_Object__0E_0F ; banks 1 2
.global bank7_Set_tile_and_go_down_1_row_in_2x2_tiles_units ; banks 3
.global bank7_Set_tile_and_move_right_1_column ; banks 1 2 3 4 5
.global bank7_Simple_Horizontal_Movement ; banks 1 2 3 4 5
.global bank7_Simple_Vertical_Movement ; banks 1 2 4 5
.global bank7_Spawn_New_Projectile ; banks 1 2 4 5
.global bank7_Sword_Hit_Detection_maybe__probably_part_of_it_at_least ; banks 2 4 5
.global bank7_Turn_Palaces_into_Stone_Bank_1 ; banks 0
.global bank7_XY_Movements_Routine ; banks 0
.global bank7_applyGravityMotion ; banks 0
.global bank7_code2 ; banks 0
.global bank7_code33 ; banks 0
.global bank7_code34 ; banks 0
.global bank7_code37 ; banks 5
.global bank7_code39 ; banks 1 2
.global bank7_code43 ; banks 1 5
.global bank7_code44 ; banks 1 5
.global bank7_code45 ; banks 5
.global bank7_code49 ; banks 5
.global bank7_code51 ; banks 0 2 4 5
.global bank7_code55 ; banks 0
.global bank7_forest_chop_with_hammer ; banks 1 2
.global bank7_idem__maybe ; banks 1 4 5
.global bank7_remove_enemy_or_item ; banks 4
.global bank7_LD2EC ; banks 0 5
.global bank7_irq ; used in duplicated end of banks
.global Set_Item_RAM_bit_to_0__Bits_0_3 ; banks 4
.global bank7_Title_Music_Tick ; banks 5
.global LCB18_fill_hp_or_mp_to_full__provide_x_register__maybe ; banks 0
.global bank7_C24F ; banks 0
.global bank7_DFDB ; banks 0
.global bank7_DF01 ; banks 0 1 2
.global bank7_DF3F ; banks 0
.global bank7_E024 ; banks 0
.global bank7_DFD2 ; banks 0
.global bank7_DFD1 ; banks 0
.global bank7_E001 ; banks 0
.global game_mode_reset_726_and_overworld_main ; banks 0 5
.global bank7_DF56 ; banks 0 1 2 3 4 5
.global bank7_EC02 ; banks 0 5
.global bank7_C2A6 ; banks 0 4 5
.global bank7_E726 ; banks 0 4 5
.global bank7_set_game_mode_to_A_and_clear_enemies ; banks 0
.global bank7_D55E ; banks 0
.global bank7_D20A ; banks 0
.global bank7_DAC7 ; banks 1 4 5
.global bank7_DD3D ; banks 1 2 3 4 5
.global bank7_DE3D ; banks 1 4 5
.global bank7_DE40 ; banks 1 2 4 5
.global bank7_DECE ; banks 1
.global bank7_DED4 ; banks 1 2 4 5
.global bank7_DF4C ; banks 1 2 3 4 5
.global bank7_E3B9 ; banks 1 2 4 5
.global bank7_E469 ; banks 1 4
.global bank7_E48A ; banks 1 2 4 5
.global bank7_E563 ; banks 1 2 4 5
.global bank7_E94C ; banks 1
.global bank7_F0CC ; banks 1 2 5
.global bank7_F0D7 ; banks 1 2 3 4 5
.global bank7_F1F4 ; banks 1 2 3 4 5
.global bank7_DE6C ; banks 2 3 4 5
.global bank7_E48B ; banks 2 4 5
.global bank7_E4D9 ; banks 2 3 4 5
.global bank7_E617 ; banks 2 4 5
.global bank7_EA1C ; banks 2 4 5
.global bank7_EA32 ; banks 2 3 4 5
.global bank7_C258 ; banks 3
.global bank7_D000 ; banks 3
.global bank7_DF58 ; banks 3
.global bank7_E579 ; banks 4
.global bank7_E942 ; banks 4 5
.global bank7_EA14 ; banks 4
.global bank7_F0C6 ; banks 4 5
.global bank7_C722 ; banks 5
.global bank7_CF05 ; banks 5
.global bank7_D168 ; banks 5
.global bank7_start_event_if_changed ; banks 5
.global bank7_D293 ; banks 5
.global bank7_E5B2 ; banks 5
.global bank7_EA18 ; banks 5
.global bank7_EF08 ; banks 5
.global bank7_F2D3 ; banks 5
.global bank7_FCA5 ; banks 5

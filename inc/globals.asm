; globals in system RAM
.global rng_base
.global rng_out
.global rng_alt
.global rng_tail
.global area_code
.global town_code
.global palace_code
.global lives_remaining
.global region_number
.global world_number
.global game_mode
.global PRG_bank
.global player_magic
.global player_life
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
.global bss_0600
.global bss_0620
.global bss_0640
.global bss_0660
.global bss_0680
.global bss_06A0
.global bss_06C0
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
.global bss_0725
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
.global bss_0755
.global bss_0756
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
.global bss_076C
.global bss_076D
.global bss_076E
.global bss_076F
.global bss_0770
.global bss_0771
.global bss_0772
.global bss_0797
.global bss_0798
.global bss_079A
.global bss_079C
.global bss_079D
.global bss_079F
.global bss_07A0
.global bss_07A1
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
.global bank0_unknown2
.global bank0_unknown27
.global bank0_unknown28
.global bank0_unknown37
.global bank0_unknown39
.global bank0_unknown4
.global bank0_unknown12
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
.global bank0_A82A
.global bank0_99E6
.global Chandeliers_in_North_Castle
.global Check_for_Fire_Spell
.global Hub_Update_Routine
.global Initialization_stuff
.global LevelUp_Pane__BlankLine_SecondHalfOnly
.global Side_View_Initialization_when_entering_a_Key_Area
.global Some_Palettes_Data_related_to_Falling_Animation
.global Spell_Casting_Routine
.global Tables_for_Game_Over_screen_text
.global overworld3
.global overworld4
.global startup_init_begin_game

; bank 1 exports
.global bank1_Transform_completed_palaces_into_stone
.global bank1_Check_for_Hidden_Palace_spot

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
.global bank5_A610
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
.global bank7_NMI_Entry_Point ; banks
.global bank7_Overworld_Boundaries__Mountain_or_Water_Bank_1 ; banks 0
.global bank7_PowerON_code ; banks
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
.global bank7_irq ; banks
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
.global bank7_C72D ; banks 0 5
.global bank7_DF56 ; banks 0 1 2 3 4 5
.global bank7_EC02 ; banks 0 5
.global bank7_C2A6 ; banks 0 4 5
.global bank7_E726 ; banks 0 4 5
.global bank7_E187 ; banks 0
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
.global bank7_D174 ; banks 5
.global bank7_D293 ; banks 5
.global bank7_E5B2 ; banks 5
.global bank7_EA18 ; banks 5
.global bank7_EF08 ; banks 5
.global bank7_F2D3 ; banks 5
.global bank7_FCA5 ; banks 5

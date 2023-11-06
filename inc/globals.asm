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
.global bss_0302
.global bss_0363
.global bss_03A4
.global bss_05C9
.global bss_0600
.global bss_0620
.global bss_0640
.global bss_0660
.global bss_0680
.global bss_06A0
.global bss_06C0
.global bss_07AD


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

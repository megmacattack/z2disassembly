; This data is identical between banks 1 and 2, and includes both shared
; code and tables that applies to both banks.
; Note that the file offsets in the comments will be off by 0x4000 for
; bank 2, so the file offset for this data in bank 2 starts at 0xA10C in
; bank 2.
setpos Sidescroll_Palettes
Palettes_for_Overworld:                                                 ;
;The first byte of 0x10 sets the background color                              ;
;FF = black                                                                    ;
.byt    $0F,$30,$12,$16,$0F,$36,$16,$07; 0x401e $800E 0F 30 12 16 0F 36 16 07  ;North Castle		1
.byt    $0F,$00,$10,$30,$0F,$23,$03,$0F; 0x4026 $8016 0F 00 10 30 0F 23 03 0F  ;
.byt    $0F,$30,$12,$16,$0F,$37,$27,$06; 0x402e $801E 0F 30 12 16 0F 37 27 06  ;Grotto			2
.byt    $0F,$27,$16,$0F,$0F,$30,$10,$00; 0x4036 $8026 0F 27 16 0F 0F 30 10 00  ;
.byt    $22,$30,$12,$16,$22,$29,$17,$09; 0x403e $802E 22 30 12 16 22 29 17 09  ;Desert			3
.byt    $22,$30,$36,$27,$22,$30,$10,$00; 0x4046 $8036 22 30 36 27 22 30 10 00  ;
.byt    $21,$30,$12,$16,$21,$30,$00,$0F; 0x404e $803E 21 30 12 16 21 30 00 0F  ;Grass			4
.byt    $21,$29,$19,$09,$21,$30,$10,$00; 0x4056 $8046 21 29 19 09 21 30 10 00  ;
.byt    $0F,$30,$12,$16,$0F,$17,$07,$08; 0x405e $804E 0F 30 12 16 0F 17 07 08  ;Forest			5
.byt    $0F,$29,$19,$09,$0F,$30,$10,$00; 0x4066 $8056 0F 29 19 09 0F 30 10 00  ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x406e $805E 21 30 12 16 21 37 18 0F  ;Swamp			6
.byt    $21,$29,$1C,$0C,$21,$30,$10,$00; 0x4076 $8066 21 29 1C 0C 21 30 10 00  ;
.byt    $03,$30,$12,$16,$03,$19,$09,$0F; 0x407e $806E 03 30 12 16 03 19 09 0F  ;Graveyard		7
.byt    $03,$27,$16,$0F,$03,$30,$00,$0F; 0x4086 $8076 03 27 16 0F 03 30 00 0F  ;
Palettes_for_Overworld_Bridge:                                          ;
.byt    $21,$30,$12,$16,$21,$37,$18,$0F; 0x408e $807E 21 30 12 16 21 37 18 0F  ;Bridge			8
.byt    $21,$30,$11,$01,$21,$30,$10,$00; 0x4096 $8086 21 30 11 01 21 30 10 00  ;
.byt    $0F,$30,$12,$16,$0F,$12,$01,$0F; 0x409e $808E 0F 30 12 16 0F 12 01 0F  ;Grotto without Candle	9
.byt    $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F; 0x40a6 $8096 0F 0F 0F 0F 0F 0F 0F 0F  ;
Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava:            ;
.byt    $FF,$18,$36,$2A                ; 0x40ae $809E FF 18 36 2A              ;
Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava_Orange_Enemies: ;
.byt    $FF,$16,$27,$30                ; 0x40b2 $80A2 FF 16 27 30              ;
Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava_Red_Enemies: ;
.byt    $FF,$0F,$16,$30                ; 0x40b6 $80A6 FF 0F 16 30              ;
Palettes_for_Sprites_in_Grass__Desert__Swamp__Graveyard__Lava_Blue_Enemies: ;
.byt    $FF,$0F,$2C,$30                ; 0x40ba $80AA FF 0F 2C 30              ;
Palettes_for_Sprites_in_Forest__Palette_for_Link:                         ;
.byt    $FF,$18,$36,$2A                ; 0x40be $80AE FF 18 36 2A              ;
Palettes_for_Sprites_in_Forest__Palette_for_Orange_Enemies:               ;
.byt    $FF,$16,$27,$30                ; 0x40c2 $80B2 FF 16 27 30              ;
Palettes_for_Sprites_in_Forest__Palette_for_Red_Enemies:                  ;
.byt    $FF,$07,$16,$30                ; 0x40c6 $80B6 FF 07 16 30              ;
Palettes_for_Sprites_in_Forest__Palette_for_Blue_Enemies:                 ;
.byt    $FF,$0C,$2C,$30                ; 0x40ca $80BA FF 0C 2C 30              ;
unknown_palettes_maybe0:                                                  ;
.byt    $FF,$18,$36,$2A                ; 0x40ce $80BE FF 18 36 2A              ;
unknown_palettes_maybe1:                                                  ;
.byt    $FF,$16,$27,$30                ; 0x40d2 $80C2 FF 16 27 30              ;
unknown_palettes_maybe2:                                                  ;
.byt    $FF,$0F,$1C                    ; 0x40d6 $80C6 FF 0F 1C                 ;
L80C9:                                                                          ;
.byt    $2C                            ; 0x40d9 $80C9 2C                       ;
unknown_palettes_maybe3:                                                  ;
.byt    $FF,$0F,$15,$25                ; 0x40da $80CA FF 0F 15 25              ;
unknown_palettes_maybe4:                                                  ;
.byt    $FF,$18,$36,$2A                ; 0x40de $80CE FF 18 36 2A              ;
unknown_palettes_maybe5:                                                  ;
.byt    $FF,$16,$27,$30                ; 0x40e2 $80D2 FF 16 27 30              ;
unknown_palettes_maybe6:                                                  ;
.byt    $FF,$0F,$2A,$30                ; 0x40e6 $80D6 FF 0F 2A 30              ;
unknown_palettes_maybe7:                                                  ;
.byt    $FF,$0F,$16,$26                ; 0x40ea $80DA FF 0F 16 26              ;
Grotto_without_Candle__Sprites_and_Background0:                           ;
.byt    $FF,$01,$21,$11                ; 0x40ee $80DE FF 01 21 11              ;
Grotto_without_Candle__Sprites_and_Background1:                           ;
.byt    $FF,$16,$27                    ; 0x40f2 $80E2 FF 16 27                 ;
L80E5:                                                                          ;
.byt    $30                            ; 0x40f5 $80E5 30                       ;
Grotto_without_Candle__Sprites_and_Background2:                           ;
.byt    $FF,$0F,$0F,$0F                ; 0x40f6 $80E6 FF 0F 0F 0F              ;
Grotto_without_Candle__Sprites_and_Background3:                           ;
.byt    $FF,$0F,$0F,$0F                ; 0x40fa $80EA FF 0F 0F 0F              ;
; ---------------------------------------------------------------------------- ;
setpos Object_Construction_Addresses
Object_Construction_Routine:                                                                    ;
    TXA                                ; 0x40fe $80EE 8A                       ;
    LSR                                ; 0x40ff $80EF 4A                       ;
    LSR                                ; 0x4100 $80F0 4A                       ;
    LSR                                ; 0x4101 $80F1 4A                       ;
    LSR                                ; 0x4102 $80F2 4A                       ;
    TAX                                ; 0x4103 $80F3 AA                       ;
    DEX                                ; 0x4104 $80F4 CA                       ;
    LDA      bss_0730                     ; 0x4105 $80F5 AD 30 07                 ; Position of Object Placement
    AND      #$F0                      ; 0x4108 $80F8 29 F0                    ; keep bits xxxx ....
    CMP      #$F0                      ; 0x410a $80FA C9 F0                    ;
    BNE      L8103                     ; 0x410c $80FC D0 05                    ;
    TXA                                ; 0x410e $80FE 8A                       ;
    CLC                                ; 0x410f $80FF 18                       ;
    ADC      #$0F                      ; 0x4110 $8100 69 0F                    ;
    TAX                                ; 0x4112 $8102 AA                       ;
L8103:                                                                          ;
    TXA                                ; 0x4113 $8103 8A                       ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x4114 $8104 20 85 D3;
Pointer_table_for_Objects_Construction_Routines:                          ;
.word    Used_for_Palisade_Pass  ; 0x8117 $8107 8F 93                    ;
.word    Objects_Construction_Object_2high_Xwide; 0x8119 $8109 F3 81     ;
.word    Objects_Construction_Object_2high_Xwide; 0x811b $810B F3 81     ;
.word    Objects_Construction_Object_2high_Xwide; 0x811d $810D F3 81     ;
.word    Objects_Construction_Object_1high_Xwide; 0x811f $810F 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x8121 $8111 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x8123 $8113 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x8125 $8115 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x8127 $8117 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x8129 $8119 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x812b $811B 01 82     ;
.word    Objects_Construction_Object_1high_Xwide; 0x812d $811D 01 82     ;
.word    Objects_Construction_Object_Xhigh_1wide_SingleTileType; 0x812f $811F 17 82;
.word    Objects_Construction_Object_Xhigh_1wide; 0x8131 $8121 1D 82     ;
.word    Objects_Construction_Object_Xhigh_1wide; 0x8133 $8123 1D 82     ;
.word    Objects_Construction_Object_Xhigh_1wide; 0x8135 $8125 1D 82     ;
Special_Objects__Y_Position_F:                                            ;
.word    Objects_Construction_Object_LavaPit; 0x8137 $8127 8A 82         ;
.word    Objects_Construction_Object_Cactus; 0x8139 $8129 65 82          ;
.word    Objects_Construction_Object_Cactus_with_Stem; 0x813b $812B D5 82;
.word    Objects_Construction_Object_Elevator; 0x813d $812D BA 82        ;
; ---------------------------------------------------------------------------- ;
setpos Small_Objects_Construction_Address
Small_Objects_Construction_Object:                                                                    ;
    TXA                                ; 0x813f $812F 8A                       ;
    JSR      bank7_PullAddrFromTableFollowingThisJSR_withIndexOfA_then_JMP; 0x8140 $8130 20 85 D3;
Pointer_table_for_Small_Objects_Construction_Routines:                    ;
.word    Small_Objects_Construction_Gravestone; 0x8143 $8133 F9 82       ;
.word    Small_Objects_Construction_Cross; 0x8145 $8135 EE 82            ;
.word    Small_Objects_Construction_SlantedCross; 0x8147 $8137 F2 82     ;
.word    Small_Objects_Construction_TreeStump; 0x8149 $8139 C8 82        ;
.word    Small_Objects_Construction_Dolmen; 0x814b $813B 13 83           ;
.word    Small_Objects_Construction_LockedDoor_Ypos8; 0x814d $813D C1 82 ;
L8140     = * + $0001                                                          ;
.word    Small_Objects_Construction_Zelda; 0x814f $813F 40 83            ;
.word    Small_Objects_Construction_Zelda; 0x8151 $8141 40 83            ;
.word    Small_Objects_Construction_PitExtendingToGround; 0x8153 $8143 31 83;
.word    Small_Objects_Construction_LongCloud; 0x8155 $8145 52 83        ;
.word    Small_Objects_Construction_ShortCloud; 0x8157 $8147 58 83       ;
L8149:                                                                          ;
.word    Small_Objects_Construction_ShortCloud; 0x8159 $8149 58 83       ;
.word    Small_Objects_Construction_ShortCloud; 0x815b $814B 58 83       ;
.word    Small_Objects_Construction_ShortCloud; 0x815d $814D 58 83       ;
.word    Small_Objects_Construction_ShortCloud; 0x815f $814F 58 83       ;
.word    Small_Objects_Construction_ShortCloud; 0x8161 $8151 58 83       ;
; ---------------------------------------------------------------------------- ;
Tables_for_Level_Layers_Data:                                             ;
.byt    $42,$42,$54,$52,$42,$42,$55,$53; 0x8163 $8153 42 42 54 52 42 42 55 53  ;
.byt    $53,$40,$40,$8D,$90,$40,$40,$8D; 0x816b $815B 53 40 40 8D 90 40 40 8D  ;
.byt    $8C,$90,$40,$40                ; 0x8173 $8163 8C 90 40 40              ;
L8167:                                                                          ;
.byt    $40,$80,$40,$40,$40,$89,$89,$40; 0x8177 $8167 40 80 40 40 40 89 89 40  ;
.byt    $40,$40,$87,$40,$40,$40,$91,$91; 0x817f $816F 40 40 87 40 40 40 91 91  ;
.byt    $40,$40,$40,$8A                ; 0x8187 $8177 40 40 40 8A              ;
L817B:                                                                          ;
.byt    $40,$40,$40,$8F,$8F,$51,$51,$54; 0x818b $817B 40 40 40 8F 8F 51 51 54  ;
.byt    $52,$51,$51,$55,$53,$53,$40,$40; 0x8193 $8183 52 51 51 55 53 53 40 40  ;
.byt    $40,$C9,$40,$40,$8B,$8B,$C9,$40; 0x819b $818B 40 C9 40 40 8B 8B C9 40  ;
.byt    $40,$54,$52,$40,$40,$55,$53,$53; 0x81a3 $8193 40 54 52 40 40 55 53 53  ;
Table_for_Level_Layers_Data_pointers:                                     ;
.byt    $53,$5C,$65,$6E,$77,$80,$89,$92; 0x81ab $819B 53 5C 65 6E 77 80 89 92  ;
; ---------------------------------------------------------------------------- ;
setpos Main_World_Build_Pointer_for_Layer_Tiles
Build_A_Pointer_With_81:                                                  ;
;Pointer created from 81 ($81AC?) and a value from this table                  ;
    LDX      bss_010C                     ; 0x81b3 $81A3 AE 0C 01                 ;; Area Palette Group (Type of Area)	; Area Ground Type (0-7)
    LDA      Table_for_Level_Layers_Data_pointers,x; 0x81b6 $81A6 BD 9B 81   ;
    STA      $0C                       ; 0x81b9 $81A9 85 0C                    ;
    LDA      #$81                      ; 0x81bb $81AB A9 81                    ; A = 81
    STA      $0D                       ; 0x81bd $81AD 85 0D                    ;
    LDY      #$08                      ; 0x81bf $81AF A0 08                    ; Y = 08
L81B1:                                                                          ;
    LDA      ($0C),y                   ; 0x81c1 $81B1 B1 0C                    ;
    STA      bss_010D                     ; 0x81c3 $81B3 8D 0D 01                 ;; Area Bottom Row Tile Code
    RTS                                ; 0x81c6 $81B6 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Tile_Codes_for_Objects_Set0_BackgroundSky:                                ;
;xx.. ....	Table selector, from pointer table at $8500                         ;
;..xx xxxx	Tile Code                                                           ;
.byt    $40                            ; 0x81c7 $81B7 40                       ;
L81B8:                                                                          ;
.byt    $40                            ; 0x81c8 $81B8 40                       ;
Tile_Codes_for_Objects_Set0_ForestLeaves_2high:                           ;
.byt    $8C,$8D,$8C,$8D                ; 0x81c9 $81B9 8C 8D 8C 8D              ;
Tile_Codes_for_Objects_Set0_Curtains_2high:                               ;
.byt    $C0,$C1                        ; 0x81cd $81BD C0 C1                    ;
Tile_Codes_for_Objects_Set0_ForestLeaves_1high:                           ;
.byt    $8D,$8E                        ; 0x81cf $81BF 8D 8E                    ;
Tile_Codes_for_Objects_Set0_BreakableBlocks_1high_invisible:              ;
.byt    $61,$61                        ; 0x81d1 $81C1 61 61                    ;
Tile_Codes_for_Objects_Set0_HorizontalPit_1high:                          ;
.byt    $40,$40                        ; 0x81d3 $81C3 40 40                    ;
Tile_Codes_for_Objects_Set0_SingleWeed_1high:                             ;
.byt    $81,$81                        ; 0x81d5 $81C5 81 81                    ;
Tile_Codes_for_Objects_Set0_DoubleWeed_1high:                             ;
.byt    $82,$82                        ; 0x81d7 $81C7 82 82                    ;
Tile_Codes_for_Objects_Set0_NorthCastleCarpet_1high:                      ;
.byt    $50,$50                        ; 0x81d9 $81C9 50 50                    ;
Tile_Codes_for_Objects_Set0_NorthCastleBricks_1high:                      ;
.byt    $8B,$8B                        ; 0x81db $81CB 8B 8B                    ;
Tile_Codes_for_Objects_Set0_VolcanoBackground_1high:                      ;
.byt    $51,$51                        ; 0x81dd $81CD 51 51                    ;
Tile_Codes_for_Objects_Set0_BreakableBlocks_1wide_invisible:              ;
.byt    $61,$61                        ; 0x81df $81CF 61 61                    ;
Tile_Codes_for_Objects_Set0_BreakableBlocks_TreeTrunk_1wide:              ;
.byt    $4C,$4B                        ; 0x81e1 $81D1 4C 4B                    ;
Tile_Codes_for_Objects_Set0_BreakableBlocks_Column_1wide:                 ;
.byt    $86,$85                        ; 0x81e3 $81D3 86 85                    ;
Tile_Codes_for_Objects_Set1_BackgroundSky:                                ;
.byt    $40                            ; 0x81e5 $81D5 40                       ;
L81D6:                                                                          ;
.byt    $40                            ; 0x81e6 $81D6 40                       ;
Tile_Codes_for_Objects_Set1_WideRockFloor_2high:                          ;
.byt    $52,$53                        ; 0x81e7 $81D7 52 53                    ;
Tile_Codes_for_Objects_Set1_WideRockCeiling_2high:                        ;
.byt    $53,$55                        ; 0x81e9 $81D9 53 55                    ;
Tile_Codes_for_Objects_Set1_Bridge_2high:                                 ;
.byt    $4D,$5D                        ; 0x81eb $81DB 4D 5D                    ;
Tile_Codes_for_Objects_Set1_RockPlatform_1high:                           ;
.byt    $54,$54                        ; 0x81ed $81DD 54 54                    ;
Tile_Codes_for_Objects_Set1_BreakableBlocks_1high_invisible:              ;
.byt    $61,$61                        ; 0x81ef $81DF 61 61                    ;
Tile_Codes_for_Objects_Set1_BreakingBridge_1high:                         ;
.byt    $60,$60                        ; 0x81f1 $81E1 60 60                    ;
Tile_Codes_for_Objects_Set1_SingleWeed_1high:                             ;
.byt    $81,$81                        ; 0x81f3 $81E3 81 81                    ;
Tile_Codes_for_Objects_Set1_DoubleWeed_1high:                             ;
.byt    $82,$82                        ; 0x81f5 $81E5 82 82                    ;
Tile_Codes_for_Objects_Set1_HorizontalPit_1high:                          ;
.byt    $40,$40                        ; 0x81f7 $81E7 40 40                    ;
Tile_Codes_for_Objects_Set1_NorthCastleBricks_1high:                      ;
.byt    $8B,$8B                        ; 0x81f9 $81E9 8B 8B                    ;
Tile_Codes_for_Objects_Set1_VolcanoBackground_1high:                      ;
.byt    $51,$51                        ; 0x81fb $81EB 51 51                    ;
Tile_Codes_for_Objects_Set1_BreakingBlocks_1wide:                         ;
.byt    $61,$61                        ; 0x81fd $81ED 61 61                    ;
Tile_Codes_for_Objects_Set1_RockFloor_1wide:                              ;
.byt    $52,$53                        ; 0x81ff $81EF 52 53                    ;
Tile_Codes_for_Objects_Set1_VerticalDolmen_1wide:                         ;
.byt    $59,$5A                        ; 0x8201 $81F1 59 5A                    ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_2high_Xwide:                                  ;
    JSR      Objects_Construction_Object_1high_Xwide; 0x8203 $81F3 20 01 82  ;
    LDA      L0000                     ; 0x8206 $81F6 A5 00                    ;
    STA      bss_0112                     ; 0x8208 $81F8 8D 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_DF4C                     ; 0x820b $81FB 20 4C DF                 ;
    JMP      L8204                     ; 0x820e $81FE 4C 04 82                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_1high_Xwide:                                  ;
    JSR      L8247                     ; 0x8211 $8201 20 47 82                 ;
L8204:                                                                          ;
    LDA      bss_0731                     ; 0x8214 $8204 AD 31 07                 ;; Level Object Type and Size
L8207:                                                                          ;
    AND      #$0F                      ; 0x8217 $8207 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x8219 $8209 AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x821a $820A 20 44 C9           ;
L820D:                                                                          ;
    LDA      bss_0112                     ; 0x821d $820D AD 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_Set_tile_and_move_right_1_column; 0x8220 $8210 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0x8223 $8213 CA                       ;
    BPL      L820D                     ; 0x8224 $8214 10 F7                    ;
    RTS                                ; 0x8226 $8216 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_Xhigh_1wide_SingleTileType:                   ;
    JSR      L8247                     ; 0x8227 $8217 20 47 82                 ;
    JMP      L8234                     ; 0x822a $821A 4C 34 82                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_Xhigh_1wide:                                  ;
    JSR      L8247                     ; 0x822d $821D 20 47 82                 ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x8230 $8220 20 44 C9           ;
    LDA      bss_0112                     ; 0x8233 $8223 AD 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_DF56                     ; 0x8236 $8226 20 56 DF                 ;
    STA      bss_0730                     ; 0x8239 $8229 8D 30 07                 ;; Position of Object Placement
    DEC      bss_0731                     ; 0x823c $822C CE 31 07                 ;; Level Object Type and Size
    LDA      L0000                     ; 0x823f $822F A5 00                    ;
    STA      bss_0112                     ; 0x8241 $8231 8D 12 01                 ;; Tile Code 0 for Object
L8234:                                                                          ;
    LDA      bss_0731                     ; 0x8244 $8234 AD 31 07                 ;; Level Object Type and Size
    AND      #$0F                      ; 0x8247 $8237 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x8249 $8239 AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x824a $823A 20 44 C9           ;
L823D:                                                                          ;
    LDA      bss_0112                     ; 0x824d $823D AD 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_DF56                     ; 0x8250 $8240 20 56 DF                 ; Set tile and go down 1 row
    DEX                                ; 0x8253 $8243 CA                       ;
    BPL      L823D                     ; 0x8254 $8244 10 F7                    ;
    RTS                                ; 0x8256 $8246 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8247:                                                                          ;
    TXA                                ; 0x8257 $8247 8A                       ;
    ASL                                ; 0x8258 $8248 0A                       ;
    TAX                                ; 0x8259 $8249 AA                       ;
    LDY      #$01                      ; 0x825a $824A A0 01                    ; Y = 01
    LDA      ($D4),y                   ; 0x825c $824C B1 D4                    ;
    ASL                                ; 0x825e $824E 0A                       ;
    LDA      Tile_Codes_for_Objects_Set1_BackgroundSky,x; 0x825f $824F BD D5 81; Table for Objects Set 1 Tile Codes
    BCS      L8257                     ; 0x8262 $8252 B0 03                    ;
    LDA      Tile_Codes_for_Objects_Set0_BackgroundSky,x; 0x8264 $8254 BD B7 81; Table for Objects Set 0 Tile Codes
L8257:                                                                          ;
    STA      bss_0112                     ; 0x8267 $8257 8D 12 01                 ;; Tile Code 0 for Object
    LDA      L81D6,x                   ; 0x826a $825A BD D6 81                 ;
    BCS      L8262                     ; 0x826d $825D B0 03                    ;
    LDA      L81B8,x                   ; 0x826f $825F BD B8 81                 ;
L8262:                                                                          ;
    STA      L0000                     ; 0x8272 $8262 85 00                    ;
    RTS                                ; 0x8274 $8264 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_Cactus:                                       ;
    JSR      bank7_Set_Ram_Addy_for_Object__0E_0F; 0x8275 $8265 20 47 C9           ;
    LDA      bss_0730                     ; 0x8278 $8268 AD 30 07                 ;; Position of Object Placement
    AND      #$0F                      ; 0x827b $826B 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0x827d $826D 09 90                    ; set  bits x..x .... (default Y position)
    STA      bss_0730                     ; 0x827f $826F 8D 30 07                 ;; Position of Object Placement
    TAY                                ; 0x8282 $8272 A8                       ;
    LDA      bss_0731                     ; 0x8283 $8273 AD 31 07                 ;; Level Object Type and Size
    AND      #$0F                      ; 0x8286 $8276 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x8288 $8278 AA                       ;
L8279:                                                                          ;
    LDA      #$47                      ; 0x8289 $8279 A9 47                    ; A = 47 (Cactus Base Tile Code)
    STA      (L000E),y                 ; 0x828b $827B 91 0E                    ;
    TYA                                ; 0x828d $827D 98                       ;
    SEC                                ; 0x828e $827E 38                       ;
    SBC      #$10                      ; 0x828f $827F E9 10                    ; Go up 1 row
    TAY                                ; 0x8291 $8281 A8                       ;
    DEX                                ; 0x8292 $8282 CA                       ;
    BNE      L8279                     ; 0x8293 $8283 D0 F4                    ; loop to $8279
    LDA      #$46                      ; 0x8295 $8285 A9 46                    ; A = 46 (Cactus Top Tile Code)
    STA      (L000E),y                 ; 0x8297 $8287 91 0E                    ;
    RTS                                ; 0x8299 $8289 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_LavaPit:                                      ;
    LDA      bss_0730                     ; 0x829a $828A AD 30 07                 ;; Position of Object Placement
    AND      #$0F                      ; 0x829d $828D 29 0F                    ; keep bits .... xxxx
    ORA      #$A0                      ; 0x829f $828F 09 A0                    ; set  bits x.x. ....
    STA      bss_0730                     ; 0x82a1 $8291 8D 30 07                 ;; Position of Object Placement
    LDA      #$80                      ; 0x82a4 $8294 A9 80                    ; A = 80 (Lava Surface Tile Code)
    STA      bss_0112                     ; 0x82a6 $8296 8D 12 01                 ;; Tile Code 0 for Object
L8299:                                                                          ;
    LDA      bss_0731                     ; 0x82a9 $8299 AD 31 07                 ;; Level Object Type and Size
    AND      #$0F                      ; 0x82ac $829C 29 0F                    ; keep bits .... xxxx
    TAX                                ; 0x82ae $829E AA                       ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x82af $829F 20 44 C9           ;
L82A2:                                                                          ;
    LDA      bss_0112                     ; 0x82b2 $82A2 AD 12 01                 ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0x82b5 $82A5 20 E7 DE         ; Set tile and move right 1 column
    DEX                                ; 0x82b8 $82A8 CA                       ;
    BPL      L82A2                     ; 0x82b9 $82A9 10 F7                    ; loop to $82A2
    LDA      #$89                      ; 0x82bb $82AB A9 89                    ; A = 89 (Lava Tile Code)
    STA      bss_0112                     ; 0x82bd $82AD 8D 12 01                 ;; Tile Code 0 for Object
    JSR      bank7_DF4C                     ; 0x82c0 $82B0 20 4C DF                 ; Go down 1 row
    AND      #$F0                      ; 0x82c3 $82B3 29 F0                    ; keep bits xxxx ....
    CMP      #$D0                      ; 0x82c5 $82B5 C9 D0                    ;
    BCC      L8299                     ; 0x82c7 $82B7 90 E0                    ;
    RTS                                ; 0x82c9 $82B9 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_Elevator:                                     ;
    LDA      bss_010A                     ; 0x82ca $82BA AD 0A 01                 ;
    STA      bss_0757                     ; 0x82cd $82BD 8D 57 07                 ;; Position of Elevator in Map
    RTS                                ; 0x82d0 $82C0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_LockedDoor_Ypos8:                              ;
    LDA      bss_010A                     ; 0x82d1 $82C1 AD 0A 01                 ;
    STA      bss_0758                     ; 0x82d4 $82C4 8D 58 07                 ;; Position of Locked Door in Map
    RTS                                ; 0x82d7 $82C7 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_TreeStump:                                     ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x82d8 $82C8 20 44 C9           ;
    LDA      #$5B                      ; 0x82db $82CB A9 5B                    ; A = 5B
    JSR      bank7_DF56                     ; 0x82dd $82CD 20 56 DF                 ; Set tile and go down 1 row
    LDA      #$5C                      ; 0x82e0 $82D0 A9 5C                    ; A = 5C
    STA      (L000E),y                 ; 0x82e2 $82D2 91 0E                    ;
    RTS                                ; 0x82e4 $82D4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Objects_Construction_Object_Cactus_with_Stem:                             ;
    JSR      bank7_Set_Ram_Addy_for_Object__0E_0F; 0x82e5 $82D5 20 47 C9           ;
    LDA      bss_0730                     ; 0x82e8 $82D8 AD 30 07                 ;; Position of Object Placement
    AND      #$0F                      ; 0x82eb $82DB 29 0F                    ; keep bits .... xxxx
    ORA      #$90                      ; 0x82ed $82DD 09 90                    ; set  bits x..x .... (default Y position)
    TAY                                ; 0x82ef $82DF A8                       ;
    LDA      #$49                      ; 0x82f0 $82E0 A9 49                    ; A = 49 (Cactus with Arm Bottom Tile Code)
    STA      (L000E),y                 ; 0x82f2 $82E2 91 0E                    ;
    TYA                                ; 0x82f4 $82E4 98                       ;
    SEC                                ; 0x82f5 $82E5 38                       ;
    SBC      #$10                      ; 0x82f6 $82E6 E9 10                    ; Go up 1 row
    TAY                                ; 0x82f8 $82E8 A8                       ;
    LDA      #$48                      ; 0x82f9 $82E9 A9 48                    ; A = 48 (Cactus with Arm Top Tile Code)
    STA      (L000E),y                 ; 0x82fb $82EB 91 0E                    ;
    RTS                                ; 0x82fd $82ED 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_Cross:                                         ;
    LDX      #$00                      ; 0x82fe $82EE A2 00                    ; X = 00
    BEQ      L82FB                     ; 0x8300 $82F0 F0 09                    ;
Small_Objects_Construction_SlantedCross:                                  ;
    LDX      #$01                      ; 0x8302 $82F2 A2 01                    ; X = 01
    BNE      L82FB                     ; 0x8304 $82F4 D0 05                    ;
Table_for_Cross__Slanted_Cross_and_Gravestone:                            ;
.byt    $C6,$C7,$C5                    ; 0x8306 $82F6 C6 C7 C5                 ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_Gravestone:                                    ;
    LDX      #$02                      ; 0x8309 $82F9 A2 02                    ; X = 02
L82FB:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x830b $82FB 20 44 C9           ;
    LDA      Table_for_Cross__Slanted_Cross_and_Gravestone,x; 0x830e $82FE BD F6 82;
    STA      (L000E),y                 ; 0x8311 $8301 91 0E                    ;
L8303:                                                                          ;
    RTS                                ; 0x8313 $8303 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Table_for_Dolmen_Tile_Codes_High:                                         ;
.byt    $56,$57,$57,$58,$FF            ; 0x8314 $8304 56 57 57 58 FF           ;
Table_for_Dolmen_Tile_Codes_Middle:                                       ;
.byt    $59,$40,$40,$59,$FF            ; 0x8319 $8309 59 40 40 59 FF           ;
Table_for_Dolmen_Tile_Codes_Low:                                          ;
.byt    $5A,$40,$40,$5A,$FF            ; 0x831e $830E 5A 40 40 5A FF           ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_Dolmen:                                        ;
    LDX      #$00                      ; 0x8323 $8313 A2 00                    ; X = 00
L8315:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x8325 $8315 20 44 C9           ;
L8318:                                                                          ;
    LDA      Table_for_Dolmen_Tile_Codes_High,x; 0x8328 $8318 BD 04 83       ; refer to table at $8304
    CMP      #$FF                      ; 0x832b $831B C9 FF                    ;
    BEQ      L8326                     ; 0x832d $831D F0 07                    ;
    JSR      bank7_Set_tile_and_move_right_1_column; 0x832f $831F 20 E7 DE         ; Set tile and move right 1 column
    INX                                ; 0x8332 $8322 E8                       ;
    JMP      L8318                     ; 0x8333 $8323 4C 18 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L8326:                                                                          ;
    CPX      #$0E                      ; 0x8336 $8326 E0 0E                    ;
    BEQ      L8303                     ; 0x8338 $8328 F0 D9                    ;
    JSR      bank7_DF4C                     ; 0x833a $832A 20 4C DF                 ; Go down 1 row
    INX                                ; 0x833d $832D E8                       ;
    JMP      L8315                     ; 0x833e $832E 4C 15 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_PitExtendingToGround:                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x8341 $8331 20 44 C9           ;
L8334:                                                                          ;
    LDA      #$40                      ; 0x8344 $8334 A9 40                    ; A = 40 (Empty Tile)
    JSR      bank7_DF56                     ; 0x8346 $8336 20 56 DF                 ; Set tile and go down 1 row
    AND      #$F0                      ; 0x8349 $8339 29 F0                    ; keep bits xxxx ....
    CMP      #$D0                      ; 0x834b $833B C9 D0                    ; stop at bottom of screen
    BCC      L8334                     ; 0x834d $833D 90 F5                    ;
    RTS                                ; 0x834f $833F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_Zelda:                                         ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x8350 $8340 20 44 C9           ;
    LDX      #$01                      ; 0x8353 $8343 A2 01                    ; X = 01
    LDA      #$4E                      ; 0x8355 $8345 A9 4E                    ; A = 4E (Zelda's Head Tile Code)
    BNE      L834B                     ; 0x8357 $8347 D0 02                    ;
L8349:                                                                          ;
    LDA      #$4F                      ; 0x8359 $8349 A9 4F                    ; A = 4F (Zelda's Body Tile Code)
L834B:                                                                          ;
    STA      (L000E),y                 ; 0x835b $834B 91 0E                    ;
    INY                                ; 0x835d $834D C8                       ;
    DEX                                ; 0x835e $834E CA                       ;
    BPL      L8349                     ; 0x835f $834F 10 F8                    ;
    RTS                                ; 0x8361 $8351 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_LongCloud:                                     ;
    LDX      #$00                      ; 0x8362 $8352 A2 00                    ; X = 00
    BEQ      L835A                     ; 0x8364 $8354 F0 04                    ;
Table_for_Right_End_of_Clouds_Tile_Codes:                                 ;
;C3	Long Cloud                                                                 ;
;C4	Short Cloud                                                                ;
.byt    $C3,$C4                        ; 0x8366 $8356 C3 C4                    ;
; ---------------------------------------------------------------------------- ;
Small_Objects_Construction_ShortCloud:                                    ;
    LDX      #$01                      ; 0x8368 $8358 A2 01                    ; X = 01
L835A:                                                                          ;
    JSR      bank7_Set_RAM_Address_for_Object0E0F; 0x836a $835A 20 44 C9           ;
    LDA      #$C2                      ; 0x836d $835D A9 C2                    ; A = C2
    STA      (L000E),y                 ; 0x836f $835F 91 0E                    ;
    INY                                ; 0x8371 $8361 C8                       ;
    LDA      Table_for_Right_End_of_Clouds_Tile_Codes,x; 0x8372 $8362 BD 56 83;
    STA      (L000E),y                 ; 0x8375 $8365 91 0E                    ;
    RTS                                ; 0x8377 $8367 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
setpos Check_for_Hidden_Palace_Spot_Function
Check_for_Hidden_Palace_spot:                                             ;
    LDA      region_number                     ; 0x8378 $8368 AD 06 07                 ; Current Region
    CMP      #$02                      ; 0x837b $836B C9 02                    ; Region 02 = East Hyrule
    BNE      L838E                     ; 0x837d $836D D0 1F                    ; if NOT 02, return
    LDA      $73                       ; 0x837f $836F A5 73                    ; Y position on map
    CMP      #$64                      ; 0x8381 $8371 C9 64                    ; Y position of Hidden Palace call spot
    BNE      Check_for_Spider_in_OW; 0x8383 $8373 D0 12                    ;
    LDA      $74                       ; 0x8385 $8375 A5 74                    ; X position on map
    CMP      #$2D                      ; 0x8387 $8377 C9 2D                    ; X position of Hidden Palace call spot
    BNE      Check_for_Spider_in_OW; 0x8389 $8379 D0 0C                    ;
    LDA      #$0B                      ; 0x838b $837B A9 0B                    ; A = 0B
    STA      PPU_macro_select                     ; 0x838d $837D 8D 25 07                 ;; PPU Macro Selector
    INC      $01                       ; 0x8390 $8380 E6 01                    ; 2 tiles
    INC      $01                       ; 0x8392 $8382 E6 01                    ; south...
    JMP      bank7_forest_chop_with_hammer; 0x8394 $8384 4C 79 DF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Check_for_Spider_in_OW:                                                   ;
    LDA      bss_0563                     ; 0x8397 $8387 AD 63 05                 ; Type of terrain Link is facing
    CMP      #$0F                      ; 0x839a $838A C9 0F                    ; Terrain Type F = Spider
    BEQ      L838F                     ; 0x839c $838C F0 01                    ;
L838E:                                                                          ;
    RTS                                ; 0x839e $838E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L838F:                                                                          ;
    JSR      code5               ; 0x839f $838F 20 A1 83                 ;
    JMP      bank7_forest_chop_with_hammer; 0x83a2 $8392 4C 79 DF                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
table0:                                                                   ;
.byt    $0A,$00,$00,$82,$6C,$6C,$00,$00; 0x83a5 $8395 0A 00 00 82 6C 6C 00 00  ;
.byt    $82,$6C,$6C,$FF                ; 0x83ad $839D 82 6C 6C FF              ;
; ---------------------------------------------------------------------------- ;
setpos Chop_Down_Tree_Function
code5:                                                                    ;
    JSR      bank7_DF01                     ; 0x83b1 $83A1 20 01 DF                 ;
    LDA      #$00                      ; 0x83b4 $83A4 A9 00                    ; A = 00
    STA      $7D                       ; 0x83b6 $83A6 85 7D                    ;;number of pixels to move? automove? on overworld, only partially, causes bug
    LDY      #$0B                      ; 0x83b8 $83A8 A0 0B                    ; Y = 0B
L83AA:                                                                          ;
    LDA      table0,y            ; 0x83ba $83AA B9 95 83                 ; refer to table at $8395
    STA      bss_0301,y                   ; 0x83bd $83AD 99 01 03                 ;
    DEY                                ; 0x83c0 $83B0 88                       ;
    BPL      L83AA                     ; 0x83c1 $83B1 10 F7                    ;
    LDA      $79                       ; 0x83c3 $83B3 A5 79                    ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      bss_0302                     ; 0x83c5 $83B5 8D 02 03                 ;; Used when writing text to screen
    STA      bss_0307                     ; 0x83c8 $83B8 8D 07 03                 ;; Text memory offset?
    LDA      $7A                       ; 0x83cb $83BB A5 7A                    ;;are used to draw the Overworld tiles? offset in the Name Table(s) for Overworld redrawing.
    STA      bss_0303                     ; 0x83cd $83BD 8D 03 03                 ;; Letter position when writing to screen
    CLC                                ; 0x83d0 $83C0 18                       ;
    ADC      #$01                      ; 0x83d1 $83C1 69 01                    ;
    STA      bss_0308                     ; 0x83d3 $83C3 8D 08 03                 ;
    LDA      $76                       ; 0x83d6 $83C6 A5 76                    ; X position on map (Link)
    STA      L0000                     ; 0x83d8 $83C8 85 00                    ;
    LDA      $75                       ; 0x83da $83CA A5 75                    ; Y position on map (Link)
    STA      $01                       ; 0x83dc $83CC 85 01                    ;
    RTS                                ; 0x83de $83CE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
setpos Limit_Check_Function
overworld_limit_check_jmp_from_bank7:                                     ;
    LDA      L0000                     ; 0x43df $83CF A5 00                    ;
    CMP      #$40                      ; 0x43e1 $83D1 C9 40                    ; Check if at the extreme right of the map
    BCS      East_Boundary       ; 0x43e3 $83D3 B0 2F                    ; Overworld width here too (east boundary)
    LDA      $01                       ; 0x43e5 $83D5 A5 01                    ;
    SEC                                ; 0x43e7 $83D7 38                       ;
    SBC      #$1E                      ; 0x43e8 $83D8 E9 1E                    ; Y Units Offset in Overworld
    STA      $04                       ; 0x43ea $83DA 85 04                    ;
    CMP      #$4B                      ; 0x43ec $83DC C9 4B                    ; Overworld height (south boundary)
    BCS      East_Boundary       ; 0x43ee $83DE B0 24                    ; (not visually)
    JSR      limit_check_unknown               ; 0x43f0 $83E0 20 AC 93                 ;
    INC      L0000                     ; 0x43f3 $83E3 E6 00                    ;
    LDA      #$00                      ; 0x43f5 $83E5 A9 00                    ; A = 00
    STA      $03                       ; 0x43f7 $83E7 85 03                    ;
    LDX      #$03                      ; 0x43f9 $83E9 A2 03                    ; X = 03
L83EB:                                                                          ;
    LDA      (L000E),y                 ; 0x43fb $83EB B1 0E                    ;
    AND      #$0F                      ; 0x43fd $83ED 29 0F                    ; keep bits .... xxxx
    STA      $02                       ; 0x43ff $83EF 85 02                    ;
    LDA      (L000E),y                 ; 0x4401 $83F1 B1 0E                    ;
    LSR                                ; 0x4403 $83F3 4A                       ;
    LSR                                ; 0x4404 $83F4 4A                       ;
    LSR                                ; 0x4405 $83F5 4A                       ;
    LSR                                ; 0x4406 $83F6 4A                       ;
    SEC                                ; 0x4407 $83F7 38                       ;
    ADC      $03                       ; 0x4408 $83F8 65 03                    ;
    STA      $03                       ; 0x440a $83FA 85 03                    ;
    CMP      L0000                     ; 0x440c $83FC C5 00                    ;
    BCS      L8408                     ; 0x440e $83FE B0 08                    ;
    INY                                ; 0x4410 $8400 C8                       ;
    JMP      L83EB                     ; 0x4411 $8401 4C EB 83                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
East_Boundary:                                                            ;
    LDA      #$0C                      ; 0x4414 $8404 A9 0C                    ; A = 0C (Code for 1 Unit of Water)
    STA      $02                       ; 0x4416 $8406 85 02                    ;
L8408:                                                                          ;
    RTS                                ; 0x4418 $8408 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
setpos Random_Battle_Tables
Code_values_for_Random_Battle_Areas_Desert:                               ;
;North-West Hyrule / South-West Hyrule                                         ;
;xx.. ....	Enter Code (1 = Middle of Screen 1)                                 ;
;..xx xxxx	Area Code                                                           ;
;                                                                              ;
;04 - Desert                                                                   ;
;05 - Grass                                                                    ;
;06 - Forest                                                                   ;
;07 - Swamp                                                                    ;
;08 - Graveyard                                                                ;
;09 - Road                                                                     ;
;0A - Lava                                                                     ;
;                                                                              ;
;5D 5E -> 1D 1E                                                                ;
;62 63 -> 22 23                                                                ;
;67 68 -> 27 28                                                                ;
;6F 70 -> 2F 30                                                                ;
;74 75 -> 34 35                                                                ;
;79 7A -> 39 3A                                                                ;
;7B 7C -> 3B 3C                                                                ;
.byt    $5D,$5E                        ; 0x4419 $8409 5D 5E                    ;
Code_values_for_Random_Battle_Areas_Grass:                                ;
.byt    $62,$63                        ; 0x441b $840B 62 63                    ;
Code_values_for_Random_Battle_Areas_Forest:                               ;
.byt    $67,$68                        ; 0x441d $840D 67 68                    ;
Code_values_for_Random_Battle_Areas_Swamp:                                ;
.byt    $6F,$70                        ; 0x441f $840F 6F 70                    ;
Code_values_for_Random_Battle_Areas_Graveyard:                            ;
.byt    $74,$75                        ; 0x4421 $8411 74 75                    ;
Code_values_for_Random_Battle_Areas_Road:                                 ;
.byt    $79,$7A                        ; 0x4423 $8413 79 7A                    ;
Code_values_for_Random_Battle_Areas_Lava:                                 ;
.byt    $7B,$7C                        ; 0x4425 $8415 7B 7C                    ;
Table_0_1_for_Area_Objects_Tile_Mappings_Background:                      ;
.byt    $F4,$F4,$F4,$F4                ; 0x4427 $8417 F4 F4 F4 F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown0:                        ;
.byt    $F4,$F4,$F4,$F4                ; 0x442b $841B F4 F4 F4 F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Background_for_Grotto:           ;
.byt    $38,$39,$3A,$3B                ; 0x442f $841F 38 39 3A 3B              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown1:                        ;
.byt    $FD,$FD,$FD,$FD                ; 0x4433 $8423 FD FD FD FD              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown2:                        ;
.byt    $FF,$FF,$FF,$FF                ; 0x4437 $8427 FF FF FF FF              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown3:                        ;
.byt    $53,$53,$54,$54                ; 0x443b $842B 53 53 54 54              ;
Table_0_1_for_Area_Objects_Tile_Mappings_High_Cactus_Top:                 ;
.byt    $3C,$3D,$F4,$F4                ; 0x443f $842F 3C 3D F4 F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_High_Cactus_Stem:                ;
.byt    $3D,$3D,$F4,$F4                ; 0x4443 $8433 3D 3D F4 F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Small_Cactus_Top:                ;
.byt    $3C,$3D,$F4,$3E                ; 0x4447 $8437 3C 3D F4 3E              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Small_Cactus_Stem:               ;
.byt    $3D,$3D,$3F,$F4                ; 0x444b $843B 3D 3D 3F F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown4:                        ;
.byt    $6E,$6E,$6F,$6F                ; 0x444f $843F 6E 6E 6F 6F              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Tree_Trunk__Forest_Swamp:        ;
.byt    $44,$45,$46,$47                ; 0x4453 $8443 44 45 46 47              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Dead_Tree_Top__Swamp:            ;
.byt    $33,$45,$34,$47                ; 0x4457 $8447 33 45 34 47              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Bridge_Ropes:                    ;
.byt    $F4,$7C,$F4,$7C                ; 0x445b $844B F4 7C F4 7C              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Zelda_Head:                      ;
.byt    $28,$2C,$29,$2C                ; 0x445f $844F 28 2C 29 2C              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Zelda_Body:                      ;
.byt    $2A,$2C,$2B,$2C                ; 0x4463 $8453 2A 2C 2B 2C              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Red_Carpet__North_Castle:        ;
.byt    $7F,$FE,$7F,$FE                ; 0x4467 $8457 7F FE 7F FE              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Volcano_Background:              ;
.byt    $2C,$2D,$2E,$2F                ; 0x446b $845B 2C 2D 2E 2F              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Floor__Grotto_Desert:       ;
.byt    $A1,$9F,$A2,$A0                ; 0x446f $845F A1 9F A2 A0              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Wall__Grotto_Desert:        ;
.byt    $9D,$9E,$9F,$A0                ; 0x4473 $8463 9D 9E 9F A0              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Platform__Grotto_Desert:    ;
.byt    $A1,$A3,$A2,$A4                ; 0x4477 $8467 A1 A3 A2 A4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Rock_Ceiling__Grotto_Desert:     ;
.byt    $9D,$A3,$9E,$A4                ; 0x447b $846B 9D A3 9E A4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Horizontal_Dolmen_Left:          ;
.byt    $88                            ; 0x447f $846F 88                       ;
L8470:                                                                          ;
.byt    $89,$8A,$8B                    ; 0x4480 $8470 89 8A 8B                 ;
Table_0_1_for_Area_Objects_Tile_Mappings_Horizontal_Dolmen_Middle:        ;
.byt    $8A,$8B,$8A,$8B                ; 0x4483 $8473 8A 8B 8A 8B              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Horizontal_Dolmen_Right:         ;
.byt    $8A,$8B,$8C,$8D                ; 0x4487 $8477 8A 8B 8C 8D              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Vertical_Dolmen_Top:             ;
.byt    $A7,$A8,$A9,$AA                ; 0x448b $847B A7 A8 A9 AA              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Vertical_Dolmen_Body:            ;
.byt    $A8,$A8,$AA,$AA                ; 0x448f $847F A8 A8 AA AA              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Tree_Stump_Top:                  ;
.byt    $40,$40,$42,$42                ; 0x4493 $8483 40 40 42 42              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Tree_Stump_Base:                 ;
.byt    $40,$41,$42,$43                ; 0x4497 $8487 40 41 42 43              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Bridge_Base:                     ;
.byt    $7D,$F4,$7D,$F4                ; 0x449b $848B 7D F4 7D F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown5:                        ;
.byt    $87,$F4,$87,$F4                ; 0x449f $848F 87 F4 87 F4              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown6:                        ;
.byt    $87,$6D,$87,$6F                ; 0x44a3 $8493 87 6D 87 6F              ;
Table_0_1_for_Area_Objects_Tile_Mappings_Breaking_Bridge:                 ;
.byt    $92,$93,$92,$93                ; 0x44a7 $8497 92 93 92 93              ;
Table_0_1_for_Area_Objects_Tile_Mappings_unknown7:                        ;
.byt    $68,$69,$68,$69                ; 0x44ab $849B 68 69 68 69              ;
Table_2_for_Area_Objects_Tile_Mappings_Lava_Water_Surface:                ;
.byt    $98,$99,$98,$99                ; 0x44af $849F 98 99 98 99              ;
Table_2_for_Area_Objects_Tile_Mappings_Weed_Single:                       ;
.byt    $4E,$4F,$F4,$F4                ; 0x44b3 $84A3 4E 4F F4 F4              ;
Table_2_for_Area_Objects_Tile_Mappings_Weed_Double:                       ;
.byt    $4E,$4F,$4E,$4F                ; 0x44b7 $84A7 4E 4F 4E 4F              ;
Table_2_for_Area_Objects_Tile_Mappings_Grass_Area_Bushes_row9:            ;
.byt    $4C,$4D,$4C,$4D                ; 0x44bb $84AB 4C 4D 4C 4D              ;
Table_2_for_Area_Objects_Tile_Mappings_Forest_Area_Bushes_row9:           ;
.byt    $78,$79,$78,$79                ; 0x44bf $84AF 78 79 78 79              ;
Table_2_for_Area_Objects_Tile_Mappings_Column_Body_North_Castle:          ;
.byt    $A5,$A5,$A6,$A6                ; 0x44c3 $84B3 A5 A5 A6 A6              ;
Table_2_for_Area_Objects_Tile_Mappings_Column_Top_North_Castle:           ;
.byt    $8E,$8F,$90,$91                ; 0x44c7 $84B7 8E 8F 90 91              ;
Table_2_for_Area_Objects_Tile_Mappings_Swamp_Surface:                     ;
.byt    $98,$99,$98,$99,$98,$99,$98,$99; 0x44cb $84BB 98 99 98 99 98 99 98 99  ;
Table_2_for_Area_Objects_Tile_Mappings_Lava_Water:                        ;
.byt    $FE,$FE,$FE,$FE                ; 0x44d3 $84C3 FE FE FE FE              ;
Table_2_for_Area_Objects_Tile_Mappings_Desert_Surface:                    ;
.byt    $F4,$F4,$F4,$35                ; 0x44d7 $84C7 F4 F4 F4 35              ;
Table_2_for_Area_Objects_Tile_Mappings_White_Bricks_North_Castle:         ;
.byt    $9A,$9B,$9A,$9B                ; 0x44db $84CB 9A 9B 9A 9B              ;
Table_2_for_Area_Objects_Tile_Mappings_Leaves_of_Trees:                   ;
.byt    $50,$51,$52,$53                ; 0x44df $84CF 50 51 52 53              ;
Table_2_for_Area_Objects_Tile_Mappings_Hanging_Leaves_of_Trees:           ;
.byt    $50,$54,$52,$55                ; 0x44e3 $84D3 50 54 52 55              ;
Table_2_for_Area_Objects_Tile_Mappings_unknown0:                          ;
.byt    $7A                            ; 0x44e7 $84D7 7A                       ;
L84D8:                                                                          ;
.byt    $7F,$7C,$81                    ; 0x44e8 $84D8 7F 7C 81                 ;
Table_2_for_Area_Objects_Tile_Mappings_Ground_Desert_Grass:               ;
.byt    $36,$36,$37,$37                ; 0x44eb $84DB 36 36 37 37              ;
Table_2_for_Area_Objects_Tile_Mappings_Ground_Forest:                     ;
.byt    $48,$49,$4A,$4B                ; 0x44ef $84DF 48 49 4A 4B              ;
Table_2_for_Area_Objects_Tile_Mappings_Ground_Swamp:                      ;
.byt    $99,$99,$99,$99                ; 0x44f3 $84E3 99 99 99 99              ;
setpos Object_Tile_Mappings
bank1_Pointer_table_for_Objects_Tile_Mappings:                                  ;
.word    Table_0_1_for_Area_Objects_Tile_Mappings_Background; 0x4510 $8500 17 84;
.word    Table_0_1_for_Area_Objects_Tile_Mappings_Background; 0x4512 $8502 17 84;
.word    Table_2_for_Area_Objects_Tile_Mappings_Lava_Water_Surface; 0x4514 $8504 9F 84;
.word    Table_3_for_Area_Objects_Tile_Mappings; 0x4516 $8506 7D 93;
setpos Overworld_Map_Data_Pointers
Pointer_table_for_Overworld_Map_Data:                                           ;
.word    Hyrule_Overworld_Map_Data; 0x4518 $8508 5C 90              ;
.word    Death_Mountain_And_Maze_Overworld_Map_Data; 0x451a $850A 4C A6           ;
; ---------------------------------------------------------------------------- ;
setpos Sidescroll_Collision_Function
bank1_code7:                                                                    ;
    PHA                                ; 0x451c $850C 48                       ;
    AND      #$C0                      ; 0x451d $850D 29 C0                    ; keep bits xx.. ....
    CLC                                ; 0x451f $850F 18                       ;
    ROL                                ; 0x4520 $8510 2A                       ;
    ROL                                ; 0x4521 $8511 2A                       ;
    ROL                                ; 0x4522 $8512 2A                       ; A becomes .... ..xx
    TAY                                ; 0x4523 $8513 A8                       ;
    DEY                                ; 0x4524 $8514 88                       ;
    PLA                                ; 0x4525 $8515 68                       ;
    CMP      sidescroll_collision_unknown_table,y            ; 0x4526 $8516 D9 A9 93                 ; refer to table at $53A9
    RTS                                ; 0x4529 $8519 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table1:                                                                   ;
.byt    $00                            ; 0x452a $851A 00                       ;
L851B:                                                                          ;
.byt    $00                            ; 0x452b $851B 00                       ;
L851C:                                                                          ;
.byt    $00,$00                        ; 0x452c $851C 00 00                    ;
L851E:                                                                          ;
.byt    $61                            ; 0x452e $851E 61                       ;
L851F:                                                                          ;
.byt    $60                            ; 0x452f $851F 60                       ;
L8520:                                                                          ;
.byt    $80                            ; 0x4530 $8520 80                       ;
L8521:                                                                          ;
.byt    $87                            ; 0x4531 $8521 87                       ;
L8522:                                                                          ;
.byt    $91                            ; 0x4532 $8522 91                       ;
; ---------------------------------------------------------------------------- ;

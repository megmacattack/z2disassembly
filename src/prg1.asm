; DISASSEMBLY ORIGINALLY WROTE BY TRAX (99.9% of his work)
; * = $8000                                                                      ;
; da65 V2.18
; Created     2021-04-12 11 24 19                                              ;
; Input file  bank1_and_7.nes                                                  ;
; Page        1                                                                ;
                                                                               ;
                                                                               ;
;.setcpu  "6502"                                                               ;
                                                                               ;
; ---------------------------------------------------------------------------- ;

.include "mmc1.asm"
.include "nes.asm"
.include "globals.asm"
.include "variables.asm"
.include "macros.asm"

L7000 = $7000
L7002 = $7002
L7006 = $7006
L7012 = $7012
L701E = $701E
L7026 = $7026
L7034 = $7034
L703E = $703E
L7048 = $7048
L7050 = $7050
L7068 = $7068
L706C = $706C
L7072 = $7072
L7080 = $7080
L7088 = $7088
L7090 = $7090
L7096 = $7096
L70A2 = $70A2
L70B6 = $70B6
L70CC = $70CC
L70E0 = $70E0
L70F8 = $70F8
L7108 = $7108
L7126 = $7126
L7140 = $7140
L7158 = $7158
L7168 = $7168
L7176 = $7176
L717C = $717C
L7188 = $7188
L7194 = $7194
L71AC = $71AC
L71B3 = $71B3
L71C0 = $71C0
L71CF = $71CF
L71D5 = $71D5
L71D8 = $71D8
L71DA = $71DA
L71EB = $71EB
L71FA = $71FA
L7218 = $7218
L7223 = $7223
L7228 = $7228
L7237 = $7237
L7244 = $7244
L724D = $724D
L7256 = $7256
L725B = $725B
L7268 = $7268
L7273 = $7273
L7280 = $7280
L728D = $728D
L729C = $729C
L72AB = $72AB
L72BA = $72BA
L72C5 = $72C5
L72CA = $72CA
L72D9 = $72D9
L72E2 = $72E2
L72E5 = $72E5
L72EE = $72EE
L72F9 = $72F9
L7311 = $7311
L731C = $731C
L7325 = $7325
L732A = $732A
L7335 = $7335
L7342 = $7342
L734B = $734B
L734E = $734E
L7366 = $7366
L737E = $737E
L7C18 = $7C18
L7D76 = $7D76
L7DA6 = $7DA6
L7EEA = $7EEA

; These are symbols that are used within the shared areas of
; banks 1 and 2, but with slightly differing values.
Used_for_Palisade_Pass := $0000
limit_check_unknown := bank1_code8
sidescroll_collision_unknown_table := bank1_table2

.segment "PRG1"
.org $8000
; ---------------------------------------------------------------------------- ;
bank1_Pointer_table_for_Background_Areas_Data:                                  ;
.word    bank1_Background_Areas_Data   ; 0x4010 $8000 3C 8C                    ;
.word    L8C54                         ; 0x4012 $8002 54 8C                    ;
.word    L8C68                         ; 0x4014 $8004 68 8C                    ;
.word    L8C7C                         ; 0x4016 $8006 7C 8C                    ;
.word    L8C96                         ; 0x4018 $8008 96 8C                    ;
.word    L8CA8                         ; 0x401a $800A A8 8C                    ;
.word    $0000                         ; 0x401c $800C 00 00                    ;
; ---------------------------------------------------------------------------- ;
.include "shared/overworld_data.asm"
setpos Main_World_Area_Pointers
bank1_Area_Pointers_West_Hyrule:                                                ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4533 $8523 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x4535 $8525 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x4537 $8527 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4539 $8529 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x453b $852B 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_Bridge; 0x453d $852D 99 8D               ;
.word    bank1_Area_Data__West_Hyrule_Bubble_Path; 0x453f $852F 28 8F          ;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4541 $8531 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4543 $8533 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_1_and_2; 0x4545 $8535 A6 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_1_and_2; 0x4547 $8537 A6 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_3__with_Aches_and_Acheman_; 0x4549 $8539 9D 8F;
.word    bank1_Area_Data__West_Hyrule_Grotto_before_200_Exp_Bag__with_Megmats_and_Orange_Goriya_; 0x454b $853B EE 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_200_Exp_Bag__dead_end_; 0x454d $853D CA 8F;
.word    bank1_Area_Data__West_Hyrule_Bridge_over_Lava__before_Medicine_; 0x454f $853F D8 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Medicine__dead_end_; 0x4551 $8541 49 90;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4553 $8543 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Heart_Container__dead_end_; 0x4555 $8545 DD 8F;
.word    bank1_Area_Data__West_Hyrule_Tunnel_South_of_Kings_Tomb; 0x4557 $8547 6F 8F;
.word    bank1_Area_Data__West_Hyrule_Common_Grotto; 0x4559 $8549 78 8E        ;
.word    bank1_Area_Data__West_Hyrule_Forest_Area_with_no_trees; 0x455b $854B 3F 90;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x455d $854D 62 8E;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x455f $854F 62 8E;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x4561 $8551 62 8E;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4563 $8553 07 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4565 $8555 07 8D;
L8558     = * + $0001                                                          ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4567 $8557 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4569 $8559 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x456b $855B B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Desert__North_West_Hyrule_; 0x456d $855D EB 8C;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Desert__South_West_Hyrule_; 0x456f $855F 7F 87;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4571 $8561 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4573 $8563 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Trophy_; 0x4575 $8565 D0 8D  ;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4577 $8567 07 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x4579 $8569 07 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x457b $856B B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x457d $856D B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Grass_Area_with_Dolmens_and_Heart_Container; 0x457f $856F B5 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Forest__North_West_Hyrule_; 0x4581 $8571 21 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Forest__South_West_Hyrule_; 0x4583 $8573 1D 90;
.word    bank1_Area_Data__West_Hyrule_Forest_Area_with_no_trees; 0x4585 $8575 3F 90;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4587 $8577 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Aches_and_50_Exp_Bag_; 0x4589 $8579 F5 8D;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods; 0x458b $857B 62 8E;
.word    bank1_Area_Data__West_Hyrule_Grotto_with_Magic_Container__South_of_North_Castle_; 0x458d $857D F0 8F;
.word    bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Megmats_and_100_Exp_Bag_; 0x458f $857F 14 8E;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Swamp__North_West_and_South_West_Hyrule_; 0x4591 $8581 35 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Swamp__North_West_and_South_West_Hyrule_; 0x4593 $8583 35 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4595 $8585 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x4597 $8587 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Area_with_Rocky_Ground_and_Grass__Red_Jar_near_Palace_2_; 0x4599 $8589 33 8E;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Graveyard__North_West_and_South_West_Hyrule_; 0x459b $858B 57 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Graveyard__North_West_and_South_West_Hyrule_; 0x459d $858D 57 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x459f $858F B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x45a1 $8591 B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_Graveyard_Area_near_Kings_Tomb__with_Red_Jar_; 0x45a3 $8593 5C 8F;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Road__North_West_and_South_West_Hyrule_; 0x45a5 $8595 AB 8F;
.word    bank1_Area_Data__West_Hyrule_Random_Battle___Road__North_West_and_South_West_Hyrule_; 0x45a7 $8597 AB 8F;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x45a9 $8599 07 8D;
.word    bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava; 0x45ab $859B 07 8D;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x45ad $859D B5 8C         ;
.word    bank1_Area_Data__West_Hyrule_North_Castle; 0x45af $859F B5 8C         ;
setpos Main_World_Enemy_Pointers
bank1_Enemy_Pointers__West_Hyrule:                                              ;
;\"NME-OFFSET\" in z2pledit                                                    ;
;Base Offset is $88A0                                                          ;
.word    L7000                         ; 0x45b1 $85A1 00 70                    ;; Enemy Data
.word    L706C                         ; 0x45b3 $85A3 6C 70                    ;
.word    L7072                         ; 0x45b5 $85A5 72 70                    ;
.word    L7000                         ; 0x45b7 $85A7 00 70                    ;; Enemy Data
.word    L7080                         ; 0x45b9 $85A9 80 70                    ;
.word    L7088                         ; 0x45bb $85AB 88 70                    ;
.word    L7090                         ; 0x45bd $85AD 90 70                    ;
.word    L7002                         ; 0x45bf $85AF 02 70                    ;
.word    L7002                         ; 0x45c1 $85B1 02 70                    ;
.word    L7006                         ; 0x45c3 $85B3 06 70                    ;
.word    L7012                         ; 0x45c5 $85B5 12 70                    ;
.word    L701E                         ; 0x45c7 $85B7 1E 70                    ;
.word    L7026                         ; 0x45c9 $85B9 26 70                    ;
.word    L7000                         ; 0x45cb $85BB 00 70                    ;; Enemy Data
.word    L7168                         ; 0x45cd $85BD 68 71                    ;
.word    L71AC                         ; 0x45cf $85BF AC 71                    ;
.word    L7034                         ; 0x45d1 $85C1 34 70                    ;
.word    L7000                         ; 0x45d3 $85C3 00 70                    ;; Enemy Data
.word    L703E                         ; 0x45d5 $85C5 3E 70                    ;
.word    L7034                         ; 0x45d7 $85C7 34 70                    ;
.word    L7176                         ; 0x45d9 $85C9 76 71                    ;
.word    L717C                         ; 0x45db $85CB 7C 71                    ;
.word    L7188                         ; 0x45dd $85CD 88 71                    ;
.word    L7194                         ; 0x45df $85CF 94 71                    ;
.word    L7006                         ; 0x45e1 $85D1 06 70                    ;
.word    L7006                         ; 0x45e3 $85D3 06 70                    ;
.word    L7000                         ; 0x45e5 $85D5 00 70                    ;; Enemy Data
.word    L7000                         ; 0x45e7 $85D7 00 70                    ;; Enemy Data
.word    L7000                         ; 0x45e9 $85D9 00 70                    ;; Enemy Data
.word    L70A2                         ; 0x45eb $85DB A2 70                    ;
.word    L70E0                         ; 0x45ed $85DD E0 70                    ;
.word    L70E0                         ; 0x45ef $85DF E0 70                    ;
.word    L70E0                         ; 0x45f1 $85E1 E0 70                    ;
.word    L7050                         ; 0x45f3 $85E3 50 70                    ;
.word    L70B6                         ; 0x45f5 $85E5 B6 70                    ;
.word    L70F8                         ; 0x45f7 $85E7 F8 70                    ;
.word    L70F8                         ; 0x45f9 $85E9 F8 70                    ;
.word    L70F8                         ; 0x45fb $85EB F8 70                    ;
.word    L7068                         ; 0x45fd $85ED 68 70                    ;
.word    L70CC                         ; 0x45ff $85EF CC 70                    ;
.word    L7140                         ; 0x4601 $85F1 40 71                    ;
.word    L7140                         ; 0x4603 $85F3 40 71                    ;
.word    L7140                         ; 0x4605 $85F5 40 71                    ;
.word    L7048                         ; 0x4607 $85F7 48 70                    ;
.word    L7158                         ; 0x4609 $85F9 58 71                    ;
.word    L71B3                         ; 0x460b $85FB B3 71                    ;
.word    L71C0                         ; 0x460d $85FD C0 71                    ;
.word    L7126                         ; 0x460f $85FF 26 71                    ;
.word    L7126                         ; 0x4611 $8601 26 71                    ;
.word    L7126                         ; 0x4613 $8603 26 71                    ;
.word    L7126                         ; 0x4615 $8605 26 71                    ;
.word    L71D5                         ; 0x4617 $8607 D5 71                    ;
.word    L7108                         ; 0x4619 $8609 08 71                    ;
.word    L7108                         ; 0x461b $860B 08 71                    ;
.word    L7108                         ; 0x461d $860D 08 71                    ;
.word    L7108                         ; 0x461f $860F 08 71                    ;
.word    L7096                         ; 0x4621 $8611 96 70                    ;
.word    L71CF                         ; 0x4623 $8613 CF 71                    ;
.word    L71CF                         ; 0x4625 $8615 CF 71                    ;
.word    L7126                         ; 0x4627 $8617 26 71                    ;
.word    L7126                         ; 0x4629 $8619 26 71                    ;
.word    L7126                         ; 0x462b $861B 26 71                    ;
.word    L7126                         ; 0x462d $861D 26 71                    ;
; ---------------------------------------------------------------------------- ;
setpos Main_World_Key_Areas
bank1_West_Hyrule__Key_Areas_Y_Location:                                        ;
.byt    $34,$20,$2A,$3C,$56,$40,$4D,$39; 0x462f $861F 34 20 2A 3C 56 40 4D 39  ;
.byt    $47,$5C,$29,$2E,$3A,$3E,$3E,$45; 0x4637 $8627 47 5C 29 2E 3A 3E 3E 45  ;
.byt    $3E,$60,$66,$52,$57,$61,$61,$40; 0x463f $862F 3E 60 66 52 57 61 61 40  ;
.byt    $43,$57,$4C,$4D,$4E,$4D,$44,$00; 0x4647 $8637 43 57 4C 4D 4E 4D 44 00  ;
.byt    $66,$00,$00,$00,$00,$00,$00,$00; 0x464f $863F 66 00 00 00 00 00 00 00  ;
L8647:                                                                          ;
.byt    $7F,$CD,$DF,$E0,$D8,$B6,$00,$A4; 0x4657 $8647 7F CD DF E0 D8 B6 00 A4  ;
.byt    $DB,$D9,$CC,$CB,$A0,$C0,$E2,$00; 0x465f $864F DB D9 CC CB A0 C0 E2 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x4667 $8657 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Key_Areas_X_Location:                                        ;
.byt    $17,$1D,$25,$10,$14,$3E,$15,$3D; 0x466e $865E 17 1D 25 10 14 3E 15 3D  ;
.byt    $08,$30,$30,$77,$01,$43,$26,$09; 0x4676 $8666 08 30 30 77 01 43 26 09  ;
.byt    $36,$32,$7B,$10,$1A,$1A,$62,$07; 0x467e $866E 36 32 7B 10 1A 1A 62 07  ;
.byt    $11,$21,$14,$11,$13,$17,$25,$00; 0x4686 $8676 11 21 14 11 13 17 25 00  ;
.byt    $26,$00,$00,$00,$00,$00,$00,$00; 0x468e $867E 26 00 00 00 00 00 00 00  ;
.byt    $00,$3D,$0A,$15,$32,$6E,$00,$42; 0x4696 $8686 00 3D 0A 15 32 6E 00 42  ;
.byt    $08,$48,$15,$7C,$3E,$0B,$39,$00; 0x469e $868E 08 48 15 7C 3E 0B 39 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x46a6 $8696 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Key_Areas_Map_Number:                                        ;
.byt    $80,$E1,$6B,$2D,$6E,$66,$6C,$46; 0x46ad $869D 80 E1 6B 2D 6E 66 6C 46  ;
.byt    $73,$78,$07,$C7,$09,$CB,$0C,$0E; 0x46b5 $86A5 73 78 07 C7 09 CB 0C 0E  ;
.byt    $10,$12,$D3,$01,$02,$04,$C5,$54; 0x46bd $86AD 10 12 D3 01 02 04 C5 54  ;
.byt    $B3,$D4,$55,$56,$57,$57,$F9,$39; 0x46c5 $86B5 B3 D4 55 56 57 57 F9 39  ;
.byt    $B9,$00,$00,$00,$00,$00,$00,$00; 0x46cd $86BD B9 00 00 00 00 00 00 00  ;
.byt    $28,$29,$2A,$2B,$3C,$C2,$00,$C5; 0x46d5 $86C5 28 29 2A 2B 3C C2 00 C5  ;
.byt    $06,$C8,$18,$CB,$00,$0E,$00,$00; 0x46dd $86CD 06 C8 18 CB 00 0E 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x46e5 $86D5 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Key_Areas_World_Number:                                      ;
.byt    $20,$00,$00,$00,$00,$00,$00,$40; 0x46ec $86DC 20 00 00 00 00 00 00 40  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x46f4 $86E4 00 00 00 00 00 00 00 00  ;
.byt    $00,$80,$00,$40,$40,$40,$40,$00; 0x46fc $86EC 00 80 00 40 40 40 40 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x4704 $86F4 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x470c $86FC 00 00 00 00 00 00 00 00  ;
.byt    $00,$02,$01,$01,$04,$04,$04,$04; 0x4714 $8704 00 02 01 01 04 04 04 04  ;
.byt    $04,$04,$04,$04,$0C,$0C,$10,$00; 0x471c $870C 04 04 04 04 0C 0C 10 00  ;
.byt    $00,$00,$00,$00,$00,$00,$00    ; 0x4724 $8714 00 00 00 00 00 00 00     ;
bank1_West_Hyrule__Room_Connectivity_Data:                                      ;
.byt    $FC,$FC,$FC,$FC,$FC,$00,$00,$FC; 0x472b $871B FC FC FC FC FC 00 00 FC  ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FC; 0x4733 $8723 FC 00 00 FC FC 00 00 FC  ;
.byt    $FC,$00,$00,$14,$13,$00,$00,$FD; 0x473b $872B FC 00 00 14 13 00 00 FD  ;
.byt    $FC,$00,$00,$FC,$FC,$00,$00,$FD; 0x4743 $8733 FC 00 00 FC FC 00 00 FD  ;
.byt    $00,$00,$00,$00,$FC,$00,$00,$28; 0x474b $873B 00 00 00 00 FC 00 00 28  ;
.byt    $27,$00,$00,$2C,$2B,$00,$00,$FD; 0x4753 $8743 27 00 00 2C 2B 00 00 FD  ;
.byt    $FC,$00,$00,$34,$33,$00,$00,$FD; 0x475b $874B FC 00 00 34 33 00 00 FD  ;
.byt    $FC,$00,$00,$3C,$3B,$00,$00,$FD; 0x4763 $8753 FC 00 00 3C 3B 00 00 FD  ;
.byt    $FC,$00,$00,$44,$43,$00,$00,$FD; 0x476b $875B FC 00 00 44 43 00 00 FD  ;
.byt    $FC,$00,$00,$4C,$4B,$00,$00,$FD; 0x4773 $8763 FC 00 00 4C 4B 00 00 FD  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x477b $876B FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC; 0x4783 $8773 FC FC FC FC FC FC FC FC  ;
.byt    $FC,$FC,$FC,$FC                ; 0x478b $877B FC FC FC FC              ;
bank1_Area_Data__West_Hyrule_Random_Battle___Desert__South_West_Hyrule_:        ;
.byt    $10,$C0,$C3,$11,$D4,$02,$DE,$03; 0x478f $877F 10 C0 C3 11 D4 02 DE 03  ;
.byt    $D4,$04,$D8,$03,$D2,$02,$DC,$03; 0x4797 $8787 D4 04 D8 03 D2 02 DC 03  ;
; ---------------------------------------------------------------------------- ;
bank1_Pointer_table_for_Palaces_offsets_in_Saved_RAM:                           ;
.word    L7C18                         ; 0x479f $878F 18 7C                    ;
.word    L7D76                         ; 0x47a1 $8791 76 7D                    ;
.word    L7EEA                         ; 0x47a3 $8793 EA 7E                    ;
.word    L7DA6                         ; 0x47a5 $8795 A6 7D                    ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Palaces_to_test_for_completion:                                 ;
;FF = don't test                                                               ;
;00 = check for item at $0785 + offset 00 (Candle, Glove...)                   ;
.byt    $00,$01,$02,$03                ; 0x47a7 $8797 00 01 02 03              ;
; ---------------------------------------------------------------------------- ;
bank1_Transform_completed_palaces_into_stone:                                   ;
    LDX      #$02                      ; 0x47ab $879B A2 02                    ; X = 02
L879D:                                                                          ;
    LDA      bank1_Table_for_Palaces_to_test_for_completion,x; 0x47ad $879D BD 97 87; refer to table at $4797
    CMP      #$FF                      ; 0x47b0 $87A0 C9 FF                    ; if FF, skip
    BEQ      L87C2                     ; 0x47b2 $87A2 F0 1E                    ;
    TAY                                ; 0x47b4 $87A4 A8                       ;
    LDA      player_items,y                   ; 0x47b5 $87A5 B9 85 07                 ; Item Collected?
    BEQ      L87C2                     ; 0x47b8 $87A8 F0 18                    ; if not, skip
    LDA      placed_gems_list,y                   ; 0x47ba $87AA B9 8D 07                 ; Crystal Placed?
    BEQ      L87C2                     ; 0x47bd $87AD F0 13                    ; if not, skip
    TXA                                ; 0x47bf $87AF 8A                       ;
    ASL                                ; 0x47c0 $87B0 0A                       ;
    TAY                                ; 0x47c1 $87B1 A8                       ;
    LDA      bank1_Pointer_table_for_Palaces_offsets_in_Saved_RAM,y; 0x47c2 $87B2 B9 8F 87; refer to table at $478F
    STA      zp_0E                     ; 0x47c5 $87B5 85 0E                    ; pointer byte 1
    LDA      bank1_Pointer_table_for_Palaces_offsets_in_Saved_RAM+$01,y; 0x47c7 $87B7 B9 90 87; refer to table at $478F (offset +1)
    STA      zp_0F                       ; 0x47ca $87BA 85 0F                    ; pointer byte 2
    LDY      #$00                      ; 0x47cc $87BC A0 00                    ; Y = 00
    LDA      #$0B                      ; 0x47ce $87BE A9 0B                    ; A = 0B (0B = 1 Unit of Mountain)
    STA      (zp_0E),y                 ; 0x47d0 $87C0 91 0E                    ;
L87C2:                                                                          ;
    DEX                                ; 0x47d2 $87C2 CA                       ;
    BPL      L879D                     ; 0x47d3 $87C3 10 D8                    ; loop to $479D
    RTS                                ; 0x47d5 $87C5 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
setpos $88A0
bank1_Enemy_Data__West_Hyrule_and_Death_Mountain:                               ;
.byt    $01,$01,$03,$7A,$5C,$01,$0B,$6F; 0x48b0 $88A0 01 01 03 7A 5C 01 0B 6F  ;
.byt    $11,$72,$51,$75,$51,$7A,$51,$76; 0x48b8 $88A8 11 72 51 75 51 7A 51 76  ;
.byt    $9A,$01,$0B,$79,$1C,$75,$5C,$7F; 0x48c0 $88B0 9A 01 0B 79 1C 75 5C 7F  ;
.byt    $5C,$7B,$9A,$7D,$9C,$01,$07,$09; 0x48c8 $88B8 5C 7B 9A 7D 9C 01 07 09  ;
.byt    $07,$0D,$07,$08,$4A,$01,$0D,$7A; 0x48d0 $88C0 07 0D 07 08 4A 01 0D 7A  ;
.byt    $1F,$70,$5F,$72,$5F,$7A,$59,$7C; 0x48d8 $88C8 1F 70 5F 72 5F 7A 59 7C  ;
.byt    $9F,$70,$DF,$01,$09,$7D,$03,$70; 0x48e0 $88D0 9F 70 DF 01 09 7D 03 70  ;
.byt    $9C,$78,$9B,$7A,$9C,$01,$09,$76; 0x48e8 $88D8 9C 78 9B 7A 9C 01 09 76  ;
.byt    $5C,$7B,$5C,$7F,$5C,$71,$9C,$01; 0x48f0 $88E0 5C 7B 5C 7F 5C 71 9C 01  ;
.byt    $07,$0C,$47,$0E,$47,$02,$87,$01; 0x48f8 $88E8 07 0C 47 0E 47 02 87 01  ;
.byt    $09,$77,$1A,$4D,$51,$62,$91,$02; 0x4900 $88F0 09 77 1A 4D 51 62 91 02  ;
.byt    $C7,$01,$0D,$0F,$1D,$7B,$11,$7E; 0x4908 $88F8 C7 01 0D 0F 1D 7B 11 7E  ;
.byt    $11,$73,$91,$77,$91,$0F,$9D,$01; 0x4910 $8900 11 73 91 77 91 0F 9D 01  ;
.byt    $03,$74,$99,$01,$05,$7F,$0F,$7F; 0x4918 $8908 03 74 99 01 05 7F 0F 7F  ;
.byt    $8F,$01,$0D,$0F,$0B,$5C,$1C,$5E; 0x4920 $8910 8F 01 0D 0F 0B 5C 1C 5E  ;
.byt    $5C,$5D,$9C,$50,$DC,$0F,$CB,$01; 0x4928 $8918 5C 5D 9C 50 DC 0F CB 01  ;
.byt    $07,$20,$55,$24,$96,$36,$9C,$01; 0x4930 $8920 07 20 55 24 96 36 9C 01  ;
.byt    $07,$0F,$0B,$2C,$58,$00,$CB,$01; 0x4938 $8928 07 0F 0B 2C 58 00 CB 01  ;
.byt    $05,$7F,$0B,$7F,$CB,$01,$0B,$7C; 0x4940 $8930 05 7F 0B 7F CB 01 0B 7C  ;
.byt    $04,$7E,$04,$5B,$1B,$70,$C4,$73; 0x4948 $8938 04 7E 04 5B 1B 70 C4 73  ;
.byt    $C4,$01,$05,$7F,$0C,$70,$8C,$0F; 0x4950 $8940 C4 01 05 7F 0C 70 8C 0F  ;
.byt    $0E,$0C,$76,$04,$38,$20,$3C,$60; 0x4958 $8948 0E 0C 76 04 38 20 3C 60  ;
.byt    $36,$A0,$78,$84,$70,$8C,$0B,$7C; 0x4960 $8950 36 A0 78 84 70 8C 0B 7C  ;
.byt    $04,$7E,$05,$71,$84,$74,$85,$79; 0x4968 $8958 04 7E 05 71 84 74 85 79  ;
.byt    $85,$0B,$0F,$21,$72,$05,$70,$45; 0x4970 $8960 85 0B 0F 21 72 05 70 45  ;
.byt    $72,$85,$00,$A1,$0B,$0F,$21,$14; 0x4978 $8968 72 85 00 A1 0B 0F 21 14  ;
.byt    $0D,$13,$4D,$17,$8D,$00,$A1,$09; 0x4980 $8970 0D 13 4D 17 8D 00 A1 09  ;
.byt    $7B,$14,$15,$8D,$76,$94,$1C,$8D; 0x4988 $8978 7B 14 15 8D 76 94 1C 8D  ;
.byt    $0F,$7F,$0C,$3A,$20,$3E,$20,$1A; 0x4990 $8980 0F 7F 0C 3A 20 3E 20 1A  ;
.byt    $60,$31,$A0,$38,$A0,$70,$8C,$09; 0x4998 $8988 60 31 A0 38 A0 70 8C 09  ;
.byt    $67,$1C,$5A,$1B,$56,$9B,$6A,$9C; 0x49a0 $8990 67 1C 5A 1B 56 9B 6A 9C  ;
.byt    $09,$7E,$04,$70,$5F,$7E,$44,$71; 0x49a8 $8998 09 7E 04 70 5F 7E 44 71  ;
L89A0:                                                                          ;
.byt    $9F,$07,$76,$1F,$60,$59,$6F,$59; 0x49b0 $89A0 9F 07 76 1F 60 59 6F 59  ;
.byt    $11,$72,$06,$48,$06,$7E,$06,$60; 0x49b8 $89A8 11 72 06 48 06 7E 06 60  ;
.byt    $46,$2D,$46,$6F,$46,$49,$86,$5E; 0x49c0 $89B0 46 2D 46 6F 46 49 86 5E  ;
.byt    $86,$0D,$35,$06,$79,$18,$6D,$06; 0x49c8 $89B8 86 0D 35 06 79 18 6D 06  ;
.byt    $5F,$46,$45,$98,$3A,$86,$0B,$74; 0x49d0 $89C0 5F 46 45 98 3A 86 0B 74  ;
.byt    $12,$77,$11,$7F,$11,$73,$91,$7B; 0x49d8 $89C8 12 77 11 7F 11 73 91 7B  ;
.byt    $91,$0F,$0F,$1D,$78,$11,$71,$51; 0x49e0 $89D0 91 0F 0F 1D 78 11 71 51  ;
.byt    $73,$91,$77,$92,$7D,$91,$00,$9D; 0x49e8 $89D8 73 91 77 92 7D 91 00 9D  ;
.byt    $0B,$77,$15,$1B,$0E,$1D,$4D,$17; 0x49f0 $89E0 0B 77 15 1B 0E 1D 4D 17  ;
.byt    $8E,$79,$95,$0D,$0F,$1D,$75,$16; 0x49f8 $89E8 8E 79 95 0D 0F 1D 75 16  ;
.byt    $17,$0E,$15,$8E,$79,$96,$00,$9D; 0x4a00 $89F0 17 0E 15 8E 79 96 00 9D  ;
.byt    $0F,$7B,$1F,$7E,$1F,$60,$5F,$62; 0x4a08 $89F8 0F 7B 1F 7E 1F 60 5F 62  ;
.byt    $9F,$7F,$9F,$60,$DF,$62,$DF,$01; 0x4a10 $8A00 9F 7F 9F 60 DF 62 DF 01  ;
.byt    $0D,$0F,$0F,$56,$5C,$5E,$5C,$58; 0x4a18 $8A08 0D 0F 0F 56 5C 5E 5C 58  ;
.byt    $9C,$5B,$9C,$00,$CF,$01,$05,$48; 0x4a20 $8A10 9C 5B 9C 00 CF 01 05 48  ;
.byt    $40,$48,$C0,$01,$0B,$79,$1F,$7E; 0x4a28 $8A18 40 48 C0 01 0B 79 1F 7E  ;
.byt    $1F,$7E,$5F,$71,$9F,$78,$9F,$01; 0x4a30 $8A20 1F 7E 5F 71 9F 78 9F 01  ;
.byt    $0B,$79,$1F,$7E,$1F,$70,$5F,$71; 0x4a38 $8A28 0B 79 1F 7E 1F 70 5F 71  ;
.byt    $9F,$78,$9F,$01,$0B,$79,$1F,$7E; 0x4a40 $8A30 9F 78 9F 01 0B 79 1F 7E  ;
.byt    $1F,$7E,$5F,$71,$9F,$78,$9F,$01; 0x4a48 $8A38 1F 7E 5F 71 9F 78 9F 01  ;
.byt    $0B,$79,$1F,$7E,$1F,$70,$5F,$71; 0x4a50 $8A40 0B 79 1F 7E 1F 70 5F 71  ;
.byt    $9F,$78,$9F,$01,$07,$6F,$17,$61; 0x4a58 $8A48 9F 78 9F 01 07 6F 17 61  ;
.byt    $98,$65,$D8,$0D,$56,$5C,$5A,$5C; 0x4a60 $8A50 98 65 D8 0D 56 5C 5A 5C  ;
.byt    $5E,$5C,$6E,$91,$61,$D1,$64,$D1; 0x4a68 $8A58 5E 5C 6E 91 61 D1 64 D1  ;
.byt    $0F,$68,$1F,$6A,$1F,$6E,$1F,$66; 0x4a70 $8A60 0F 68 1F 6A 1F 6E 1F 66  ;
.byt    $9F,$6F,$9F,$63,$DF,$6A,$DF,$05; 0x4a78 $8A68 9F 6F 9F 63 DF 6A DF 05  ;
.byt    $76,$01,$76,$C1,$01,$03,$76,$81; 0x4a80 $8A70 76 01 76 C1 01 03 76 81  ;
.byt    $01,$01,$11,$39,$1F,$3B,$1F,$3D; 0x4a88 $8A78 01 01 11 39 1F 3B 1F 3D  ;
.byt    $1F,$44,$5F,$5C,$5F,$64,$9F,$7C; 0x4a90 $8A80 1F 44 5F 5C 5F 64 9F 7C  ;
.byt    $9F,$7E,$9F,$0F,$6A,$04,$5C,$04; 0x4a98 $8A88 9F 7E 9F 0F 6A 04 5C 04  ;
.byt    $7D,$55,$6F,$44,$76,$95,$6C,$84; 0x4aa0 $8A90 7D 55 6F 44 76 95 6C 84  ;
.byt    $74,$C4,$0F,$6C,$11,$4E,$11,$20; 0x4aa8 $8A98 74 C4 0F 6C 11 4E 11 20  ;
L8AA0:                                                                          ;
.byt    $51,$70,$9B,$2F,$91,$41,$D1,$63; 0x4ab0 $8AA0 51 70 9B 2F 91 41 D1 63  ;
.byt    $D1,$0F,$0D,$07,$03,$47,$0A,$4A; 0x4ab8 $8AA8 D1 0F 0D 07 03 47 0A 4A  ;
.byt    $7B,$5C,$01,$C7,$74,$DC,$05,$CA; 0x4ac0 $8AB0 7B 5C 01 C7 74 DC 05 CA  ;
.byt    $0B,$7B,$12,$63,$52,$5B,$52,$43; 0x4ac8 $8AB8 0B 7B 12 63 52 5B 52 43  ;
.byt    $92,$3D,$92,$05,$0F,$0F,$00,$CF; 0x4ad0 $8AC0 92 3D 92 05 0F 0F 00 CF  ;
.byt    $0F,$7A,$5F,$7D,$5F,$7F,$5F,$70; 0x4ad8 $8AC8 0F 7A 5F 7D 5F 7F 5F 70  ;
.byt    $9C,$00,$C7,$03,$C7,$75,$D7,$0D; 0x4ae0 $8AD0 9C 00 C7 03 C7 75 D7 0D  ;
.byt    $60,$51,$63,$51,$66,$51,$69,$91; 0x4ae8 $8AD8 60 51 63 51 66 51 69 91  ;
.byt    $6C,$91,$6F,$91,$09,$2D,$16,$4B; 0x4af0 $8AE0 6C 91 6F 91 09 2D 16 4B  ;
.byt    $52,$56,$92,$3C,$92,$09,$76,$5C; 0x4af8 $8AE8 52 56 92 3C 92 09 76 5C  ;
.byt    $79,$5A,$7C,$5C,$70,$D7,$05,$0F; 0x4b00 $8AF0 79 5A 7C 5C 70 D7 05 0F  ;
.byt    $0F,$00,$CF,$0D,$09,$07,$6B,$04; 0x4b08 $8AF8 0F 00 CF 0D 09 07 6B 04  ;
.byt    $0E,$07,$61,$44,$04,$47,$75,$D7; 0x4b10 $8B00 0E 07 61 44 04 47 75 D7  ;
.byt    $0B,$25,$44,$39,$41,$2D,$44,$71; 0x4b18 $8B08 0B 25 44 39 41 2D 44 71  ;
.byt    $98,$2B,$84,$0D,$60,$51,$63,$51; 0x4b20 $8B10 98 2B 84 0D 60 51 63 51  ;
.byt    $66,$51,$69,$91,$6C,$91,$6F,$91; 0x4b28 $8B18 66 51 69 91 6C 91 6F 91  ;
.byt    $0D,$08,$07,$0E,$07,$5C,$17,$02; 0x4b30 $8B20 0D 08 07 0E 07 5C 17 02  ;
.byt    $47,$06,$87,$7F,$9B,$0F,$3A,$05; 0x4b38 $8B28 47 06 87 7F 9B 0F 3A 05  ;
.byt    $45,$45,$4E,$57,$64,$85,$7E,$85; 0x4b40 $8B30 45 45 4E 57 64 85 7E 85  ;
.byt    $63,$D7,$75,$C5,$0F,$76,$01,$7E; 0x4b48 $8B38 63 D7 75 C5 0F 76 01 7E  ;
.byt    $04,$53,$57,$66,$44,$42,$84,$29; 0x4b50 $8B40 04 53 57 66 44 42 84 29  ;
.byt    $97,$25,$C4,$0F,$7F,$11,$73,$51; 0x4b58 $8B48 97 25 C4 0F 7F 11 73 51  ;
L8B50:                                                                          ;
.byt    $75,$51,$79,$81,$7C,$91,$7E,$91; 0x4b60 $8B50 75 51 79 81 7C 91 7E 91  ;
.byt    $71,$D1,$0B,$76,$58,$07,$8A,$79; 0x4b68 $8B58 71 D1 0B 76 58 07 8A 79  ;
.byt    $9C,$7D,$9C,$08,$CA,$05,$76,$57; 0x4b70 $8B60 9C 7D 9C 08 CA 05 76 57  ;
.byt    $7F                            ; 0x4b78 $8B68 7F                       ;
L8B69:                                                                          ;
.byt    $98,$0F,$78,$5F,$79,$5F,$7B,$5F; 0x4b79 $8B69 98 0F 78 5F 79 5F 7B 5F  ;
.byt    $73,$97,$7D,$9C,$7F,$9C,$72,$DC; 0x4b81 $8B71 73 97 7D 9C 7F 9C 72 DC  ;
.byt    $09,$6D,$03,$50,$58,$76,$43,$7B; 0x4b89 $8B79 09 6D 03 50 58 76 43 7B  ;
.byt    $D8,$03,$50,$83,$09,$32,$51,$3C; 0x4b91 $8B81 D8 03 50 83 09 32 51 3C  ;
.byt    $51,$47,$91,$2D,$91,$0B,$6E,$14; 0x4b99 $8B89 51 47 91 2D 91 0B 6E 14  ;
.byt    $60,$52,$46,$92,$4E,$92,$21,$D4; 0x4ba1 $8B91 60 52 46 92 4E 92 21 D4  ;
.byt    $09,$57,$58,$40,$94,$3A,$98    ; 0x4ba9 $8B99 09 57 58 40 94 3A 98     ;
L8BA0:                                                                          ;
.byt    $24,$D4,$0F,$6E,$14,$51,$54,$58; 0x4bb0 $8BA0 24 D4 0F 6E 14 51 54 58  ;
.byt    $54,$41,$94,$38,$94,$3C,$94,$23; 0x4bb8 $8BA8 54 41 94 38 94 3C 94 23  ;
.byt    $D4,$0B,$6A,$18,$68,$58,$6C,$58; 0x4bc0 $8BB0 D4 0B 6A 18 68 58 6C 58  ;
.byt    $66,$98,$63,$D8,$09,$6A,$14    ; 0x4bc8 $8BB8 66 98 63 D8 09 6A 14     ;
L8BBF:                                                                          ;
.byt    $60,$98,$64,$98,$62,$D4,$05,$06; 0x4bcf $8BBF 60 98 64 98 62 D4 05 06  ;
.byt    $57,$01,$D7,$0B,$3A,$04,$68,$58; 0x4bd7 $8BC7 57 01 D7 0B 3A 04 68 58  ;
.byt    $6A,$58,$48,$94,$60,$D4,$0D,$1D; 0x4bdf $8BCF 6A 58 48 94 60 D4 0D 1D  ;
.byt    $11,$2F,$14,$50,$81,$58,$91,$3A; 0x4be7 $8BD7 11 2F 14 50 81 58 91 3A  ;
.byt    $91,$4D,$94,$09,$6A,$18,$64,$98; 0x4bef $8BDF 91 4D 94 09 6A 18 64 98  ;
.byt    $68,$98,$69,$D4,$03,$78,$9B,$0B; 0x4bf7 $8BE7 68 98 69 D4 03 78 9B 0B  ;
.byt    $77,$15,$1B,$0E,$1D,$4D,$17,$8E; 0x4bff $8BEF 77 15 1B 0E 1D 4D 17 8E  ;
.byt    $79,$95,$0D,$0F,$1D,$75,$16,$17; 0x4c07 $8BF7 79 95 0D 0F 1D 75 16 17  ;
.byt    $0E,$15,$8E,$79,$96,$00,$9D,$0F; 0x4c0f $8BFF 0E 15 8E 79 96 00 9D 0F  ;
.byt    $7F,$0C,$3A,$20,$3E,$20,$1A,$60; 0x4c17 $8C07 7F 0C 3A 20 3E 20 1A 60  ;
.byt    $31,$A0,$38,$A0,$70,$8C,$09,$67; 0x4c1f $8C0F 31 A0 38 A0 70 8C 09 67  ;
.byt    $1C,$5A,$1B,$56,$9B,$6A,$9C,$11; 0x4c27 $8C17 1C 5A 1B 56 9B 6A 9C 11  ;
.byt    $72,$06,$48,$06,$7E,$06,$60,$46; 0x4c2f $8C1F 72 06 48 06 7E 06 60 46  ;
.byt    $2D,$46,$6F,$46,$49,$86,$5E,$86; 0x4c37 $8C27 2D 46 6F 46 49 86 5E 86  ;
.byt    $0D,$35,$06,$79,$18,$6D,$06,$5F; 0x4c3f $8C2F 0D 35 06 79 18 6D 06 5F  ;
.byt    $46,$45,$98,$3A,$86            ; 0x4c47 $8C37 46 45 98 3A 86           ;
bank1_Background_Areas_Data:                                                    ;
.byt    $18,$60,$90,$00,$14,$09,$32,$0A; 0x4c4c $8C3C 18 60 90 00 14 09 32 0A  ;
.byt    $28,$09,$06,$0A,$48,$09,$18,$09; 0x4c54 $8C44 28 09 06 0A 48 09 18 09  ;
.byt    $32,$0A,$28,$09,$06,$0A,$48,$09; 0x4c5c $8C4C 32 0A 28 09 06 0A 48 09  ;
L8C54:                                                                          ;
.byt    $14,$48,$9A,$60,$06,$EA,$04,$EA; 0x4c64 $8C54 14 48 9A 60 06 EA 04 EA  ;
.byt    $02,$EA,$08,$EA,$06,$EA,$0A,$EA; 0x4c6c $8C5C 02 EA 08 EA 06 EA 0A EA  ;
.byt    $04,$EA,$02,$EA                ; 0x4c74 $8C64 04 EA 02 EA              ;
L8C68:                                                                          ;
.byt    $14,$48,$9A,$60,$08,$EA,$06,$EA; 0x4c78 $8C68 14 48 9A 60 08 EA 06 EA  ;
.byt    $06,$EA,$02,$EA,$08,$EA,$06,$EA; 0x4c80 $8C70 06 EA 02 EA 08 EA 06 EA  ;
.byt    $0A,$EA,$0A,$EA                ; 0x4c88 $8C78 0A EA 0A EA              ;
L8C7C:                                                                          ;
.byt    $1A,$48,$90,$60,$14,$09,$32,$0A; 0x4c8c $8C7C 1A 48 90 60 14 09 32 0A  ;
.byt    $28,$09,$06,$0A,$48,$09,$04,$EA; 0x4c94 $8C84 28 09 06 0A 48 09 04 EA  ;
.byt    $14,$09,$32,$0A,$28,$09,$06,$0A; 0x4c9c $8C8C 14 09 32 0A 28 09 06 0A  ;
.byt    $48,$09                        ; 0x4ca4 $8C94 48 09                    ;
L8C96:                                                                          ;
.byt    $12,$E0,$0E,$48,$D8,$09,$E1,$00; 0x4ca6 $8C96 12 E0 0E 48 D8 09 E1 00  ;
.byt    $D8,$0F,$E2,$00,$D8,$09,$E3,$00; 0x4cae $8C9E D8 0F E2 00 D8 09 E3 00  ;
.byt    $D8,$0E                        ; 0x4cb6 $8CA6 D8 0E                    ;
L8CA8:                                                                          ;
.byt    $0D,$E0,$0E,$08,$D8,$08,$AE,$0F; 0x4cb8 $8CA8 0D E0 0E 08 D8 08 AE 0F  ;
.byt    $0B,$E3,$00,$D8,$0F            ; 0x4cc0 $8CB0 0B E3 00 D8 0F           ;
bank1_Area_Data__West_Hyrule_North_Castle:                                      ;
.byt    $36,$40,$68,$00,$20,$4F,$22,$F8; 0x4cc5 $8CB5 36 40 68 00 20 4F 22 F8  ;
.byt    $23,$F8,$23,$F8,$23,$F8,$23,$F8; 0x4ccd $8CBD 23 F8 23 F8 23 F8 23 F8  ;
.byt    $E1,$00,$20,$4F,$A0,$BF,$21,$F7; 0x4cd5 $8CC5 E1 00 20 4F A0 BF 21 F7  ;
.byt    $91,$BB,$81,$B9,$A0,$A9,$21,$F5; 0x4cdd $8CCD 91 BB 81 B9 A0 A9 21 F5  ;
.byt    $90,$A7,$81,$A5,$72,$06,$24,$F5; 0x4ce5 $8CD5 90 A7 81 A5 72 06 24 F5  ;
.byt    $23,$F7,$22,$4F                ; 0x4ced $8CDD 23 F7 22 4F              ;
L8CE1:                                                                          ;
.byt    $21,$F8,$23,$F8,$23,$F8,$23,$F8; 0x4cf1 $8CE1 21 F8 23 F8 23 F8 23 F8  ;
.byt    $23,$F8                        ; 0x4cf9 $8CE9 23 F8                    ;
bank1_Area_Data__West_Hyrule_Random_Battle___Desert__North_West_Hyrule_:        ;
.byt    $1C,$C0,$C2,$11,$84,$E1,$81,$E1; 0x4cfb $8CEB 1C C0 C2 11 84 E1 81 E1  ;
.byt    $F5,$41,$F2,$32,$86,$E1,$81,$E1; 0x4d03 $8CF3 F5 41 F2 32 86 E1 81 E1  ;
.byt    $F3,$41,$F8,$32,$F2,$41,$8A,$E1; 0x4d0b $8CFB F3 41 F8 32 F2 41 8A E1  ;
.byt    $81,$E1,$F3,$32                ; 0x4d13 $8D03 81 E1 F3 32              ;
bank1_Area_Data__West_Hyrule_Random_Battle_grass_or_lava:                       ;
.byt    $1A,$44,$C2,$19,$82,$80,$82,$91; 0x4d17 $8D07 1A 44 C2 19 82 80 82 91  ;
.byt    $84,$80,$84,$91,$84,$80,$84,$80; 0x4d1f $8D0F 84 80 84 91 84 80 84 80  ;
.byt    $82,$95,$8C,$80,$83,$92,$87,$91; 0x4d27 $8D17 82 95 8C 80 83 92 87 91  ;
.byt    $82,$80                        ; 0x4d2f $8D1F 82 80                    ;
bank1_Area_Data__West_Hyrule_Random_Battle___Forest__North_West_Hyrule_:        ;
.byt    $14,$48,$1A,$62,$32,$33,$3C,$35; 0x4d31 $8D21 14 48 1A 62 32 33 3C 35  ;
.byt    $42,$31,$36,$33,$38,$35,$41,$31; 0x4d39 $8D29 42 31 36 33 38 35 41 31  ;
.byt    $36,$31,$38,$33                ; 0x4d41 $8D31 36 31 38 33              ;
bank1_Area_Data__West_Hyrule_Random_Battle___Swamp__North_West_and_South_West_Hyrule_: ;
.byt    $22,$40,$B1,$29,$96,$80,$74,$E2; 0x4d45 $8D35 22 40 B1 29 96 80 74 E2  ;
.byt    $52,$E4,$92,$80,$74,$E2,$94,$80; 0x4d4d $8D3D 52 E4 92 80 74 E2 94 80  ;
.byt    $92,$80,$74,$E2,$54,$E4,$92,$80; 0x4d55 $8D45 92 80 74 E2 54 E4 92 80  ;
.byt    $92,$91,$92,$82,$74,$E2,$72,$E2; 0x4d5d $8D4D 92 91 92 82 74 E2 72 E2  ;
.byt    $92,$91                        ; 0x4d65 $8D55 92 91                    ;
bank1_Area_Data__West_Hyrule_Random_Battle___Graveyard__North_West_and_South_West_Hyrule_: ;
.byt    $42,$70,$F0,$31,$A4,$00,$A2,$00; 0x4d67 $8D57 42 70 F0 31 A4 00 A2 00  ;
.byt    $A2,$01,$A2,$00,$A2,$01,$A1,$01; 0x4d6f $8D5F A2 01 A2 00 A2 01 A1 01  ;
.byt    $D3,$81,$91,$02,$91,$00,$92,$01; 0x4d77 $8D67 D3 81 91 02 91 00 92 01  ;
.byt    $92,$00,$92,$01,$91,$01,$91,$01; 0x4d7f $8D6F 92 00 92 01 91 01 91 01  ;
.byt    $91,$01,$91,$00,$D4,$82,$82,$00; 0x4d87 $8D77 91 01 91 00 D4 82 82 00  ;
.byt    $82,$00,$82,$01,$D2,$81,$91,$02; 0x4d8f $8D7F 82 00 82 01 D2 81 91 02  ;
.byt    $91,$01,$92,$00,$D4,$80,$A2,$00; 0x4d97 $8D87 91 01 92 00 D4 80 A2 00  ;
.byt    $A2,$00,$A2,$02,$A2,$00,$A2,$01; 0x4d9f $8D8F A2 00 A2 02 A2 00 A2 01  ;
.byt    $A1,$01                        ; 0x4da7 $8D97 A1 01                    ;
bank1_Area_Data__West_Hyrule_Bridge:                                            ;
.byt    $1C,$E0,$A0,$39,$60,$E6,$61,$E6; 0x4da9 $8D99 1C E0 A0 39 60 E6 61 E6  ;
.byt    $61,$E6,$61,$E6,$71,$4E,$7F,$4E; 0x4db1 $8DA1 61 E6 61 E6 71 4E 7F 4E  ;
.byt    $7F,$4E,$7F,$4A,$6B,$E6,$61,$E6; 0x4db9 $8DA9 7F 4E 7F 4A 6B E6 61 E6  ;
.byt    $61,$E6,$61,$E6                ; 0x4dc1 $8DB1 61 E6 61 E6              ;
bank1_Area_Data__West_Hyrule_Grass_Area_with_Dolmens_and_Heart_Container:       ;
.byt    $1B,$E0,$90,$19,$A0,$97,$9C,$F1; 0x4dc5 $8DB5 1B E0 90 19 A0 97 9C F1  ;
.byt    $83,$04,$96,$F1,$83,$04        ; 0x4dcd $8DBD 83 04 96 F1 83 04        ;
L8DC3:                                                                          ;
.byt    $84,$04,$A4,$0F,$0F,$92,$F1,$96; 0x4dd3 $8DC3 84 04 A4 0F 0F 92 F1 96  ;
.byt    $F1,$96,$F1,$A6,$9B            ; 0x4ddb $8DCB F1 96 F1 A6 9B           ;
bank1_Area_Data__West_Hyrule_Grotto_with_Trophy_:                               ;
.byt    $25,$E0,$0F,$48,$D2,$00,$D2,$02; 0x4de0 $8DD0 25 E0 0F 48 D2 00 D2 02  ;
.byt    $80,$0F,$14,$D2,$00,$DE,$02,$D4; 0x4de8 $8DD8 80 0F 14 D2 00 DE 02 D4  ;
.byt    $04,$D6,$01,$90,$21,$F2,$21,$92; 0x4df0 $8DE0 04 D6 01 90 21 F2 21 92  ;
.byt    $22,$F3,$21,$92,$22,$F3,$21,$D2; 0x4df8 $8DE8 22 F3 21 92 22 F3 21 D2  ;
.byt    $02,$D6,$04,$D4,$06            ; 0x4e00 $8DF0 02 D6 04 D4 06           ;
bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Aches_and_50_Exp_Bag_: ;
.byt    $1F,$68,$90,$64,$96,$80,$93,$80; 0x4e05 $8DF5 1F 68 90 64 96 80 93 80  ;
.byt    $98,$80,$92,$80,$07,$3D,$12,$39; 0x4e0d $8DFD 98 80 92 80 07 3D 12 39  ;
.byt    $20,$37,$32,$35,$98,$0F,$0A,$96; 0x4e15 $8E05 20 37 32 35 98 0F 0A 96  ;
.byt    $80,$96,$80,$96,$80,$92,$80    ; 0x4e1d $8E0D 80 96 80 96 80 92 80     ;
bank1_Area_Data__West_Hyrule_Forest_with_Single_Tree__with_Megmats_and_100_Exp_Bag_: ;
.byt    $1F,$68,$90,$64,$96,$80,$93,$80; 0x4e24 $8E14 1F 68 90 64 96 80 93 80  ;
.byt    $98,$80,$92,$80,$07,$3D,$12,$39; 0x4e2c $8E1C 98 80 92 80 07 3D 12 39  ;
.byt    $20,$37,$32,$35,$98,$0F,$0B,$96; 0x4e34 $8E24 20 37 32 35 98 0F 0B 96  ;
.byt    $80,$96,$80,$96,$80,$92,$80    ; 0x4e3c $8E2C 80 96 80 96 80 92 80     ;
bank1_Area_Data__West_Hyrule_Area_with_Rocky_Ground_and_Grass__Red_Jar_near_Palace_2_: ;
.byt    $2F,$00,$F1,$29,$94,$80,$96,$80; 0x4e43 $8E33 2F 00 F1 29 94 80 96 80  ;
.byt    $92,$81,$34,$F6,$91,$82,$32,$F6; 0x4e4b $8E3B 92 81 34 F6 91 82 32 F6  ;
.byt    $32,$F6,$91,$0F,$12,$1C,$BD,$21; 0x4e53 $8E43 32 F6 91 0F 12 1C BD 21  ;
.byt    $BB,$31,$F6,$32,$F6,$32,$F6,$32; 0x4e5b $8E4B BB 31 F6 32 F6 32 F6 32  ;
.byt    $F6,$32,$F6,$32,$F6,$24,$B3,$30; 0x4e63 $8E53 F6 32 F6 32 F6 24 B3 30  ;
.byt    $F6,$11,$B3,$31,$F6,$96,$80    ; 0x4e6b $8E5B F6 11 B3 31 F6 96 80     ;
bank1_Area_Data__West_Hyrule_Forest_with_Tree_Stumps__Lost_Woods:               ;
.byt    $16,$68,$90,$61,$98,$03,$98,$03; 0x4e72 $8E62 16 68 90 61 98 03 98 03  ;
.byt    $98,$03,$94,$03,$96,$03,$96,$03; 0x4e7a $8E6A 98 03 94 03 96 03 96 03  ;
.byt    $98,$03,$92,$03,$96,$03        ; 0x4e82 $8E72 98 03 92 03 96 03        ;
bank1_Area_Data__West_Hyrule_Common_Grotto:                                     ;
.byt    $2E,$E0,$0E,$48,$D2,$0C,$D2,$0A; 0x4e88 $8E78 2E E0 0E 48 D2 0C D2 0A  ;
.byt    $D6,$0C,$D4,$0A,$A2,$23,$D2,$0C; 0x4e90 $8E80 D6 0C D4 0A A2 23 D2 0C  ;
.byt    $D2,$0E,$D4,$0C,$D2,$0A,$D2,$0C; 0x4e98 $8E88 D2 0E D4 0C D2 0A D2 0C  ;
.byt    $D2,$0E,$D4,$0C,$A0,$21,$D2,$0A; 0x4ea0 $8E90 D2 0E D4 0C A0 21 D2 0A  ;
.byt    $D6,$0C,$D4,$0E,$A4,$21,$D4,$0C; 0x4ea8 $8E98 D6 0C D4 0E A4 21 D4 0C  ;
.byt    $D2,$0A,$D4,$0C,$D2,$0E        ; 0x4eb0 $8EA0 D2 0A D4 0C D2 0E        ;
bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_1_and_2:               ;
.byt    $26,$E0,$0E,$48,$D2,$0A,$D6,$01; 0x4eb6 $8EA6 26 E0 0E 48 D2 0A D6 01  ;
.byt    $00,$3B,$D4,$02,$D4,$01,$D3,$08; 0x4ebe $8EAE 00 3B D4 02 D4 01 D3 08  ;
.byt    $D1,$0A,$D4,$01,$00,$33,$D4,$0A; 0x4ec6 $8EB6 D1 0A D4 01 00 33 D4 0A  ;
.byt    $D4,$0E,$E3,$00,$D8,$0A,$D2,$01; 0x4ece $8EBE D4 0E E3 00 D8 0A D2 01  ;
.byt    $00,$35,$D6,$0A,$D6,$0E        ; 0x4ed6 $8EC6 00 35 D6 0A D6 0E        ;
bank1_UNUSED_MAP_DATA:                                                          ;
.byt    $0C,$E0,$0E,$48,$8E,$05,$D4,$09; 0x4edc $8ECC 0C E0 0E 48 8E 05 D4 09  ;
.byt    $E2,$00,$DE,$0E                ; 0x4ee4 $8ED4 E2 00 DE 0E              ;
bank1_Area_Data__West_Hyrule_Bridge_over_Lava__before_Medicine_:                ;
.byt    $16,$E0,$03,$48,$E1,$00,$D0,$00; 0x4ee8 $8ED8 16 E0 03 48 E1 00 D0 00  ;
.byt    $80,$4F,$F0,$2F,$E2,$00,$80,$4F; 0x4ef0 $8EE0 80 4F F0 2F E2 00 80 4F  ;
.byt    $F0,$2F,$E3,$00,$D0,$03        ; 0x4ef8 $8EE8 F0 2F E3 00 D0 03        ;
bank1_Area_Data__West_Hyrule_Grotto_before_200_Exp_Bag__with_Megmats_and_Orange_Goriya_: ;
.byt    $1E,$E0,$0E,$48,$D2,$09,$95,$E2; 0x4efe $8EEE 1E E0 0E 48 D2 09 95 E2  ;
.byt    $94,$E2,$94,$E2,$94,$E2,$94,$E2; 0x4f06 $8EF6 94 E2 94 E2 94 E2 94 E2  ;
.byt    $E2,$00,$99,$E2,$94,$E2,$94,$E2; 0x4f0e $8EFE E2 00 99 E2 94 E2 94 E2  ;
.byt    $94,$E2,$94,$E2,$D5,$0E,$1C,$A0; 0x4f16 $8F06 94 E2 94 E2 D5 0E 1C A0  ;
.byt    $06,$48,$00,$37,$D4,$04,$20,$D4; 0x4f1e $8F0E 06 48 00 37 D4 04 20 D4  ;
.byt    $21,$D4,$D1,$02,$20,$D6,$21,$D6; 0x4f26 $8F16 21 D4 D1 02 20 D6 21 D6  ;
.byt    $D1,$08,$76,$53,$D4,$0E,$D4,$80; 0x4f2e $8F1E D1 08 76 53 D4 0E D4 80  ;
.byt    $D4,$0F                        ; 0x4f36 $8F26 D4 0F                    ;
bank1_Area_Data__West_Hyrule_Bubble_Path:                                       ;
.byt    $34,$E0,$F6,$39,$D6,$80,$F0,$21; 0x4f38 $8F28 34 E0 F6 39 D6 80 F0 21  ;
.byt    $D2,$85,$D6,$80,$F0,$21,$D2,$86; 0x4f40 $8F30 D2 85 D6 80 F0 21 D2 86  ;
.byt    $D4,$80,$F0,$21,$D2,$86,$D6,$80; 0x4f48 $8F38 D4 80 F0 21 D2 86 D6 80  ;
.byt    $F0,$21,$D2,$85,$D2,$80,$F0,$21; 0x4f50 $8F40 F0 21 D2 85 D2 80 F0 21  ;
.byt    $D2,$85,$D6,$80,$F0,$21,$D2,$84; 0x4f58 $8F48 D2 85 D6 80 F0 21 D2 84  ;
.byt    $D6,$80,$F0,$21,$D2,$85,$D6,$80; 0x4f60 $8F50 D6 80 F0 21 D2 85 D6 80  ;
.byt    $F0,$21,$D2,$86                ; 0x4f68 $8F58 F0 21 D2 86              ;
bank1_Area_Data__West_Hyrule_Graveyard_Area_near_Kings_Tomb__with_Red_Jar_:     ;
.byt    $13,$60,$F0,$31,$D8,$81,$DA,$82; 0x4f6c $8F5C 13 60 F0 31 D8 81 DA 82  ;
.byt    $8A,$B7,$74,$00,$84,$0F,$11,$DA; 0x4f74 $8F64 8A B7 74 00 84 0F 11 DA  ;
.byt    $81,$DA,$80                    ; 0x4f7c $8F6C 81 DA 80                 ;
bank1_Area_Data__West_Hyrule_Tunnel_South_of_Kings_Tomb:                        ;
.byt    $2E,$E0,$06,$48,$00,$35,$D4,$04; 0x4f7f $8F6F 2E E0 06 48 00 35 D4 04  ;
.byt    $D2,$0A,$90,$E3,$91,$E3,$D1,$0C; 0x4f87 $8F77 D2 0A 90 E3 91 E3 D1 0C  ;
.byt    $D2,$0D,$DC,$80,$D4,$0D,$DA,$00; 0x4f8f $8F7F D2 0D DC 80 D4 0D DA 00  ;
.byt    $D2,$07,$30,$E1,$31,$E1,$31,$E1; 0x4f97 $8F87 D2 07 30 E1 31 E1 31 E1  ;
.byt    $31,$E1,$31,$E1,$31,$E1,$31,$E1; 0x4f9f $8F8F 31 E1 31 E1 31 E1 31 E1  ;
.byt    $31,$E1,$31,$E1,$31,$E1        ; 0x4fa7 $8F97 31 E1 31 E1 31 E1        ;
bank1_Area_Data__West_Hyrule_Grotto_South_of_Ruto___Part_3__with_Aches_and_Acheman_: ;
.byt    $0E,$E0,$00,$48,$DC,$02,$D4,$00; 0x4fad $8F9D 0E E0 00 48 DC 02 D4 00  ;
.byt    $E2,$00,$D7,$02,$D1,$06        ; 0x4fb5 $8FA5 E2 00 D7 02 D1 06        ;
bank1_Area_Data__West_Hyrule_Random_Battle___Road__North_West_and_South_West_Hyrule_: ;
.byt    $1F,$01,$C2,$11,$94,$90,$94,$91; 0x4fbb $8FAB 1F 01 C2 11 94 90 94 91  ;
.byt    $96,$90,$94,$91                ; 0x4fc3 $8FB3 96 90 94 91              ;
L8FB7:                                                                          ;
.byt    $94,$92,$94,$90,$98,$92,$94,$90; 0x4fc7 $8FB7 94 92 94 90 98 92 94 90  ;
.byt    $94,$91,$92,$0F,$12,$94,$90,$96; 0x4fcf $8FBF 94 91 92 0F 12 94 90 96  ;
.byt    $90,$94,$90                    ; 0x4fd7 $8FC7 90 94 90                 ;
bank1_Area_Data__West_Hyrule_Grotto_with_200_Exp_Bag__dead_end_:                ;
.byt    $13,$E0,$80,$4D,$E1,$00,$A5,$0F; 0x4fda $8FCA 13 E0 80 4D E1 00 A5 0F  ;
.byt    $0C,$D3,$0F,$E2,$00,$D8,$09,$E3; 0x4fe2 $8FD2 0C D3 0F E2 00 D8 09 E3  ;
.byt    $00,$D8,$0E                    ; 0x4fea $8FDA 00 D8 0E                 ;
bank1_Area_Data__West_Hyrule_Grotto_with_Heart_Container__dead_end_:            ;
.byt    $13,$E0,$80,$4D,$E1,$00,$A5,$0F; 0x4fed $8FDD 13 E0 80 4D E1 00 A5 0F  ;
.byt    $0F,$D3,$0F,$E2,$00,$D8,$09,$E3; 0x4ff5 $8FE5 0F D3 0F E2 00 D8 09 E3  ;
.byt    $00,$D8,$0E                    ; 0x4ffd $8FED 00 D8 0E                 ;
bank1_Area_Data__West_Hyrule_Grotto_with_Magic_Container__South_of_North_Castle_: ;
.byt    $2D,$E0,$03,$48,$0A,$3F,$10,$3F; 0x5000 $8FF0 2D E0 03 48 0A 3F 10 3F  ;
.byt    $22,$3D,$30,$3D,$48,$35,$06,$3B; 0x5008 $8FF8 22 3D 30 3D 48 35 06 3B  ;
L9000:                                                                          ;
.byt    $10,$3B,$20,$3B,$30,$37,$40,$37; 0x5010 $9000 10 3B 20 3B 30 37 40 37  ;
.byt    $E2,$00,$DE,$02,$D1,$03,$D2,$02; 0x5018 $9008 E2 00 DE 02 D1 03 D2 02  ;
.byt    $D1,$03,$D2,$02,$D1,$03,$D5,$05; 0x5020 $9010 D1 03 D2 02 D1 03 D5 05  ;
.byt    $51,$0F,$0E,$D3,$0F            ; 0x5028 $9018 51 0F 0E D3 0F           ;
bank1_Area_Data__West_Hyrule_Random_Battle___Forest__South_West_Hyrule_:        ;
.byt    $22,$48,$1E,$62,$D2,$0D,$D4,$0C; 0x502d $901D 22 48 1E 62 D2 0D D4 0C  ;
.byt    $D2,$0B,$D2,$0C,$D2,$0D,$D2,$0E; 0x5035 $9025 D2 0B D2 0C D2 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0E,$D4,$0D,$D2,$0E; 0x503d $902D D2 0D D4 0E D4 0D D2 0E  ;
.byt    $D2,$0D,$D4,$0C,$D2            ; 0x5045 $9035 D2 0D D4 0C D2           ;
L903A:                                                                          ;
.byt    $0B,$D6,$0C,$D4,$0D            ; 0x504a $903A 0B D6 0C D4 0D           ;
bank1_Area_Data__West_Hyrule_Forest_Area_with_no_trees:                         ;
.byt    $0A,$08,$90,$61,$E1,$00,$94,$03; 0x504f $903F 0A 08 90 61 E1 00 94 03  ;
.byt    $98,$03                        ; 0x5057 $9047 98 03                    ;
bank1_Area_Data__West_Hyrule_Grotto_with_Medicine__dead_end_:                   ;
.byt    $13,$E0,$01,$48,$E3,$00,$96,$21; 0x5059 $9049 13 E0 01 48 E3 00 96 21  ;
.byt    $F2,$21,$92,$23,$82,$21,$70,$0F; 0x5061 $9051 F2 21 92 23 82 21 70 0F  ;
.byt    $15,$D2,$0F                    ; 0x5069 $9059 15 D2 0F                 ;
Hyrule_Overworld_Map_Data:                                           ;
.byt    $BB,$DC,$74,$FC,$BC,$14,$CB,$BC; 0x506c $905C BB DC 74 FC BC 14 CB BC  ;
.byt    $24,$2B,$44,$FC,$7C,$34,$FB,$6C; 0x5074 $9064 24 2B 44 FC 7C 34 FB 6C  ;
.byt    $44,$0B,$01,$0B,$54,$FC,$4C,$34; 0x507c $906C 44 0B 01 0B 54 FC 4C 34  ;
.byt    $02,$04,$FB,$2B,$1C,$F4,$04,$FC; 0x5084 $9074 02 04 FB 2B 1C F4 04 FC  ;
.byt    $3C,$54,$FB,$2B,$74,$A4,$FC,$2C; 0x508c $907C 3C 54 FB 2B 74 A4 FC 2C  ;
.byt    $64,$59,$CB,$F4,$34,$FC,$0C,$74; 0x5094 $9084 64 59 CB F4 34 FC 0C 74  ;
.byt    $19,$00,$29,$BB,$F4,$44,$BC,$C4; 0x509c $908C 19 00 29 BB F4 44 BC C4  ;
.byt    $89,$7B,$F4,$64,$7C,$E4,$0C,$99; 0x50a4 $9094 89 7B F4 64 7C E4 0C 99  ;
.byt    $5B,$F4,$74,$6C,$F4,$0C,$59,$1B; 0x50ac $909C 5B F4 74 6C F4 0C 59 1B  ;
.byt    $D9,$F4,$24,$4C,$F4,$04,$0C,$09; 0x50b4 $90A4 D9 F4 24 4C F4 04 0C 09  ;
.byt    $7B,$B6,$59,$54,$55,$14,$3C,$F4; 0x50bc $90AC 7B B6 59 54 55 14 3C F4  ;
.byt    $14,$0C,$09,$7B,$F6,$06,$19,$24; 0x50c4 $90B4 14 0C 09 7B F6 06 19 24  ;
.byt    $95,$1C,$4B,$01,$1B,$B4,$0C,$09; 0x50cc $90BC 95 1C 4B 01 1B B4 0C 09  ;
.byt    $7B,$F6,$16,$19,$04,$65,$06,$25; 0x50d4 $90C4 7B F6 16 19 04 65 06 25  ;
.byt    $CB,$74,$1C,$09,$7B,$F6,$26,$A9; 0x50dc $90CC CB 74 1C 09 7B F6 26 A9  ;
.byt    $15,$FB,$44,$1C,$09,$8B,$56,$B6; 0x50e4 $90D4 15 FB 44 1C 09 8B 56 B6  ;
.byt    $95,$39,$FB,$0B,$24,$1C,$09,$9B; 0x50ec $90DC 95 39 FB 0B 24 1C 09 9B  ;
.byt    $E6,$E5,$49,$36,$9B,$14,$1C,$09; 0x50f4 $90E4 E6 E5 49 36 9B 14 1C 09  ;
.byt    $AB,$B6,$E5,$29,$25,$29,$36,$2B; 0x50fc $90EC AB B6 E5 29 25 29 36 2B  ;
.byt    $01,$3B,$04,$2C,$09,$AB,$35,$66; 0x5104 $90F4 01 3B 04 2C 09 AB 35 66  ;
.byt    $E5,$19,$65,$19,$66,$3B,$04,$2C; 0x510c $90FC E5 19 65 19 66 3B 04 2C  ;
.byt    $09,$AB,$55,$36,$2C,$B5,$19,$85; 0x5114 $9104 09 AB 55 36 2C B5 19 85  ;
.byt    $09,$56,$4B,$04,$2C,$09,$AB,$75; 0x511c $910C 09 56 4B 04 2C 09 AB 75  ;
.byt    $5C,$95,$19,$35,$36,$15,$09,$56; 0x5124 $9114 5C 95 19 35 36 15 09 56  ;
.byt    $4B,$04,$2C,$19,$8B,$75,$8C,$65; 0x512c $911C 4B 04 2C 19 8B 75 8C 65  ;
.byt    $19,$25,$56,$15,$09,$46,$5B,$04; 0x5134 $9124 19 25 56 15 09 46 5B 04  ;
.byt    $2C,$0B,$19,$5B,$85,$3C,$29,$3C; 0x513c $912C 2C 0B 19 5B 85 3C 29 3C  ;
.byt    $45,$19,$25,$56,$15,$19,$36,$5B; 0x5144 $9134 45 19 25 56 15 19 36 5B  ;
.byt    $14,$2C,$0B,$29,$5B,$75,$3C,$09; 0x514c $913C 14 2C 0B 29 5B 75 3C 09  ;
.byt    $02,$A9,$25,$66,$15,$09,$36,$6B; 0x5154 $9144 02 A9 25 66 15 09 36 6B  ;
.byt    $14,$2C,$39,$7B,$55,$3C,$29,$3C; 0x515c $914C 14 2C 39 7B 55 3C 29 3C  ;
.byt    $85,$56,$25,$09,$26,$8B,$09,$2C; 0x5164 $9154 85 56 25 09 26 8B 09 2C  ;
.byt    $39,$8B,$45,$AC,$75,$66,$15,$00; 0x516c $915C 39 8B 45 AC 75 66 15 00  ;
.byt    $09,$16,$9B,$09,$2C,$39,$8B,$55; 0x5174 $9164 09 16 9B 09 2C 39 8B 55  ;
.byt    $8C,$75,$76,$25,$09,$BB,$09,$2C; 0x517c $916C 8C 75 76 25 09 BB 09 2C  ;
.byt    $39,$9B,$55,$3C,$25,$75,$46,$5B; 0x5184 $9174 39 9B 55 3C 25 75 46 5B  ;
.byt    $05,$09,$BB,$19,$1C,$39,$9B,$85; 0x518c $917C 05 09 BB 19 1C 39 9B 85  ;
.byt    $15,$3B,$55,$16,$9B,$0E,$CB,$09; 0x5194 $9184 15 3B 55 16 9B 0E CB 09  ;
.byt    $1C,$0B,$01,$CB,$65,$8B,$25,$CB; 0x519c $918C 1C 0B 01 CB 65 8B 25 CB  ;
.byt    $09,$15,$AB,$19,$0C,$FB,$35,$FB; 0x51a4 $9194 09 15 AB 19 0C FB 35 FB  ;
.byt    $8B,$15,$09,$45,$8B,$09,$0C,$FB; 0x51ac $919C 8B 15 09 45 8B 09 0C FB  ;
.byt    $01,$FB,$9B,$35,$09,$55,$7B,$19; 0x51b4 $91A4 01 FB 9B 35 09 55 7B 19  ;
.byt    $FB,$FB,$8B,$55,$09,$55,$8B,$09; 0x51bc $91AC FB FB 8B 55 09 55 8B 09  ;
.byt    $2B,$01,$CB,$27,$FB,$1B,$01,$1B; 0x51c4 $91B4 2B 01 CB 27 FB 1B 01 1B  ;
.byt    $55,$09,$45,$0E,$01,$7B,$09,$1B; 0x51cc $91BC 55 09 45 0E 01 7B 09 1B  ;
.byt    $35,$3B,$B7,$FB,$85,$09,$55,$6B; 0x51d4 $91C4 35 3B B7 FB 85 09 55 6B  ;
.byt    $26,$0B,$55,$06,$1B,$07,$02,$67; 0x51dc $91CC 26 0B 55 06 1B 07 02 67  ;
.byt    $19,$17,$CB,$A5,$09,$55,$6B,$06; 0x51e4 $91D4 19 17 CB A5 09 55 6B 06  ;
.byt    $05,$06,$35,$47,$1B,$37,$09,$97; 0x51ec $91DC 05 06 35 47 1B 37 09 97  ;
.byt    $7B,$B5,$19,$45,$7B,$26,$15,$67; 0x51f4 $91E4 7B B5 19 45 7B 26 15 67  ;
.byt    $4B,$C7,$29,$D7,$15,$09,$55,$AB; 0x51fc $91EC 4B C7 29 D7 15 09 55 AB  ;
.byt    $15,$57,$8B,$67,$5B,$47,$A7,$09; 0x5204 $91F4 15 57 8B 67 5B 47 A7 09  ;
.byt    $45,$BB,$05,$67,$FB,$7B,$37,$19; 0x520c $91FC 45 BB 05 67 FB 7B 37 19  ;
.byt    $77,$09,$35,$CB,$05,$67,$0B,$01; 0x5214 $9204 77 09 35 CB 05 67 0B 01  ;
.byt    $FB,$6B,$C7,$09,$15,$EB,$05,$77; 0x521c $920C FB 6B C7 09 15 EB 05 77  ;
.byt    $0E,$07,$FB,$4B,$D7,$09,$FB,$0B; 0x5224 $9214 0E 07 FB 4B D7 09 FB 0B  ;
.byt    $05,$B7,$FB,$1B,$97,$4B,$09,$CB; 0x522c $921C 05 B7 FB 1B 97 4B 09 CB  ;
.byt    $24,$0C,$15,$C7,$DB,$97,$6B,$09; 0x5234 $9224 24 0C 15 C7 DB 97 6B 09  ;
.byt    $AB,$44,$0C,$25,$B7,$15,$AB,$A7; 0x523c $922C AB 44 0C 25 B7 15 AB A7  ;
.byt    $6B,$09,$8B,$54,$1C,$35,$A7,$45; 0x5244 $9234 6B 09 8B 54 1C 35 A7 45  ;
.byt    $6B,$16,$87,$6B,$19,$6B,$74,$1C; 0x524c $923C 6B 16 87 6B 19 6B 74 1C  ;
.byt    $25,$A7,$35,$A6,$15,$67,$6B,$09; 0x5254 $9244 25 A7 35 A6 15 67 6B 09  ;
.byt    $4B,$84,$00,$2C,$15,$77,$55,$B6; 0x525c $924C 4B 84 00 2C 15 77 55 B6  ;
.byt    $35,$57,$5B,$19,$2B,$B4,$2C,$15; 0x5264 $9254 35 57 5B 19 2B B4 2C 15  ;
.byt    $37,$85,$B6,$55,$47,$2B,$49,$0E; 0x526c $925C 37 85 B6 55 47 2B 49 0E  ;
.byt    $D9,$03,$1C,$2C,$17,$95,$86,$F9; 0x5274 $9264 D9 03 1C 2C 17 95 86 F9  ;
.byt    $19,$5B,$C4,$2C,$1B,$1C,$B5,$16; 0x527c $926C 19 5B C4 2C 1B 1C B5 16  ;
.byt    $69,$26,$A5,$8B,$D4,$1C,$2B,$1C; 0x5284 $9274 69 26 A5 8B D4 1C 2B 1C  ;
.byt    $B5,$19,$E6,$45,$7B,$E4,$1C,$3B; 0x528c $927C B5 19 E6 45 7B E4 1C 3B  ;
.byt    $2C,$85,$19,$55,$D6,$7B,$F4,$04; 0x5294 $9284 2C 85 19 55 D6 7B F4 04  ;
.byt    $0C,$5B,$9C,$03,$0C,$65,$C6,$7B; 0x529c $928C 0C 5B 9C 03 0C 65 C6 7B  ;
.byt    $F4,$14,$6B,$05,$75,$09,$3C,$45; 0x52a4 $9294 F4 14 6B 05 75 09 3C 45  ;
.byt    $A6,$7B,$19,$A8,$54,$6B,$35,$59; 0x52ac $929C A6 7B 19 A8 54 6B 35 59  ;
.byt    $25,$3C,$15,$A6,$6B,$19,$B8,$54; 0x52b4 $92A4 25 3C 15 A6 6B 19 B8 54  ;
.byt    $7B,$15,$19,$A5,$2C,$96,$6B,$19; 0x52bc $92AC 7B 15 19 A5 2C 96 6B 19  ;
.byt    $C8,$54,$8B,$19,$85,$06,$35,$1C; 0x52c4 $92B4 C8 54 8B 19 85 06 35 1C  ;
.byt    $36,$44,$4B,$29,$D8,$34,$1C,$7B; 0x52cc $92BC 36 44 4B 29 D8 34 1C 7B  ;
.byt    $19,$F5,$03,$54,$06,$04,$4B,$19; 0x52d4 $92C4 19 F5 03 54 06 04 4B 19  ;
.byt    $68,$29,$58,$24,$2C,$7B,$09,$E5; 0x52dc $92CC 68 29 58 24 2C 7B 09 E5  ;
.byt    $7C,$24,$3B,$04,$09,$78,$09,$08; 0x52e4 $92D4 7C 24 3B 04 09 78 09 08  ;
.byt    $09,$58,$24,$2C,$7C,$00,$85,$FC; 0x52ec $92DC 09 58 24 2C 7C 00 85 FC  ;
.byt    $0C,$2B,$14,$09,$78,$29,$58,$14; 0x52f4 $92E4 0C 2B 14 09 78 29 58 14  ;
.byt    $3C,$6B,$FC,$BC,$44,$09,$F8,$08; 0x52fc $92EC 3C 6B FC BC 44 09 F8 08  ;
.byt    $04,$4C,$7B,$00,$39,$3C,$2B,$FC; 0x5304 $92F4 04 4C 7B 00 39 3C 2B FC  ;
.byt    $34,$09,$F8,$08,$5C,$7B,$79,$3B; 0x530c $92FC 34 09 F8 08 5C 7B 79 3B  ;
.byt    $34,$BC,$34,$09,$F8,$6C,$7B,$79; 0x5314 $9304 34 BC 34 09 F8 6C 7B 79  ;
.byt    $2B,$54,$AC,$34,$09,$E8,$7C,$8B; 0x531c $930C 2B 54 AC 34 09 E8 7C 8B  ;
.byt    $59,$4B,$44,$AC,$34,$09,$D8,$8C; 0x5324 $9314 59 4B 44 AC 34 09 D8 8C  ;
.byt    $9B,$01,$AB,$34,$9C,$24,$19,$D8; 0x532c $931C 9B 01 AB 34 9C 24 19 D8  ;
.byt    $2C,$24,$2C,$FB,$4B,$01,$34,$8C; 0x5334 $9324 2C 24 2C FB 4B 01 34 8C  ;
.byt    $24,$19,$04,$C8,$2C,$44,$1C,$FB; 0x533c $932C 24 19 04 C8 2C 44 1C FB  ;
.byt    $6B,$24,$83,$39,$14,$B8,$2C,$14; 0x5344 $9334 6B 24 83 39 14 B8 2C 14  ;
.byt    $2B,$14,$0C,$FB,$9B,$8C,$54,$A8; 0x534c $933C 2B 14 0C FB 9B 8C 54 A8  ;
.byt    $3C,$04,$02,$2B,$24,$FB,$9B,$8C; 0x5354 $9344 3C 04 02 2B 24 FB 9B 8C  ;
.byt    $54,$88,$5C,$04,$4B,$14,$FB,$9B; 0x535c $934C 54 88 5C 04 4B 14 FB 9B  ;
.byt    $9C,$44,$78,$6C,$04,$4B,$14,$FB; 0x5364 $9354 9C 44 78 6C 04 4B 14 FB  ;
.byt    $9B,$9C,$44,$68,$7C,$5B,$14,$FB; 0x536c $935C 9B 9C 44 68 7C 5B 14 FB  ;
.byt    $8B,$BC,$34,$48,$AC,$1B,$01,$24; 0x5374 $9364 8B BC 34 48 AC 1B 01 24  ;
.byt    $0C,$FB,$8B,$CC,$24,$38,$CC,$4B; 0x537c $936C 0C FB 8B CC 24 38 CC 4B  ;
.byt    $0C,$FB,$7B,$EC,$14,$18,$FC,$2B; 0x5384 $9374 0C FB 7B EC 14 18 FC 2B  ;
.byt    $1C                            ; 0x538c $937C 1C                       ;
Table_3_for_Area_Objects_Tile_Mappings:
bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Curtains_Top:         ;
.byt    $84,$84,$86,$86                ; 0x538d $937D 84 84 86 86              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Curtains_Bottom:      ;
.byt    $84,$85,$86,$87                ; 0x5391 $9381 84 85 86 87              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Cloud_Left:                        ;
.byt    $B3,$B4,$B5,$B6                ; 0x5395 $9385 B3 B4 B5 B6              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Long_Cloud_Right:                  ;
.byt    $B5,$B6,$B7,$B8                ; 0x5399 $9389 B5 B6 B7 B8              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Short_Cloud_Right:                 ;
.byt    $B7,$B8,$F4,$F4                ; 0x539d $938D B7 B8 F4 F4              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Gravestone:                        ;
.byt    $AF,$B0,$B1,$B2                ; 0x53a1 $9391 AF B0 B1 B2              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Cross:                             ;
.byt    $AD,$AE,$F4,$F4                ; 0x53a5 $9395 AD AE F4 F4              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_Slanted_Cross:                     ;
.byt    $AB,$AC,$F4,$F4                ; 0x53a9 $9399 AB AC F4 F4              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_unknown0:                          ;
.byt    $FE,$FE,$FE,$FE                ; 0x53ad $939D FE FE FE FE              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_North_Castle_Floor:                ;
.byt    $7E,$7E,$7E,$7E                ; 0x53b1 $93A1 7E 7E 7E 7E              ;
bank1_Table_3_for_Area_Objects_Tile_Mappings_unknown1:                          ;
.byt    $BA,$BB,$BC,$BD                ; 0x53b5 $93A5 BA BB BC BD              ;
bank1_table2:                                                                   ;
.byt    $52,$8F,$C9                    ; 0x53b9 $93A9 52 8F C9                 ;
; ---------------------------------------------------------------------------- ;
bank1_code8:                                                                    ;
    ASL                                ; 0x53bc $93AC 0A                       ;
    TAY                                ; 0x53bd $93AD A8                       ;
    LDA      $6000,y                   ; 0x53be $93AE B9 00 60                 ;
    STA      zp_0E                     ; 0x53c1 $93B1 85 0E                    ;
    LDA      $6001,y                   ; 0x53c3 $93B3 B9 01 60                 ;
    STA      zp_0F                       ; 0x53c6 $93B6 85 0F                    ;
    LDY      #$00                      ; 0x53c8 $93B8 A0 00                    ; Y = 00
    RTS                                ; 0x53ca $93BA 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
setpos $9400
; ---------------------------------------------------------------------------- ;
bank1_pointer_table:                                                            ;
.word    bank1_Various_Projectiles     ; 0x5410 $9400 39 96                    ;
.word    L9647                         ; 0x5412 $9402 47 96                    ;
.word    L965A                         ; 0x5414 $9404 5A 96                    ;
.word    L9634                         ; 0x5416 $9406 34 96                    ;
.word    L963E                         ; 0x5418 $9408 3E 96                    ;
.word    bank1_code11                  ; 0x541a $940A 64 96                    ;
.word    bank1_Various_Projectiles     ; 0x541c $940C 39 96                    ;
; ---------------------------------------------------------------------------- ;
bank1_table3:                                                                   ;
.byt    $00,$00,$00,$00,$00,$00,$00,$00; 0x541e $940E 00 00 00 00 00 00 00 00  ;
.byt    $00,$00,$00                    ; 0x5426 $9416 00 00 00                 ;
bank1_table4:                                                                   ;
.byt    $80,$41,$81,$49,$42,$93,$00,$00; 0x5429 $9419 80 41 81 49 42 93 00 00  ;Has something to do with projectiles collision test and shield absorption
bank1_Enemy_Hit_Points:                                                         ;
.byt    $00,$00,$00,$03,$03,$03,$08,$03; 0x5431 $9421 00 00 00 03 03 03 08 03  ;
.byt    $00,$00,$08,$02,$02,$03,$04,$03; 0x5439 $9429 00 00 08 02 02 03 04 03  ;
.byt    $03,$04,$04,$00,$04,$0C,$12,$12; 0x5441 $9431 03 04 04 00 04 0C 12 12  ;
.byt    $18,$0C,$0E,$12,$04,$03,$03,$04; 0x5449 $9439 18 0C 0E 12 04 03 03 04  ;
.byt    $08,$00,$02,$00                ; 0x5451 $9441 08 00 02 00              ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_pointers:                                             ;
.word    bank1_RTS                     ; 0x5455 $9445 AD 95                    ;Fairy			(00)
.word    bank1_Enemy_Init_Routines_Red_Jar; 0x5457 $9447 20 96                 ;Red Jar			(01)
.word    bank1_RTS                     ; 0x5459 $9449 AD 95                    ;Locked Door		(02)
.word    bank1_RTS                     ; 0x545b $944B AD 95                    ;Myu			(03)
.word    bank1_RTS                     ; 0x545d $944D AD 95                    ;Bot			(04)
.word    bank1_RTS                     ; 0x545f $944F AD 95                    ;Bit			(05)
.word    bank1_RTS                     ; 0x5461 $9451 AD 95                    ;Moa			(06)
.word    bank1_RTS                     ; 0x5463 $9453 AD 95                    ;Ache			(07)
.word    bank1_RTS                     ; 0x5465 $9455 AD 95                    ;?			(08)
.word    bank1_RTS                     ; 0x5467 $9457 AD 95                    ;?			(09)
.word    bank1_RTS                     ; 0x5469 $9459 AD 95                    ;Acheman			(0A)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x546b $945B 4E 98;Bubble Generator	(0B)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x546d $945D 4E 98;Rock Generator		(0C)
.word    bank1_Enemy_Init_Routines_Red_Blue_Deeler; 0x546f $945F 25 96         ;Red Deeler		(0D)
.word    bank1_Enemy_Init_Routines_Red_Blue_Deeler; 0x5471 $9461 25 96         ;Blue Deeler		(0E)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x5473 $9463 4E 98;Bago Bago Generator	(0F)
.word    bank1_RTS                     ; 0x5475 $9465 AD 95                    ;Bago Bago		(10)
.word    bank1_RTS                     ; 0x5477 $9467 AD 95                    ;Red Octorok - Jumping	(11)
.word    bank1_RTS                     ; 0x5479 $9469 AD 95                    ;Red Octorok - Moving	(12)
.word    bank1_RTS                     ; 0x547b $946B AD 95                    ;Elevator		(13)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x547d $946D 31 96     ;Moblin - Orange		(14)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x547f $946F 31 96     ;Moblin - Red		(15)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5481 $9471 31 96     ;Moblin - Blue		(16)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5483 $9473 31 96     ;Daira - Orange		(17)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5485 $9475 31 96     ;Daira - Red		(18)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5487 $9477 31 96     ;Goriya - Orange		(19)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x5489 $9479 31 96     ;Goriya - Red		(1A)
.word    bank1_Enemy_Init_Routines_Moblin_Daira_Goriya; 0x548b $947B 31 96     ;Goriya - Blue		(1B)
.word    bank1_RTS                     ; 0x548d $947D AD 95                    ;Lowder			(1C)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x548f $947F 4E 98;Moby Generator		(1D)
.word    bank1_RTS                     ; 0x5491 $9481 AD 95                    ;Moby			(1E)
.word    bank1_RTS                     ; 0x5493 $9483 AD 95                    ;Megmat			(1F)
.word    bank1_Enemy_Init_Routines_Geldarm; 0x5495 $9485 6C 98                 ;Geldarm			(20)
.word    bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator; 0x5497 $9487 4E 98;Dumb Moblin Generator	(21)
.word    bank1_RTS                     ; 0x5499 $9489 AD 95                    ;Dumb Moblin		(22)
.word    $0000                         ; 0x549b $948B 00 00                    ;?			(23)
bank1_Pointer_table_for_Enemy_Routines1:                                        ;
.word    bank7_Enemy_Routines1_Fairy   ; 0x549d $948D 1E D9                    ;Fairy
.word    bank7_Enemy_Routines1_Red_Jar ; 0x549f $948F 59 D9                    ;Red Jar
.word    bank7_Enemy_Routines1_Locked_Door; 0x54a1 $9491 91 D9                 ;Locked Door
.word    bank7_Enemy_Routines1_Myu     ; 0x54a3 $9493 47 DA                    ;Myu
.word    bank7_Enemy_Routines1_Bot     ; 0x54a5 $9495 0C DA                    ;Bot
.word    bank7_Enemy_Routines1_Bit     ; 0x54a7 $9497 2B DA                    ;Bit
.word    bank7_Enemy_Routines1_Moa     ; 0x54a9 $9499 CF DA                    ;Moa
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x54ab $949B 53 DB            ;Ache
.word    Enemy_Routines1_unknown0; 0x54ad $949D 98 AB                    ;?
.word    Enemy_Routines1_unknown1; 0x54af $949F E9 AB                    ;?
.word    bank7_Enemy_Routines1_Ache_and_Acheman; 0x54b1 $94A1 53 DB            ;Acheman
.word    bank7_Enemy_Routines1_Raising_Bubbles; 0x54b3 $94A3 15 DC             ;Raising Bubbles
.word    bank7_Desert_Rocks_initialization_routine; 0x54b5 $94A5 4F DC         ;Desert Rocks
.word    bank7_Enemy_Routines1_Deeler  ; 0x54b7 $94A7 DF D6                    ;Deeler
.word    bank7_Enemy_Routines1_Deeler  ; 0x54b9 $94A9 DF D6                    ;Deeler
.word    bank7_Enemy_Routines1_Bago_Bago_Generator; 0x54bb $94AB 8F D7         ;Bago Bago Generator
.word    bank7_Enemy_Routines1_Bago_Bago0; 0x54bd $94AD E1 D7                  ;Bago Bago
.word    bank7_Enemy_Routines1_Bago_Bago1; 0x54bf $94AF 42 D8                  ;Bago Bago
.word    bank7_Enemy_Routines1_Octorok ; 0x54c1 $94B1 88 D8                    ;Octorok
.word    bank7_Enemy_Routines1_Elevator; 0x54c3 $94B3 C2 D8                    ;Elevator
.word    bank1_Enemy_Routines1_Goriya  ; 0x54c5 $94B5 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54c7 $94B7 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54c9 $94B9 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Daira   ; 0x54cb $94BB 15 9A                    ;Daira
.word    bank1_Enemy_Routines1_Daira   ; 0x54cd $94BD 15 9A                    ;Daira
.word    bank1_Enemy_Routines1_Goriya  ; 0x54cf $94BF 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54d1 $94C1 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Goriya  ; 0x54d3 $94C3 72 99                    ;Goriya
.word    bank1_Enemy_Routines1_Lowder  ; 0x54d5 $94C5 C3 98                    ;Lowder
.word    bank1_Enemy_Routines1_Generators; 0x54d7 $94C7 31 9B                  ;Generators
.word    bank1_Enemy_Routines1_Moby    ; 0x54d9 $94C9 94 9B                    ;Moby
.word    bank1_Enemy_Routines1_Megmat  ; 0x54db $94CB 7E 98                    ;Megmat
.word    bank1_Enemy_Routines1_Geldarm ; 0x54dd $94CD B5 9B                    ;Geldarm
.word    bank1_Enemy_Routines1_Dumb_Moblin_Generator; 0x54df $94CF 2F 99       ;Dumb Moblin Generator
.word    bank1_Enemy_Routines1_Dumb_Moblin; 0x54e1 $94D1 4F 99                 ;Dumb Moblin
.word    $0000                         ; 0x54e3 $94D3 00 00                    ;?
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Attributes:                                                         ;
;Enemy Attributes (Palette, Experience Code, etc.) (24 bytes)                  ;
;                                                                              ;
;xx.. ....	Palette Code (0-3)                                                  ;
;..x. ....	No Damage from Sword (needs Fire)                                   ;
;...x ....	Steals Experience Points                                            ;
;.... xxxx	Experience Code (0-F)                                               ;
;                                                                              ;
;40	.x.. ....	Fairy                                                            ;
;40	.x.. ....	Red Jar (or Exp. Bag or Magic/Heart Container)                   ;
;40	.x.. ....	Locked Door                                                      ;
;C2	xx.. ..x.	Myu                                                              ;
;C1	xx.. ...x	Bot                                                              ;
;81	x... ...x	Bit                                                              ;
;94	x..x .x..	Moa                                                              ;
;C2	xx.. ..x.	Ache                                                             ;
;80	x... ....	?                                                                ;
;90	x..x ....	?                                                                ;
;84	x... .x..	Acheman                                                          ;
;10	...x ....	Bubble Generator                                                 ;
;10	...x ....	Rock Generator                                                   ;
;81	x... ...x	Red Deeler                                                       ;
;C2	xx.. ..x.	Blue Deeler                                                      ;
;02	.... ..x.	Bago Bago Generator                                              ;
;92	x..x ..x.	Bago Bago                                                        ;
;84	x... .x..	Red Octorok - Jumping                                            ;
;84	x... .x..	Red Octorok - Moving                                             ;
;40	.x.. ....	Elevator                                                         ;
;44	.x.. .x..	Moblin - Orange                                                  ;
;85	x... .x.x	Moblin - Red                                                     ;
;C5	xx.. .x.x	Moblin - Blue                                                    ;
;48	.x.. x...	Daira - Orange                                                   ;
;89	x... x..x	Daira - Red                                                      ;
;45	.x.. .x.x	Goriya - Orange                                                  ;
;85	x... .x.x	Goriya - Red                                                     ;
;C6	xx.. .xx.	Goriya - Blue                                                    ;
;C2	xx.. ..x.	Lowder                                                           ;
;00	.... ....	Moby Generator                                                   ;
;51	.x.x ...x	Moby                                                             ;
;C3	xx.. ..xx	Megmat                                                           ;
;83	x... ..xx	Geldarm                                                          ;
;00	.... ....	Dumb Moblin Generator                                            ;
;50	.x.x ....	Dumb Moblin                                                      ;
;02	.... ..x.	?                                                                ;
.byt    $40,$40,$40,$C2,$C1,$81,$94,$C2; 0x54e5 $94D5 40 40 40 C2 C1 81 94 C2  ;
.byt    $80,$90,$84,$10,$10,$81,$C2,$02; 0x54ed $94DD 80 90 84 10 10 81 C2 02  ;
.byt    $92,$84,$84,$40,$44,$85,$C5,$48; 0x54f5 $94E5 92 84 84 40 44 85 C5 48  ;
.byt    $89,$45,$85,$C6,$C2,$00,$51,$C3; 0x54fd $94ED 89 45 85 C6 C2 00 51 C3  ;
.byt    $83,$00,$50,$02                ; 0x5505 $94F5 83 00 50 02              ;
bank1_Enemy_Vulnerability_Damage_Codes:                                         ;
;xx.. ....	Strength Code (0 = gives no items, 1 = weak, 2 = strong)            ;
;..x. ....	Immune to Flying Blade and Fire                                     ;
;...x ....	?                                                                   ;
;.... xxxx	Damage Code                                                         ;
;                                                                              ;
;30	..xx ....	Fairy                                                            ;
;30	..xx ....	Red Jar                                                          ;
;30	..xx ....	Locked Door                                                      ;
;41	.x.. ...x	Myu                                                              ;
;40	.x.. ....	Bot                                                              ;
;40	.x.. ....	Bit                                                              ;
;42	.x.. ..x.	Moa                                                              ;
;40	.x.. ....	Ache                                                             ;
;31	..xx ...x	?                                                                ;
;31	..xx ...x	?                                                                ;
;42	.x.. ..x.	Acheman                                                          ;
;30	..xx ....	Bubble Generator                                                 ;
;30	..xx ....	Rock Generator                                                   ;
;40	.x.. ....	Red Deeler                                                       ;
;40	.x.. ....	Blue Deeler                                                      ;
;31	..xx ...x	Bago Bago Generator                                              ;
;41	.x.. ...x	Bago Bago                                                        ;
;41	.x.. ...x	Red Octorok - Jumping                                            ;
;41	.x.. ...x	Red Octorok - Moving                                             ;
;30	..xx ....	Elevator                                                         ;
;41	.x.. ...x	Moblin - Orange                                                  ;
;41	.x.. ...x	Moblin - Red                                                     ;
;41	.x.. ...x	Moblin - Blue                                                    ;
;A2	x.x. ..x.	Daira - Orange                                                   ;
;A2	x.x. ..x.	Daira - Red                                                      ;
;61	.xx. ...x	Goriya - Orange                                                  ;
;61	.xx. ...x	Goriya - Red                                                     ;
;A1	x.x. ...x	Goriya - Blue                                                    ;
;40	.x.. ....	Lowder                                                           ;
;30	..xx ....	Moby Generator                                                   ;
;00	.... ....	Moby                                                             ;
;41	.x.. ...x	Megmat                                                           ;
;51	.x.x ...x	Geldarm                                                          ;
;30	..xx ....	Dumb Moblin Generator                                            ;
;40	.x.. ....	Dumb Moblin                                                      ;
;00	.... ....	?                                                                ;
.byt    $30,$30,$30,$41,$40,$40,$42,$40; 0x5509 $94F9 30 30 30 41 40 40 42 40  ;
.byt    $31,$31,$42,$30,$30,$40,$40,$31; 0x5511 $9501 31 31 42 30 30 40 40 31  ;
.byt    $41,$41,$41,$30,$41,$41,$41,$A2; 0x5519 $9509 41 41 41 30 41 41 41 A2  ;
.byt    $A2,$61,$61,$A1,$40,$30,$00,$41; 0x5521 $9511 A2 61 61 A1 40 30 00 41  ;
.byt    $51,$30,$40,$00                ; 0x5529 $9519 51 30 40 00              ;
bank1_Enemy_Size_Codes:                                                         ;
;00	Moblin Generator                                                           ;
;01	4-Tile Enemies                                                             ;
;02	Myu                                                                        ;
;03	Elevator                                                                   ;
;04	Locked Door                                                                ;
;0F	Fairy, Red Jar (Flying Sword and Fire go through)                          ;
;80	8-Tile Enemies (Moblin, Goriya, Daira, Acheman)                            ;
;85	Geldarm                                                                    ;
.byt    $0F,$0F,$04,$02,$01,$01,$01,$01; 0x552d $951D 0F 0F 04 02 01 01 01 01  ;
.byt    $01,$01,$80,$01,$01,$01,$01,$01; 0x5535 $9525 01 01 80 01 01 01 01 01  ;
.byt    $01,$01,$01,$03,$80,$80,$80,$80; 0x553d $952D 01 01 01 03 80 80 80 80  ;
.byt    $80,$80,$80,$80,$01,$01,$01,$01; 0x5545 $9535 80 80 80 80 01 01 01 01  ;
.byt    $85,$00,$80,$05                ; 0x554d $953D 85 00 80 05              ;
bank1_Other_Enemy_Attributes:                                                   ;
;x... ....	Immune to Thunder Spell                                             ;
;.x.. ....	Regenerates                                                         ;
;..x. ....	?                                                                   ;
;...x ....	Not hittable with sword                                             ;
;.... xxxx	?                                                                   ;
;                                                                              ;
;96	x..x .xx.	Fairy                                                            ;
;86	x... .xx.	Red Jar                                                          ;
;96	x..x .xx.	Locked Door                                                      ;
;46	.x.. .xx.	Myu                                                              ;
;46	.x.. .xx.	Bot                                                              ;
;46	.x.. .xx.	Bit                                                              ;
;06	.... .xx.	Moa                                                              ;
;40	.x.. ....	Ache                                                             ;
;96	x..x .xx.	?                                                                ;
;06	.... .xx.	?                                                                ;
;40	.x.. ....	Acheman                                                          ;
;90	x..x ....	Bubble Generator                                                 ;
;90	x..x ....	Rock Generator                                                   ;
;06	.... .xx.	Deeler - Red                                                     ;
;06	.... .xx.	Deeler - Blue                                                    ;
;90	x..x ....	Bago Bago Generator                                              ;
;06	.... .xx.	Bago Bago                                                        ;
;06	.... .xx.	Red Octorok - Jumping                                            ;
;06	.... .xx.	Red Octorok - Moving                                             ;
;90	x..x ....	Elevator                                                         ;
;00	.... ....	Moblin - Orange                                                  ;
;00	.... ....	Moblin - Red                                                     ;
;00	.... ....	Moblin - Blue                                                    ;
;00	.... ....	Daira - Orange                                                   ;
;00	.... ....	Daira - Red                                                      ;
;00	.... ....	Goriya - Orange                                                  ;
;00	.... ....	Goriya - Red                                                     ;
;00	.... ....	Goriya - Blue                                                    ;
;06	.... .xx.	Lowder                                                           ;
;96	x..x .xx.	Moby Generator                                                   ;
;06	.... .xx.	Moby                                                             ;
;06	.... .xx.	Megmat                                                           ;
;00	.... ....	Geldarm                                                          ;
;00	.... ....	Dumb Moblin Generator                                            ;
;00	.... ....	Dumb Moblin                                                      ;
;00	.... ....	?                                                                ;
.byt    $96,$86,$96,$46,$46,$46,$06,$40; 0x5551 $9541 96 86 96 46 46 46 06 40  ;
.byt    $96,$06,$40,$90,$90,$06,$06,$90; 0x5559 $9549 96 06 40 90 90 06 06 90  ;
.byt    $06,$06,$06,$90,$00,$00,$00,$00; 0x5561 $9551 06 06 06 90 00 00 00 00  ;
.byt    $00,$00,$00,$00,$06,$96,$06,$06; 0x5569 $9559 00 00 00 00 06 96 06 06  ;
.byt    $00,$00,$00,$00                ; 0x5571 $9561 00 00 00 00              ;
; ---------------------------------------------------------------------------- ;
bank1_Pointer_table_for_Enemy_Routines2:                                        ;
.word    bank7_Enemy_Routines2_Fairy   ; 0x5575 $9565 DD F0                    ;Fairy		00
.word    bank7_Enemy_Routines2_RedJar  ; 0x5577 $9567 12 F1                    ;Red Jar		01
.word    bank7_Enemy_Routines2_LockedDoor; 0x5579 $9569 3A F1                  ;Locked Door	02
.word    bank7_Enemy_Routines2_Myu     ; 0x557b $956B C2 EF                    ;Myu		03
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x557d $956D 91 EF                 ;Bot		04
.word    bank7_Enemy_Routines2_Bot_and_Bit; 0x557f $956F 91 EF                 ;Bit		05
.word    bank7_Enemy_Routines2_Moa     ; 0x5581 $9571 F2 EF                    ;Moa		06
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x5583 $9573 7E F1            ;Ache		07
.word    bank7_Enemy_Routines2_unknown ; 0x5585 $9575 D2 EF                    ;?		08
.word    bank7_Enemy_Routines2_unknown ; 0x5587 $9577 D2 EF                    ;?		09
.word    bank7_Enemy_Routines2_Ache_and_Acheman; 0x5589 $9579 7E F1            ;Acheman		0A
.word    $0000                         ; 0x558b $957B 00 00                    ;Bubble generator 0B
.word    $0000                         ; 0x558d $957D 00 00                    ;Rock generator	0C
.word    bank7_Enemy_Routines2_Deeler  ; 0x558f $957F 27 F0                    ;Leeder		0D
.word    bank7_Enemy_Routines2_Deeler  ; 0x5591 $9581 27 F0                    ;Leeder		0E
.word    bank1_RTS                     ; 0x5593 $9583 AD 95                    ;Bago Bago Gen.	0F
.word    bank7_Enemy_Routines2_BagoBago; 0x5595 $9585 B9 F0                    ;Bago Bago	10
.word    bank7_Enemy_Routines2_Octorok ; 0x5597 $9587 A8 F0                    ;Octorok		11
.word    bank7_Enemy_Routines2_Octorok ; 0x5599 $9589 A8 F0                    ;Octorok		12
.word    bank7_Enemy_Routines2_Elevator; 0x559b $958B 47 EF                    ;Elevator	13
.word    bank1_Enemy_Routines2_Moblin  ; 0x559d $958D A4 9C                    ;Moblin (Orange)	14
.word    bank1_Enemy_Routines2_Moblin  ; 0x559f $958F A4 9C                    ;Moblin (Red)	15
.word    bank1_Enemy_Routines2_Moblin  ; 0x55a1 $9591 A4 9C                    ;Moblin (Blue)	16
.word    bank1_Enemy_Routines2_Daira_Orange; 0x55a3 $9593 65 9D                ;Daira (Orange)	17
.word    bank1_Enemy_Routines2_Daira_Red_; 0x55a5 $9595 69 9D                  ;Daira (Red)	18
.word    bank1_Enemy_Routines2_Goriya  ; 0x55a7 $9597 6F 9C                    ;Goriya (Orange)	19
.word    bank1_Enemy_Routines2_Goriya  ; 0x55a9 $9599 6F 9C                    ;Goriya (Red)	1A
.word    bank1_Enemy_Routines2_Goriya  ; 0x55ab $959B 6F 9C                    ;Goriya (Blue)	1B
.word    bank1_Enemy_Routines2_Lowder  ; 0x55ad $959D F1 9D                    ;Lowder		1C
.word    bank1_RTS                     ; 0x55af $959F AD 95                    ;Moby Generator	1D
.word    bank1_Enemy_Routines2_Moby    ; 0x55b1 $95A1 F6 9D                    ;Moby		1E
.word    bank1_Enemy_Routines2_Megmat  ; 0x55b3 $95A3 FB 9D                    ;Megmat		1F
.word    bank1_Geldarm_body_tiles_layout; 0x55b5 $95A5 0C 9E                   ;Geldarm		20
.word    bank1_RTS                     ; 0x55b7 $95A7 AD 95                    ;Dumb Moblin Generator 21
.word    bank1_Enemy_Routines2_DumbMoblin; 0x55b9 $95A9 43 9C                  ;Dumb Moblin	22
.word    $0000                         ; 0x55bb $95AB 00 00                    ;?		23
; ---------------------------------------------------------------------------- ;
bank1_RTS:                                                                      ;
    RTS                                ; 0x55bd $95AD 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table5:                                                                   ;
.byt    $AE,$AA,$AE,$84,$00,$0D,$F6,$00; 0x55be $95AE AE AA AE 84 00 0D F6 00  ;
.byt    $00                            ; 0x55c6 $95B6 00                       ;
bank1_Desert_Rocks_palette_sequence__offset_minus1:                             ;
.byt    $02,$01,$02,$01,$03,$01,$01    ; 0x55c7 $95B7 02 01 02 01 03 01 01     ;
bank1_table_padding_maybe:                                                      ;
.byt    $00,$00,$00,$00                ; 0x55ce $95BE 00 00 00 00              ;Padding ? (4 bytes)
; ---------------------------------------------------------------------------- ;
bank1_Pointer_Table_for_Projectiles_Routines:                                   ;
.word    Projectiles_Routines_Desert_Rock; 0x55d2 $95C2 59 97                  ;Desert Rock
.word    Projectiles_Routines_Raising_Bubble; 0x55d4 $95C4 7B 97               ;Raising Bubble
.word    Projectiles_Routines_Octorok_Rock_or_Flame; 0x55d6 $95C6 6D 97        ;Octorok Rock / Flame
.word    Projectiles_Routines_Octorok_Rock_or_Flame; 0x55d8 $95C8 6D 97        ;Octorok Rock / Flame
.word    Projectiles_Routines_Moblin_Spear; 0x55da $95CA 89 97                 ;
.word    Projectiles_Routines_Boomerang; 0x55dc $95CC A9 97                    ;
.word    Projectiles_Routines_Red_Daria_Axe; 0x55de $95CE C0 97                ;
.word    bank1_RTS                     ; 0x55e0 $95D0 AD 95                    ;
.word    bank1_RTS                     ; 0x55e2 $95D2 AD 95                    ;
; ---------------------------------------------------------------------------- ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame1:                              ;
.byt    $01,$03,$EA,$EC                ; 0x55e4 $95D4 01 03 EA EC              ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame2:                              ;
.byt    $05,$07,$F2,$F4                ; 0x55e8 $95D8 05 07 F2 F4              ;
bank1_Various_Tile_Mappings_Goriya_Throwing_Low:                                ;
.byt    $01,$03,$EA,$0B                ; 0x55ec $95DC 01 03 EA 0B              ;
bank1_Various_Tile_Mappings_Goriya_Throwing_High:                               ;
.byt    $05,$09,$F2,$F4                ; 0x55f0 $95E0 05 09 F2 F4              ;
bank1_Various_Tile_Mappings_Daira_Axe_Back_Swing:                               ;
.byt    $F6,$F8                        ; 0x55f4 $95E4 F6 F8                    ;
bank1_Various_Tile_Mappings_Daira_Axe_Swing_Frame_1:                            ;
.byt    $F6,$F8                        ; 0x55f6 $95E6 F6 F8                    ;
bank1_Various_Tile_Mappings_Daira_Axe_Swing_Frame_2_Orange_only:                ;
.byt    $FA,$F5                        ; 0x55f8 $95E8 FA F5                    ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame_1:                             ;
.byt    $E6,$E8,$EA,$EC                ; 0x55fa $95EA E6 E8 EA EC              ;
bank1_Various_Tile_Mappings_Goriya_Walking_Frame_2:                             ;
.byt    $EE,$F0,$F2,$F4                ; 0x55fe $95EE EE F0 F2 F4              ;
bank1_Various_Tile_Mappings_Moblin_Walking_Frame_1:                             ;
.byt    $0F,$11,$17,$19                ; 0x5602 $95F2 0F 11 17 19              ;
bank1_Various_Tile_Mappings_Moblin_Walking_Frame_2_Head:                        ;
.byt    $25,$27,$0F,$11                ; 0x5606 $95F6 25 27 0F 11              ;
bank1_Various_Tile_Mappings_Moblin_Walking_Frame_2_Feet:                        ;
.byt    $13,$15,$25,$27                ; 0x560a $95FA 13 15 25 27              ;
bank1_Various_Tile_Mappings_Moblin_Before_Throw:                                ;
.byt    $1B,$1D,$1F,$21                ; 0x560e $95FE 1B 1D 1F 21              ;
bank1_Various_Tile_Mappings_Moblin_Spear_Before_Throw:                          ;
.byt    $25,$27,$1B,$23                ; 0x5612 $9602 25 27 1B 23              ;
bank1_Various_Tile_Mappings_Stabbing_Spear_Tip_Dumb_Moblin__Red_Moblin:         ;
.byt    $1F,$21,$25,$27                ; 0x5616 $9606 1F 21 25 27              ;
bank1_Various_Tile_Mappings_Dumb_Moblin_Walking_Frame_1_Feet:                   ;
.byt    $1B,$23,$1F,$21                ; 0x561a $960A 1B 23 1F 21              ;
bank1_Various_Tile_Mappings_Generators_maybe:                                   ;
.byt    $F5,$F5                        ; 0x561e $960E F5 F5                    ;
bank1_Various_Tile_Mappings_Lowder_Frame_1:                                     ;
.byt    $DE,$E0                        ; 0x5620 $9610 DE E0                    ;
bank1_Various_Tile_Mappings_Lowder_Frame_2:                                     ;
.byt    $E2,$E0                        ; 0x5622 $9612 E2 E0                    ;
bank1_Various_Tile_Mappings_Megmat_Frame_1:                                     ;
.byt    $D6,$D8                        ; 0x5624 $9614 D6 D8                    ;
bank1_Various_Tile_Mappings_Megmat_Frame_2:                                     ;
.byt    $DA,$DC                        ; 0x5626 $9616 DA DC                    ;
bank1_Various_Tile_Mappings_Moby_Frame_1:                                       ;
.byt    $D0,$D2                        ; 0x5628 $9618 D0 D2                    ;
bank1_Various_Tile_Mappings_Moby_Frame_2:                                       ;
.byt    $D0,$D4                        ; 0x562a $961A D0 D4                    ;
bank1_Various_Tile_Mappings_Moblin_Thrown_Spear:                                ;
.byt    $25,$27                        ; 0x562c $961C 25 27                    ;
bank1_Various_Tile_Mappings_unknown:                                            ;
.byt    $FC,$FE                        ; 0x562e $961E FC FE                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Red_Jar:                                              ;
    LDA      #$11                      ; 0x5630 $9620 A9 11                    ; A = 11
    STA      zp_AF,x                     ; 0x5632 $9622 95 AF                    ; Item Code
L9624:                                                                          ;
    RTS                                ; 0x5634 $9624 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Red_Blue_Deeler:                                      ;
    LDA      zp_2A,x                     ; 0x5635 $9625 B5 2A                    ; Enemy Y position
    STA      bss_05DD                     ; 0x5637 $9627 8D DD 05                 ;
    CLC                                ; 0x563a $962A 18                       ;
    ADC      #$60                      ; 0x563b $962B 69 60                    ; Go down rope this many pixels
    STA      bss_05DC                     ; 0x563d $962D 8D DC 05                 ;
    RTS                                ; 0x5640 $9630 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Moblin_Daira_Goriya:                                  ;
    DEC      zp_AF,x                     ; 0x5641 $9631 D6 AF                    ;; Various enemy state variables
    RTS                                ; 0x5643 $9633 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9634:                                                                          ;
    JSR      L9EB2                     ; 0x5644 $9634 20 B2 9E                 ;
bank1_table6:                                                                   ;
.byt    $D0,$00                        ; 0x5647 $9637 D0 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_Various_Projectiles:                                                      ;
    LDA      #$FE                      ; 0x5649 $9639 A9 FE                    ; A = FE (1111 1110) (-2)
    STA      bss_0584,x                   ; 0x564b $963B 9D 84 05                 ; Rocks (desert, Octorok) vertical movement
L963E:                                                                          ;
    INC      bss_0584,x                   ; 0x564e $963E FE 84 05                 ; Global gravity for
    INC      bss_0584,x                   ; 0x5651 $9641 FE 84 05                 ; spears, rocks...
    JMP      L96FF                     ; 0x5654 $9644 4C FF 96                 ; goto $56FF
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9647:                                                                          ;
    LDY      #$04                      ; 0x5657 $9647 A0 04                    ; Y = 04 (0000 0100)
    INC      bss_044C,x                   ; 0x5659 $9649 FE 4C 04                 ;
    LDA      bss_044C,x                   ; 0x565c $964C BD 4C 04                 ;
    AND      #$10                      ; 0x565f $964F 29 10                    ; keep bits ...x ....
    BEQ      L9655                     ; 0x5661 $9651 F0 02                    ; if bit 4 is 0, skip to $5655 (< 0F)
    LDY      #$FC                      ; 0x5663 $9653 A0 FC                    ; Y = FC (1111 1100)
L9655:                                                                          ;
    STY      zp_77,x                     ; 0x5665 $9655 94 77                    ;; Projectile X Velocity
    JMP      L96FF                     ; 0x5667 $9657 4C FF 96                 ; goto $56FF
                                                                               ;
; ---------------------------------------------------------------------------- ;
L965A:                                                                          ;
    JSR      L96EB                     ; 0x566a $965A 20 EB 96                 ; goto $56EB
L965F     = * + $0002                                                          ;
    JMP      bank1_Various_Projectiles ; 0x566d $965D 4C 39 96                 ; goto $5639
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_various_boomerang_velocities:                                   ;
.byt    $FF,$01                        ; 0x5670 $9660 FF 01                    ;
L9662:                                                                          ;
.byt    $FC,$04                        ; 0x5672 $9662 FC 04                    ;
; ---------------------------------------------------------------------------- ;
bank1_code11:                                                                   ;
    JSR      L96EB                     ; 0x5674 $9664 20 EB 96                 ; goto $56EB
    LDA      frame_counter                       ; 0x5677 $9667 A5 12                    ;; Frame Counter (ascending)
    LSR                                ; 0x5679 $9669 4A                       ;
    BCC      L9680                     ; 0x567a $966A 90 14                    ;
    LDA      #$80                      ; 0x567c $966C A9 80                    ; A = 80 (boomerang sound)
    STA      zp_ED                       ; 0x567e $966E 85 ED                    ; Sound Effects Type 2
    LDA      bss_0584,x                   ; 0x5680 $9670 BD 84 05                 ; Projectile Y Velocity
    BMI      L967D                     ; 0x5683 $9673 30 08                    ; if Negative, skip to $567D
    BEQ      L9680                     ; 0x5685 $9675 F0 09                    ; if Zero,     skip to $5680
    DEC      bss_0584,x                   ; 0x5687 $9677 DE 84 05                 ; Projectile Y Velocity
    DEC      bss_0584,x                   ; 0x568a $967A DE 84 05                 ;; Projectile Y Velocity; Projectile Y Velocity
L967D:                                                                          ;
    INC      bss_0584,x                   ; 0x568d $967D FE 84 05                 ; Projectile Y Velocity
L9680:                                                                          ;
    LDA      bss_044C,x                   ; 0x5690 $9680 BD 4C 04                 ;
    BMI      L96B4                     ; 0x5693 $9683 30 2F                    ; if Negative, skip to $56B4
    BNE      L96B1                     ; 0x5695 $9685 D0 2A                    ; if not Zero, skip to $56B1
    LDY      bss_0458,x                   ; 0x5697 $9687 BC 58 04                 ; 0 or 1 (probably)
    LDA      L9662,y                   ; 0x569a $968A B9 62 96                 ; refer to table at $5660 (offset +2)
L968D:                                                                          ;
    STA      bss_0584,x                   ; 0x569d $968D 9D 84 05                 ; Projectile Y Velocity
    LDY      bss_0452,x                   ; 0x56a0 $9690 BC 52 04                 ;
    LDA      zp_77,x                     ; 0x56a3 $9693 B5 77                    ; Projectile X Velocity
    CLC                                ; 0x56a5 $9695 18                       ;
    ADC      L965F,y                   ; 0x56a6 $9696 79 5F 96                 ;
    STA      zp_77,x                     ; 0x56a9 $9699 95 77                    ; Projectile X Velocity
    LDY      #$02                      ; 0x56ab $969B A0 02                    ; Y = 02
    CMP      #$00                      ; 0x56ad $969D C9 00                    ;
    BMI      L96A2                     ; 0x56af $969F 30 01                    ;
    DEY                                ; 0x56b1 $96A1 88                       ;
L96A2:                                                                          ;
    STY      zp_66,x                     ; 0x56b2 $96A2 94 66                    ; Projectile facing direction
    AND      #$3F                      ; 0x56b4 $96A4 29 3F                    ; keep bits ..xx xxxx
    CMP      #$20                      ; 0x56b6 $96A6 C9 20                    ;
L96A8:                                                                          ;
    BNE      L96B4                     ; 0x56b8 $96A8 D0 0A                    ; if Zero, skip to $56B4
    LDA      #$FF                      ; 0x56ba $96AA A9 FF                    ; A = FF (4D -> boomerang go through Goriya)
    STA      bss_044C,x                   ; 0x56bc $96AC 9D 4C 04                 ;
    BNE      L96B4                     ; 0x56bf $96AF D0 03                    ; if not Zero, skip to $56B4
L96B1:                                                                          ;
    DEC      bss_044C,x                   ; 0x56c1 $96B1 DE 4C 04                 ; (boomerang flying back)
L96B4:                                                                          ;
    JSR      L96FF                     ; 0x56c4 $96B4 20 FF 96                 ; goto $56FF
    LDY      bss_044C,x                   ; 0x56c7 $96B7 BC 4C 04                 ;
    DEY                                ; 0x56ca $96BA 88                       ;
    BPL      L96EA                     ; 0x56cb $96BB 10 2D                    ; if Positive, skip to $56EA (RTS)
    LDA      bss_045E,x                   ; 0x56cd $96BD BD 5E 04                 ;
    TAX                                ; 0x56d0 $96C0 AA                       ;
    LDA      zp_B6,x                     ; 0x56d1 $96C1 B5 B6                    ; Generated Enemy Slot
    CMP      #$01                      ; 0x56d3 $96C3 C9 01                    ;
    BNE      L96EA                     ; 0x56d5 $96C5 D0 23                    ; if not Zero, skip to $56EA (RTS)
    LDA      zp_4E,x                     ; 0x56d7 $96C7 B5 4E                    ; Enemy X Position (low byte)
    SBC      bss_072C                     ; 0x56d9 $96C9 ED 2C 07                 ; Scrolling Offset Low Byte
    LDY      #$00                      ; 0x56dc $96CC A0 00                    ; Y = 00
    JSR      bank7_E94C                     ; 0x56de $96CE 20 4C E9                 ; goto $1E94C
    LDY      #$03                      ; 0x56e1 $96D1 A0 03                    ; Y = 03
L96D3:                                                                          ;
    LDA      zp_04,y                     ; 0x56e3 $96D3 B9 04 00                 ;
    STA      zp_00,y                   ; 0x56e6 $96D6 99 00 00                 ;
    DEY                                ; 0x56e9 $96D9 88                       ;
    BPL      L96D3                     ; 0x56ea $96DA 10 F7                    ; if (Y >= 0) loop to $56D3
    LDX      zp_10                       ; 0x56ec $96DC A6 10                    ;; used as monster x register ;draw boss hp bar
    JSR      bank7_E469                     ; 0x56ee $96DE 20 69 E4                 ;
    JSR      bank7_idem__maybe         ; 0x56f1 $96E1 20 F9 E9                 ;
    BCC      L96EA                     ; 0x56f4 $96E4 90 04                    ;
    LDA      #$00                      ; 0x56f6 $96E6 A9 00                    ; A = 00
    STA      zp_87,x                     ; 0x56f8 $96E8 95 87                    ;; Projectile Type
L96EA:                                                                          ;
    RTS                                ; 0x56fa $96EA 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L96EB:                                                                          ;
    LDY      #$02                      ; 0x56fb $96EB A0 02                    ; Y = 02
    LDA      zp_77,x                     ; 0x56fd $96ED B5 77                    ;; Projectile X Velocity
    BMI      L96F2                     ; 0x56ff $96EF 30 01                    ;
    DEY                                ; 0x5701 $96F1 88                       ; (CA -> no projectiles)
L96F2:                                                                          ;
    TYA                                ; 0x5702 $96F2 98                       ;
    CMP      zp_66,x                     ; 0x5703 $96F3 D5 66                    ;; Projectile facing direction
    BEQ      L96EA                     ; 0x5705 $96F5 F0 F3                    ;
    PLA                                ; 0x5707 $96F7 68                       ;
    PLA                                ; 0x5708 $96F8 68                       ;
    INC      bss_0584,x                   ; 0x5709 $96F9 FE 84 05                 ; affects octorok rocks and boomerangs
    INC      bss_0584,x                   ; 0x570c $96FC FE 84 05                 ; when blocked, but not spears
L96FF:                                                                          ;
    JSR      bank7_DED4                     ; 0x570f $96FF 20 D4 DE                 ; goto 1DED4
    LDA      zp_CA                       ; 0x5712 $9702 A5 CA                    ;
    AND      #$FC                      ; 0x5714 $9704 29 FC                    ; keep bits xxxx xx..
    BEQ      L970D                     ; 0x5716 $9706 F0 05                    ; if (A < 04) goto $570D
    LDA      #$00                      ; 0x5718 $9708 A9 00                    ; A = 00 (set to 03 for funny results)
    STA      zp_87,x                     ; 0x571a $970A 95 87                    ;; Projectile Type
    RTS                                ; 0x571c $970C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L970D:                                                                          ;
    JSR      bank1_code12              ; 0x571d $970D 20 18 97                 ; goto $5718
    JSR      bank7_E48A                     ; 0x5720 $9710 20 8A E4                 ; goto $1E48A
L9715     = * + $0002                                                          ;
    JMP      bank7_E3B9                     ; 0x5723 $9713 4C B9 E3                 ; goto $1E3B9
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table7:                                                                   ;
.byt    $40,$00                        ; 0x5726 $9716 40 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_code12:                                                                   ;
    LDA      zp_87,x                     ; 0x5728 $9718 B5 87                    ; Projectile Type (chart below)
; Projectile Type (chart below)                                                ;
;00 = crash                                                                    ;
;01 = Desert rock                                                              ;
;02 = Bubble                                                                   ;
;03 = Octorok rock                                                             ;
;04 = Flame                                                                    ;
;05 = Spear                                                                    ;
;06 = Boomerang                                                                ;
;07 = Axe                                                                      ;
    PHA                                ; 0x572a $971A 48                       ;
    ASL                                ; 0x572b $971B 0A                       ;
    TAY                                ; 0x572c $971C A8                       ;
    LDA      $6EC0,y                   ; 0x572d $971D B9 C0 6E                 ;
    STA      zp_0E                     ; 0x5730 $9720 85 0E                    ;
    LDA      $6EC1,y                   ; 0x5732 $9722 B9 C1 6E                 ;
    STA      zp_0F                       ; 0x5735 $9725 85 0F                    ;
    LDY      zp_97,x                     ; 0x5737 $9727 B4 97                    ;
    LDA      zp_30,x                     ; 0x5739 $9729 B5 30                    ; projectile Y position (display)
    STA      bss_0200,y                   ; 0x573b $972B 99 00 02                 ;
    STA      zp_00                     ; 0x573e $972E 85 00                    ;
    LDA      zp_CE                       ; 0x5740 $9730 A5 CE                    ; projectile X position (display)
    STA      zp_01                       ; 0x5742 $9732 85 01                    ;
    STA      bss_0203,y                   ; 0x5744 $9734 99 03 02                 ;
    PLA                                ; 0x5747 $9737 68                       ;
    TAY                                ; 0x5748 $9738 A8                       ;
    LDA      $6EAD,y                   ; 0x5749 $9739 B9 AD 6E                 ;
    PHA                                ; 0x574c $973C 48                       ;
    LDA      $6EB6,y                   ; 0x574d $973D B9 B6 6E                 ;
    STA      zp_03                       ; 0x5750 $9740 85 03                    ;
    LDY      zp_66,x                     ; 0x5752 $9742 B4 66                    ;; Projectile facing direction
    STY      zp_02                       ; 0x5754 $9744 84 02                    ;
    ORA      L9715,y                   ; 0x5756 $9746 19 15 97                 ;
    LDY      zp_97,x                     ; 0x5759 $9749 B4 97                    ;
    STA      bss_0202,y                   ; 0x575b $974B 99 02 02                 ;
    PLA                                ; 0x575e $974E 68                       ;
    STA      bss_0201,y                   ; 0x575f $974F 99 01 02                 ;
    JMP      (zp_0E)                   ; 0x5762 $9752 6C 0E 00                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_relative_Y_display_of_Desert_Rocks:                             ;
.byt    $00,$02,$00,$FE                ; 0x5765 $9755 00 02 00 FE              ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Desert_Rock:                                               ;
    LDA      frame_counter                       ; 0x5769 $9759 A5 12                    ;; Frame Counter (ascending)
    AND      #$30                      ; 0x576b $975B 29 30                    ; keep bits ..xx ....
    LSR                                ; 0x576d $975D 4A                       ; shift
    LSR                                ; 0x576e $975E 4A                       ; right
    LSR                                ; 0x576f $975F 4A                       ; 4 times
    LSR                                ; 0x5770 $9760 4A                       ; A becomes .... ..xx (frame number 0-2)
    TAX                                ; 0x5771 $9761 AA                       ;
L9764     = * + $0002                                                          ;
    LDA      bss_0200,y                   ; 0x5772 $9762 B9 00 02                 ;
    ADC      bank1_Table_for_relative_Y_display_of_Desert_Rocks,x; 0x5775 $9765 7D 55 97; refer to table at $5755
    STA      bss_0200,y                   ; 0x5778 $9768 99 00 02                 ;
    LDX      zp_10                       ; 0x577b $976B A6 10                    ;; used as monster x register ;draw boss hp bar
Projectiles_Routines_Octorok_Rock_or_Flame:                                     ;
    LDA      frame_counter                       ; 0x577d $976D A5 12                    ;; Frame Counter (ascending)
    ASL                                ; 0x577f $976F 0A                       ;
    ASL                                ; 0x5780 $9770 0A                       ;
    ASL                                ; 0x5781 $9771 0A                       ;
    ASL                                ; 0x5782 $9772 0A                       ;
    ASL                                ; 0x5783 $9773 0A                       ;
    AND      #$80                      ; 0x5784 $9774 29 80                    ; keep bits x... ....
    ORA      bss_0202,y                   ; 0x5786 $9776 19 02 02                 ;
    BNE      L9785                     ; 0x5789 $9779 D0 0A                    ;
Projectiles_Routines_Raising_Bubble:                                            ;
    LDA      frame_counter                       ; 0x578b $977B A5 12                    ;; Frame Counter (ascending)
    ASL                                ; 0x578d $977D 0A                       ;
    ASL                                ; 0x578e $977E 0A                       ;
    ASL                                ; 0x578f $977F 0A                       ;
    SEC                                ; 0x5790 $9780 38                       ;
    ROL                                ; 0x5791 $9781 2A                       ;
    ASL                                ; 0x5792 $9782 0A                       ;
    AND      #$43                      ; 0x5793 $9783 29 43                    ; keep bits .x.. ..xx
L9785:                                                                          ;
    STA      bss_0202,y                   ; 0x5795 $9785 99 02 02                 ;
    RTS                                ; 0x5798 $9788 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Moblin_Spear:                                              ;
    LDA      bss_040E,x                   ; 0x5799 $9789 BD 0E 04                 ; Enemy Hit State
    PHA                                ; 0x579c $978C 48                       ;
    LDA      bss_045E,x                   ; 0x579d $978D BD 5E 04                 ;
    BEQ      L9794                     ; 0x57a0 $9790 F0 02                    ;
    STA      zp_03                       ; 0x57a2 $9792 85 03                    ; set spear palette (?)
L9794:                                                                          ;
    LDA      #$00                      ; 0x57a4 $9794 A9 00                    ; A = 00
    STA      zp_C9                       ; 0x57a6 $9796 85 C9                    ;
    STA      bss_040E,x                   ; 0x57a8 $9798 9D 0E 04                 ; Enemy Hit State
    LDX      #$48                      ; 0x57ab $979B A2 48                    ; Spear Tile Mapping index
    JSR      bank7_F0D7                     ; 0x57ad $979D 20 D7 F0                 ; goto $1F0D7
    PLA                                ; 0x57b0 $97A0 68                       ;
    STA      bss_040E,x                   ; 0x57b1 $97A1 9D 0E 04                 ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    RTS                                ; 0x57b4 $97A4 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Boomerang_mirroring_attributes:                                 ;
.byt    $02,$82,$C2,$42                ; 0x57b5 $97A5 02 82 C2 42              ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Boomerang:                                                 ;
    LDA      frame_counter                       ; 0x57b9 $97A9 A5 12                    ;; Frame Counter (ascending)
    LSR                                ; 0x57bb $97AB 4A                       ;
    LSR                                ; 0x57bc $97AC 4A                       ;
    AND      #$03                      ; 0x57bd $97AD 29 03                    ; keep bits .... ..xx
    LDY      zp_66,x                     ; 0x57bf $97AF B4 66                    ;; Projectile facing direction
    DEY                                ; 0x57c1 $97B1 88                       ;
    BNE      L97B6                     ; 0x57c2 $97B2 D0 02                    ;
    EOR      #$03                      ; 0x57c4 $97B4 49 03                    ; flip bits .... ..xx
L97B6:                                                                          ;
    TAY                                ; 0x57c6 $97B6 A8                       ;
    LDA      bank1_Table_for_Boomerang_mirroring_attributes,y; 0x57c7 $97B7 B9 A5 97; refer to table at $57A5
    LDY      zp_97,x                     ; 0x57ca $97BA B4 97                    ;
    STA      bss_0202,y                   ; 0x57cc $97BC 99 02 02                 ;
    RTS                                ; 0x57cf $97BF 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
Projectiles_Routines_Red_Daria_Axe:                                             ;
    LDA      frame_counter                       ; 0x57d0 $97C0 A5 12                    ;; Frame Counter (ascending)
    AND      #$04                      ; 0x57d2 $97C2 29 04                    ; keep bits .... .x..
    STA      zp_00                     ; 0x57d4 $97C4 85 00                    ;
    LDA      #$F6                      ; 0x57d6 $97C6 A9 F6                    ; A = F6 (tile mapping for Red Daria's axe)
    CLC                                ; 0x57d8 $97C8 18                       ;
    ADC      zp_00                     ; 0x57d9 $97C9 65 00                    ;
    STA      bss_0201,y                   ; 0x57db $97CB 99 01 02                 ;
    LDX      #$02                      ; 0x57de $97CE A2 02                    ; X = 02 (palette for axe's frame)
    LDA      frame_counter                       ; 0x57e0 $97D0 A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x57e2 $97D2 29 08                    ; keep bits .... x...
    BNE      L97D8                     ; 0x57e4 $97D4 D0 02                    ;
    LDX      #$C2                      ; 0x57e6 $97D6 A2 C2                    ; X = C2
L97D8:                                                                          ;
    STX      zp_00                       ; 0x57e8 $97D8 86 00                    ;
    LDX      zp_10                       ; 0x57ea $97DA A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      zp_66,x                     ; 0x57ec $97DC B5 66                    ;; Projectile facing direction
    CMP      #$01                      ; 0x57ee $97DE C9 01                    ;
    BNE      L97E8                     ; 0x57f0 $97E0 D0 06                    ;
    LDA      zp_00                     ; 0x57f2 $97E2 A5 00                    ;
    EOR      #$40                      ; 0x57f4 $97E4 49 40                    ; flip bits .x.. ....
    STA      zp_00                     ; 0x57f6 $97E6 85 00                    ;
L97E8:                                                                          ;
    LDA      zp_00                     ; 0x57f8 $97E8 A5 00                    ;
    STA      bss_0202,y                   ; 0x57fa $97EA 99 02 02                 ;
L97ED:                                                                          ;
    RTS                                ; 0x57fd $97ED 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Moblins_Spear_X_Velocity_:                                      ;
.byt    $28                            ; 0x57fe $97EE 28                       ;
L97EF:                                                                          ;
.byt    $D8,$00,$00                    ; 0x57ff $97EF D8 00 00                 ;
; ---------------------------------------------------------------------------- ;
bank1_code15:                                                                   ;
    LDY      #$05                      ; 0x5802 $97F2 A0 05                    ; Y = 05
L97F4:                                                                          ;
    LDA      zp_87,y                     ; 0x5804 $97F4 B9 87 00                 ;
    BEQ      L97FD                     ; 0x5807 $97F7 F0 04                    ;
    DEY                                ; 0x5809 $97F9 88                       ;
    BPL      L97F4                     ; 0x580a $97FA 10 F8                    ; if (Y >= 0) loop to $57F4
    RTS                                ; 0x580c $97FC 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L97FD:                                                                          ;
    STA      bss_045E,y                   ; 0x580d $97FD 99 5E 04                 ;
    LDA      #$05                      ; 0x5810 $9800 A9 05                    ; A = 05
    STA      zp_87,y                     ; 0x5812 $9802 99 87 00                 ; Projectile Type
    LDA      zp_4E,x                     ; 0x5815 $9805 B5 4E                    ; Enemy X position (low byte)
    STY      zp_00                     ; 0x5817 $9807 84 00                    ;
    LDY      zp_60,x                     ; 0x5819 $9809 B4 60                    ; facing direction?
    ADC      L97EF,y                   ; 0x581b $980B 79 EF 97                 ; refer to table at $57EE (offset +1)
    LDY      zp_00                     ; 0x581e $980E A4 00                    ;
    STA      zp_54,y                     ; 0x5820 $9810 99 54 00                 ;
    LDY      zp_60,x                     ; 0x5823 $9813 B4 60                    ;; Enemy facing direction
    LDA      zp_3C,x                     ; 0x5825 $9815 B5 3C                    ; Enemy X position (high byte)
    ADC      L97EF,y                   ; 0x5827 $9817 79 EF 97                 ; refer to table at $57EE (offset +1)
    LDY      zp_00                     ; 0x582a $981A A4 00                    ;
    STA      zp_42,y                     ; 0x582c $981C 99 42 00                 ;
    LDA      zp_2A,x                     ; 0x582f $981F B5 2A                    ;; Enemy Y Position
    ADC      #$05                      ; 0x5831 $9821 69 05                    ; relative initial Y position of spears
    STA      zp_30,y                     ; 0x5833 $9823 99 30 00                 ; when leaving Moblin's hand
    LDA      zp_1A,x                     ; 0x5836 $9826 B5 1A                    ;
    ADC      #$00                      ; 0x5838 $9828 69 00                    ;
    STA      zp_20,y                     ; 0x583a $982A 99 20 00                 ;
    STY      zp_00                     ; 0x583d $982D 84 00                    ;
    LDA      zp_60,x                     ; 0x583f $982F B5 60                    ; facing direction?
    STA      zp_66,y                     ; 0x5841 $9831 99 66 00                 ;
    TAY                                ; 0x5844 $9834 A8                       ;
    LDA      L97ED,y                   ; 0x5845 $9835 B9 ED 97                 ; refer to table at $57EE (offset -1)
    LDY      zp_00                     ; 0x5848 $9838 A4 00                    ;
    STA      zp_77,y                     ; 0x584a $983A 99 77 00                 ;
    LDA      #$E8                      ; 0x584d $983D A9 E8                    ; Spear's initial Y velocity (D8 - F8)
    STA      bss_0584,y                   ; 0x584f $983F 99 84 05                 ;
    LDA      zp_A1,x                     ; 0x5852 $9842 B5 A1                    ; Enemy Code
    CMP      #$14                      ; 0x5854 $9844 C9 14                    ; 14 = Orange Moblin
L9847     = * + $0001                                                          ;
    BNE      L984D                     ; 0x5856 $9846 D0 05                    ; if not 14, skip to $584D (RTS)
    LDA      #$01                      ; 0x5858 $9848 A9 01                    ; A = 01
    STA      bss_045E,y                   ; 0x585a $984A 99 5E 04                 ; Moblin's Spears Palette
L984D:                                                                          ;
    RTS                                ; 0x585d $984D 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Bubble_Rock_BagoBago_Moby_DumbMoblin_Generator:       ;
    LDY      #$05                      ; 0x585e $984E A0 05                    ; Y = 05
L9850:                                                                          ;
    CPY      zp_10                       ; 0x5860 $9850 C4 10                    ;; used as monster x register ;draw boss hp bar
    BEQ      L9860                     ; 0x5862 $9852 F0 0C                    ;
    LDA      zp_B6,y                     ; 0x5864 $9854 B9 B6 00                 ; Generated Enemy Slot
    BEQ      L9860                     ; 0x5867 $9857 F0 07                    ;
    LDA      zp_A1,y                     ; 0x5869 $9859 B9 A1 00                 ; Enemy Code
    CMP      zp_A1,x                     ; 0x586c $985C D5 A1                    ;; Enemy Code
    BEQ      L9864                     ; 0x586e $985E F0 04                    ;
L9860:                                                                          ;
    DEY                                ; 0x5870 $9860 88                       ;
    BPL      L9850                     ; 0x5871 $9861 10 ED                    ;
    RTS                                ; 0x5873 $9863 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9864:                                                                          ;
    TYA                                ; 0x5874 $9864 98                       ;
    TAX                                ; 0x5875 $9865 AA                       ;
    JSR      bank7_DD3D                     ; 0x5876 $9866 20 3D DD                 ;
    LDX      zp_10                       ; 0x5879 $9869 A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x587b $986B 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Init_Routines_Geldarm:                                              ;
    LDA      #$01                      ; 0x587c $986C A9 01                    ; A = 1
    STA      zp_AF,x                     ; 0x587e $986E 95 AF                    ;; Various enemy state variables
    LSR                                ; 0x5880 $9870 4A                       ; A >> 0
    STA      zp_60,x                     ; 0x5881 $9871 95 60                    ;; Enemy facing direction
    LDA      zp_2A,x                     ; 0x5883 $9873 B5 2A                    ; Enemy Y Position
    ADC      #$3F                      ; 0x5885 $9875 69 3F                    ;
    STA      zp_81,x                     ; 0x5887 $9877 95 81                    ; Current Animation Frame for Enemy
    RTS                                ; 0x5889 $9879 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Megmat:                                                         ;
.byt    $08,$F8                        ; 0x588a $987A 08 F8                    ;
L987C:                                                                          ;
.byt    $FB,$FC                        ; 0x588c $987C FB FC                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Megmat:                                                   ;
;08 = X velocity when facing right (8)                                         ;
;F8 = X velocity when facing left (-8)                                         ;
;FB = Y Velocity for high jump (-5)                                            ;
;FC = Y Velocity for low jump (-4)                                             ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x588e $987E 20 02 DA                 ; Enemy Stops when Hit
    LDA      zp_A8,x                     ; 0x5891 $9881 B5 A8                    ;; Enemy State
    AND      #$08                      ; 0x5893 $9883 29 08                    ; keep bits .... x...
    BEQ      L988C                     ; 0x5895 $9885 F0 05                    ;
    JSR      bank7_DAC7                     ; 0x5897 $9887 20 C7 DA                 ; Set Enemy Y Velocity to 0
    INC      zp_2A,x                     ; 0x589a $988A F6 2A                    ; Enemy Y Position
L988C:                                                                          ;
    LDA      zp_A8,x                     ; 0x589c $988C B5 A8                    ;; Enemy State
    AND      #$03                      ; 0x589e $988E 29 03                    ; keep bits .... ..xx
    BEQ      L9895                     ; 0x58a0 $9890 F0 03                    ;
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x58a2 $9892 20 EB E8;
L9895:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x58a5 $9895 20 B8 DE               ; Simple Horizontal Movement
    LDA      zp_A8,x                     ; 0x58a8 $9898 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x58aa $989A 29 04                    ; keep bits .... .x..
    BEQ      L98B2                     ; 0x58ac $989C F0 14                    ;
    LDA      rng_out,x                   ; 0x58ae $989E BD 1B 05                 ; Randomizer
    AND      #$01                      ; 0x58b1 $98A1 29 01                    ; keep bits .... ...x
    TAY                                ; 0x58b3 $98A3 A8                       ;
    LDA      L987C,y                   ; 0x58b4 $98A4 B9 7C 98                 ; refer to table at $587A (offset +2)
    STA      bss_057E,x                   ; 0x58b7 $98A7 9D 7E 05                 ; Enemy Y Velocity
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x58ba $98AA 20 91 DC; Determine Enemy Facing Direction
    LDA      bank1_Table_for_Megmat,y  ; 0x58bd $98AD B9 7A 98                 ; refer to table at $587A
    STA      zp_71,x                     ; 0x58c0 $98B0 95 71                    ; Enemy X Velocity
L98B2:                                                                          ;
    LDA      #$30                      ; 0x58c2 $98B2 A9 30                    ; A = 30 (gravity factor while jumping up)
    STA      zp_00                     ; 0x58c4 $98B4 85 00                    ;
    STA      zp_02                       ; 0x58c6 $98B6 85 02                    ;
    JSR      bank7_DECE                     ; 0x58c8 $98B8 20 CE DE                 ;
    JSR      bank7_DE3D                     ; 0x58cb $98BB 20 3D DE                 ; Display
    JMP      bank7_Link_Collision_Detection; 0x58ce $98BE 4C C1 D6                 ; Link Collision Detection
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Lowder_Fast_Speeds:                                             ;
;08 = fast speed when facing right                                             ;
;F8 = fast speed when facing left                                              ;
.byt    $08,$F8                        ; 0x58d1 $98C1 08 F8                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Lowder:                                                   ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x58d3 $98C3 20 02 DA                 ; Enemy Stops when Hit
    JSR      bank7_Link_Collision_Detection; 0x58d6 $98C6 20 C1 D6                 ; Link Collision Detection
    JSR      bank7_DE3D                     ; 0x58d9 $98C9 20 3D DE                 ; Display
    LDA      zp_71,x                     ; 0x58dc $98CC B5 71                    ; Enemy X Velocity
    PHA                                ; 0x58de $98CE 48                       ;
    LDA      zp_60,x                     ; 0x58df $98CF B5 60                    ;; Enemy facing direction
    PHA                                ; 0x58e1 $98D1 48                       ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x58e2 $98D2 20 91 DC; Determine Enemy Facing Direction
    PLA                                ; 0x58e5 $98D5 68                       ;
    STA      zp_60,x                     ; 0x58e6 $98D6 95 60                    ;; Enemy facing direction
    INY                                ; 0x58e8 $98D8 C8                       ;
    TYA                                ; 0x58e9 $98D9 98                       ;
    CMP      zp_60,x                     ; 0x58ea $98DA D5 60                    ;; Enemy facing direction
    BNE      L98E0                     ; 0x58ec $98DC D0 02                    ;
    ASL      zp_71,x                     ; 0x58ee $98DE 16 71                    ; Enemy X Velocity
L98E0:                                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x58f0 $98E0 20 B8 DE               ; Simple Horizontal Movement
    PLA                                ; 0x58f3 $98E3 68                       ;
    STA      zp_71,x                     ; 0x58f4 $98E4 95 71                    ; Enemy X Velocity
    LDA      zp_29                       ; 0x58f6 $98E6 A5 29                    ; Link's Y position
    CLC                                ; 0x58f8 $98E8 18                       ;
    ADC      #$10                      ; 0x58f9 $98E9 69 10                    ;
    CMP      zp_2A,x                     ; 0x58fb $98EB D5 2A                    ; check if Lowder is at level with Link's feet
    BNE      L9901                     ; 0x58fd $98ED D0 12                    ; if not, skip to $5901
    LDA      bss_0504,x                   ; 0x58ff $98EF BD 04 05                 ; if reaction timer > 0
    BNE      L9901                     ; 0x5902 $98F2 D0 0D                    ; skip to $5901
    LDA      #$A0                      ; 0x5904 $98F4 A9 A0                    ; delay before Lowder rushes towards Link
    STA      bss_0504,x                   ; 0x5906 $98F6 9D 04 05                 ;; Timer for Enemy
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5909 $98F9 20 91 DC; Determine Enemy Facing Direction
    LDA      bank1_Table_for_Lowder_Fast_Speeds,y; 0x590c $98FC B9 C1 98           ; refer to table at $58C1
    STA      zp_71,x                     ; 0x590f $98FF 95 71                    ; Enemy X Velocity
L9901:                                                                          ;
    LDA      zp_A8,x                     ; 0x5911 $9901 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5913 $9903 29 04                    ; keep bits .... .x..
    BEQ      L9910                     ; 0x5915 $9905 F0 09                    ;
    JSR      bank7_Floor_Y_Position    ; 0x5917 $9907 20 C1 DA                 ; Floor Enemy Y Position
    LDA      zp_A8,x                     ; 0x591a $990A B5 A8                    ;; Enemy State
    AND      #$03                      ; 0x591c $990C 29 03                    ; keep bits .... ..xx
    BEQ      L992A                     ; 0x591e $990E F0 1A                    ;
L9910:                                                                          ;
    LDA      zp_81,x                     ; 0x5920 $9910 B5 81                    ;; Current Animation Frame for Enemys
    BEQ      L991F                     ; 0x5922 $9912 F0 0B                    ;
    LDA      #$20                      ; 0x5924 $9914 A9 20                    ; A = 20
    STA      zp_00                     ; 0x5926 $9916 85 00                    ;
    LDA      #$03                      ; 0x5928 $9918 A9 03                    ; A = 03
    STA      zp_02                       ; 0x592a $991A 85 02                    ;
    JMP      bank7_DECE                     ; 0x592c $991C 4C CE DE                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L991F:                                                                          ;
    INC      zp_81,x                     ; 0x592f $991F F6 81                    ;; Current Animation Frame for Enemys
    JSR      bank7_Change_Enemy_Facing_Direction_and_X_Velocity; 0x5931 $9921 20 EB E8;
L9925     = * + $0001                                                          ;
    JSR      bank7_Simple_Horizontal_Movement; 0x5934 $9924 20 B8 DE               ; Simple Horizontal Movement
    JMP      bank7_Simple_Horizontal_Movement; 0x5937 $9927 4C B8 DE               ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
L992A:                                                                          ;
    STA      zp_81,x                     ; 0x593a $992A 95 81                    ;; Current Animation Frame for Enemys
L992C:                                                                          ;
    RTS                                ; 0x593c $992C 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Dumb_Moblin_X_Velocity:                                         ;
.byt    $10,$F0                        ; 0x593d $992D 10 F0                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Dumb_Moblin_Generator:                                    ;
    LDA      bss_05C9                     ; 0x593f $992F AD C9 05                 ;
    BNE      L994E                     ; 0x5942 $9932 D0 1A                    ;
    JSR      bank1_Enemy_Routines1_Generators; 0x5944 $9934 20 31 9B               ;
    BCS      L994E                     ; 0x5947 $9937 B0 15                    ;
    LDX      zp_00                     ; 0x5949 $9939 A6 00                    ;
    DEC      zp_C2,x                     ; 0x594b $993B D6 C2                    ; Enemy health - 1
    LDA      #$22                      ; 0x594d $993D A9 22                    ; 22 = Dumb Moblin
    STA      zp_A1,x                     ; 0x594f $993F 95 A1                    ; Dumb Moblin spawned
    LDY      zp_60,x                     ; 0x5951 $9941 B4 60                    ;; Enemy facing direction
    LDA      L992C,y                   ; 0x5953 $9943 B9 2C 99                 ; refer to table at $592D (offset -1)
    STA      zp_71,x                     ; 0x5956 $9946 95 71                    ; Enemy X Velocity
    LDA      #$A0                      ; 0x5958 $9948 A9 A0                    ; A = A0
    STA      zp_2A,x                     ; 0x595a $994A 95 2A                    ; Initial Y position
    LDX      zp_10                       ; 0x595c $994C A6 10                    ;; used as monster x register ;draw boss hp bar
L994E:                                                                          ;
    RTS                                ; 0x595e $994E 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Dumb_Moblin:                                              ;
    LDA      #$08                      ; 0x595f $994F A9 08                    ; A = 08 (Dumb Moblin spear tile offset ?)
    STA      bss_0504,x                   ; 0x5961 $9951 9D 04 05                 ;; Timer for Enemy
    JSR      bank7_Enemy_Stops_when_Hit; 0x5964 $9954 20 02 DA                 ; Enemy Stops when Hit
    JSR      bank7_DE3D                     ; 0x5967 $9957 20 3D DE                 ;
    JSR      bank7_E563                     ; 0x596a $995A 20 63 E5                 ;
    JSR      bank7_Link_Collision_Detection; 0x596d $995D 20 C1 D6                 ; Link Collision Detection
    JSR      L9B22                     ; 0x5970 $9960 20 22 9B                 ;
    JSR      bank7_Gravity             ; 0x5973 $9963 20 BE DE                 ; Gravity
    LDA      zp_A8,x                     ; 0x5976 $9966 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5978 $9968 29 04                    ; keep bits .... .x..
    BEQ      L996F                     ; 0x597a $996A F0 03                    ;
    JMP      bank7_Floor_Y_Position    ; 0x597c $996C 4C C1 DA                 ; Floor Enemy Y Position
                                                                               ;
; ---------------------------------------------------------------------------- ;
L996F:                                                                          ;
    RTS                                ; 0x597f $996F 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Goriya:                                                         ;
;10 = initial relative Y position for low throw                                ;
;00 = initial relative Y position for high throw                               ;
.byt    $10,$00                        ; 0x5980 $9970 10 00                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Goriya:                                                   ;
    LDA      zp_81,x                     ; 0x5982 $9972 B5 81                    ;; Current Animation Frame for Enemys
    BEQ      L99EB                     ; 0x5984 $9974 F0 75                    ;
    AND      #$01                      ; 0x5986 $9976 29 01                    ; keep bits .... ...x
    BNE      L9980                     ; 0x5988 $9978 D0 06                    ; if 1, skip to $5980
    JSR      bank7_Display             ; 0x598a $997A 20 11 EF                 ;
    JSR      bank7_code39              ; 0x598d $997D 20 58 E5                 ;
L9980:                                                                          ;
    LDA      bss_0504,x                   ; 0x5990 $9980 BD 04 05                 ;; Timer for Enemy
    BNE      L99EB                     ; 0x5993 $9983 D0 66                    ;
    LDA      zp_A1,x                     ; 0x5995 $9985 B5 A1                    ; Enemy Code
    CMP      #$19                      ; 0x5997 $9987 C9 19                    ; 19 = Orange Goriya
    BCC      L99C9                     ; 0x5999 $9989 90 3E                    ;
    JSR      bank7_Spawn_New_Projectile; 0x599b $998B 20 CE DB                 ;
    BCS      L99C6                     ; 0x599e $998E B0 36                    ;
    TXA                                ; 0x59a0 $9990 8A                       ;
    STA      bss_045E,y                   ; 0x59a1 $9991 99 5E 04                 ;
    LDA      zp_66,y                     ; 0x59a4 $9994 B9 66 00                 ;
    STA      bss_0452,y                   ; 0x59a7 $9997 99 52 04                 ;
    LDA      zp_81,x                     ; 0x59aa $999A B5 81                    ;; Current Animation Frame for Enemys
    LSR                                ; 0x59ac $999C 4A                       ;
    STA      bss_0458,y                   ; 0x59ad $999D 99 58 04                 ;
    TAX                                ; 0x59b0 $99A0 AA                       ;
    LDA      bank1_Table_for_Goriya,x  ; 0x59b1 $99A1 BD 70 99                 ; refer to table at $5970
    LDX      zp_10                       ; 0x59b4 $99A4 A6 10                    ;; used as monster x register ;draw boss hp bar
    ADC      zp_2A,x                     ; 0x59b6 $99A6 75 2A                    ; add Goriya's Y position
    STA      zp_30,y                     ; 0x59b8 $99A8 99 30 00                 ; Projectile Y Position
    LDA      rng_out,x                   ; 0x59bb $99AB BD 1B 05                 ; Randomizer
    AND      #$10                      ; 0x59be $99AE 29 10                    ; keep bits ...x ....
    LDX      bss_0458,y                   ; 0x59c0 $99B0 BE 58 04                 ;
    BEQ      L99B7                     ; 0x59c3 $99B3 F0 02                    ;
    LDA      #$F0                      ; 0x59c5 $99B5 A9 F0                    ; A = F0 (initial Y velocity of boomerangs)
L99B7:                                                                          ;
    STA      bss_0584,y                   ; 0x59c7 $99B7 99 84 05                 ;
    LDX      zp_10                       ; 0x59ca $99BA A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      #$20                      ; 0x59cc $99BC A9 20                    ; (X distance for boomerang start coming back)
    STA      bss_044C,y                   ; 0x59ce $99BE 99 4C 04                 ;
    LDA      #$06                      ; 0x59d1 $99C1 A9 06                    ; Projectile Type
    STA      zp_87,y                     ; 0x59d3 $99C3 99 87 00                 ;
L99C6:                                                                          ;
    JMP      L99EE                     ; 0x59d6 $99C6 4C EE 99                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99C9:                                                                          ;
    INC      zp_81,x                     ; 0x59d9 $99C9 F6 81                    ;; Current Animation Frame for Enemys
    LDA      zp_81,x                     ; 0x59db $99CB B5 81                    ;; Current Animation Frame for Enemys
    CMP      #$03                      ; 0x59dd $99CD C9 03                    ; if (A == 03)
    BEQ      L99EE                     ; 0x59df $99CF F0 1D                    ; skip to 59EE
    CMP      #$05                      ; 0x59e1 $99D1 C9 05                    ;
    BCS      L99EE                     ; 0x59e3 $99D3 B0 19                    ;
    CMP      #$04                      ; 0x59e5 $99D5 C9 04                    ;
    BNE      L99E6                     ; 0x59e7 $99D7 D0 0D                    ;
    LDA      zp_A1,x                     ; 0x59e9 $99D9 B5 A1                    ; Enemy Code
    CMP      #$15                      ; 0x59eb $99DB C9 15                    ; 15 = Red Moblin
    BEQ      L99E6                     ; 0x59ed $99DD F0 07                    ;
    JSR      bank1_code15              ; 0x59ef $99DF 20 F2 97                 ; goto $57F2
    LDA      #$05                      ; 0x59f2 $99E2 A9 05                    ; A = 05
    STA      zp_81,x                     ; 0x59f4 $99E4 95 81                    ;; Current Animation Frame for Enemys
L99E6:                                                                          ;
    LDA      #$10                      ; 0x59f6 $99E6 A9 10                    ; A = 10
    STA      bss_0504,x                   ; 0x59f8 $99E8 9D 04 05                 ;; Timer for Enemy
L99EB:                                                                          ;
    JMP      L99F2                     ; 0x59fb $99EB 4C F2 99                 ; goto $59F2
                                                                               ;
; ---------------------------------------------------------------------------- ;
L99EE:                                                                          ;
L99EF     = * + $0001                                                          ;
    LDA      #$00                      ; 0x59fe $99EE A9 00                    ; A = 00
    STA      zp_81,x                     ; 0x5a00 $99F0 95 81                    ;; Current Animation Frame for Enemys
L99F2:                                                                          ;
    LDA      #$16                      ; 0x5a02 $99F2 A9 16                    ; A = 16 (distance to keep from Link)
    LDY      zp_A1,x                     ; 0x5a04 $99F4 B4 A1                    ; Enemy Code
L99F7     = * + $0001                                                          ;
    CPY      #$14                      ; 0x5a06 $99F6 C0 14                    ; 14 = Orange Moblin
    BEQ      L99FE                     ; 0x5a08 $99F8 F0 04                    ;
    CPY      #$19                      ; 0x5a0a $99FA C0 19                    ; 19 = Orange Goriya
    BCC      L9A00                     ; 0x5a0c $99FC 90 02                    ;
L99FE:                                                                          ;
    LDA      #$60                      ; 0x5a0e $99FE A9 60                    ; A = 60
L9A00:                                                                          ;
    JMP      L9A22                     ; 0x5a10 $9A00 4C 22 9A                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table9:                                                                   ;
.byt    $03                            ; 0x5a13 $9A03 03                       ;
L9A04:                                                                          ;
.byt    $01,$01,$03,$07,$0F,$07,$03,$3F; 0x5a14 $9A04 01 01 03 07 0F 07 03 3F  ;
.byt    $3F,$1F,$3F,$3F,$7F,$3F,$3F    ; 0x5a1c $9A0C 3F 1F 3F 3F 7F 3F 3F     ;
L9A13:                                                                          ;
.byt    $08,$F8                        ; 0x5a23 $9A13 08 F8                    ;
;Tables for enemies with footwork : Moblin, Daira, Goriya                      ;
;08 = approaching speed, facing right                                          ;
;F8 = approaching speed, facing left                                           ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Daira:                                                    ;
    JSR      bank1_code20              ; 0x5a25 $9A15 20 D1 9A                 ;
    LDA      #$1E                      ; 0x5a28 $9A18 A9 1E                    ; distance Orange Daira tries to keep from Link
    LDY      zp_A1,x                     ; 0x5a2a $9A1A B4 A1                    ; Enemy Code
    CPY      #$18                      ; 0x5a2c $9A1C C0 18                    ; 18 = Red Daira
    BNE      L9A22                     ; 0x5a2e $9A1E D0 02                    ;
    LDA      #$37                      ; 0x5a30 $9A20 A9 37                    ; distance Red Daira tries to keep from Link
L9A22:                                                                          ;
    STA      bss_05E5                     ; 0x5a32 $9A22 8D E5 05                 ; store distance (Orange or Red)
    ASL                                ; 0x5a35 $9A25 0A                       ; A * 2
    STA      bss_05E6                     ; 0x5a36 $9A26 8D E6 05                 ; Daira back off speed value (?)
    JSR      bank7_DE3D                     ; 0x5a39 $9A29 20 3D DE                 ;
    JSR      bank7_Link_Collision_Detection; 0x5a3c $9A2C 20 C1 D6                 ;
    JSR      bank7_Gravity             ; 0x5a3f $9A2F 20 BE DE                 ;
    LDA      zp_A8,x                     ; 0x5a42 $9A32 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5a44 $9A34 29 04                    ; keep bits .... .x..
    BEQ      L9A3B                     ; 0x5a46 $9A36 F0 03                    ;
    JSR      bank7_Floor_Y_Position    ; 0x5a48 $9A38 20 C1 DA                 ; Floor Enemy Y Position
L9A3B:                                                                          ;
    JSR      L9B0A                     ; 0x5a4b $9A3B 20 0A 9B                 ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5a4e $9A3E 20 91 DC; Determine Enemy Facing Direction
    LDA      zp_0F                       ; 0x5a51 $9A41 A5 0F                    ;
    CLC                                ; 0x5a53 $9A43 18                       ;
    ADC      bss_05E5                     ; 0x5a54 $9A44 6D E5 05                 ;
    CMP      bss_05E6                     ; 0x5a57 $9A47 CD E6 05                 ;
    BCC      L9A6B                     ; 0x5a5a $9A4A 90 1F                    ;
    LDA      zp_0F                       ; 0x5a5c $9A4C A5 0F                    ;
    ADC      #$50                      ; 0x5a5e $9A4E 69 50                    ;
    CMP      #$A0                      ; 0x5a60 $9A50 C9 A0                    ;
    BCS      L9A64                     ; 0x5a62 $9A52 B0 10                    ;
    LDA      zp_A1,x                     ; 0x5a64 $9A54 B5 A1                    ; Enemy Code
    CMP      #$18                      ; 0x5a66 $9A56 C9 18                    ; 18 = Red Daira
    BCS      L9A61                     ; 0x5a68 $9A58 B0 07                    ;
    LDA      zp_81,x                     ; 0x5a6a $9A5A B5 81                    ;; Current Animation Frame for Enemys
    BNE      L9A61                     ; 0x5a6c $9A5C D0 03                    ;
    JSR      L9A82                     ; 0x5a6e $9A5E 20 82 9A                 ;
L9A61:                                                                          ;
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5a71 $9A61 20 91 DC; Determine Enemy Facing Direction
L9A64:                                                                          ;
    LDA      L9A13,y                   ; 0x5a74 $9A64 B9 13 9A                 ; refer to table at $5A13
    ASL                                ; 0x5a77 $9A67 0A                       ;
    STA      zp_71,x                     ; 0x5a78 $9A68 95 71                    ; Enemy X Velocity
    RTS                                ; 0x5a7a $9A6A 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9A6B:                                                                          ;
    LDY      zp_A1,x                     ; 0x5a7b $9A6B B4 A1                    ; Enemy Code
    LDA      L99F7,y                   ; 0x5a7d $9A6D B9 F7 99                 ; refer to table at $5A0E (+17 +18)
    INC      zp_AF,x                     ; 0x5a80 $9A70 F6 AF                    ;; Various enemy state variables
    AND      zp_AF,x                     ; 0x5a82 $9A72 35 AF                    ;; Various enemy state variables
    BNE      L9AAB                     ; 0x5a84 $9A74 D0 35                    ;
    LDA      rng_out,x                   ; 0x5a86 $9A76 BD 1B 05                 ; Randomizer
    AND      L99EF,y                   ; 0x5a89 $9A79 39 EF 99                 ; refer to table at $5A06 (+17 +18)
    BNE      L9A82                     ; 0x5a8c $9A7C D0 04                    ;
    LDA      #$E0                      ; 0x5a8e $9A7E A9 E0                    ; A = E0
    STA      zp_AF,x                     ; 0x5a90 $9A80 95 AF                    ;; Various enemy state variables
L9A82:                                                                          ;
    LDY      #$01                      ; 0x5a92 $9A82 A0 01                    ; Y = 01
    LDA      zp_A1,x                     ; 0x5a94 $9A84 B5 A1                    ; Enemy Code
    CMP      #$14                      ; 0x5a96 $9A86 C9 14                    ; 14 = Orange Moblin
    BEQ      L9AA2                     ; 0x5a98 $9A88 F0 18                    ;
    CMP      #$17                      ; 0x5a9a $9A8A C9 17                    ; 17 = Orange Daira
    BEQ      L9AA4                     ; 0x5a9c $9A8C F0 16                    ;
    CMP      #$18                      ; 0x5a9e $9A8E C9 18                    ; 18 = Red Daira
    BEQ      L9AA4                     ; 0x5aa0 $9A90 F0 12                    ;
    LDA      rng_out,x                   ; 0x5aa2 $9A92 BD 1B 05                 ; Randomizer
    LSR                                ; 0x5aa5 $9A95 4A                       ;
    BCS      L9A9E                     ; 0x5aa6 $9A96 B0 06                    ;
    AND      #$02                      ; 0x5aa8 $9A98 29 02                    ; keep bits .... ..x.
    TAY                                ; 0x5aaa $9A9A A8                       ;
    INY                                ; 0x5aab $9A9B C8                       ;
    BNE      L9AA4                     ; 0x5aac $9A9C D0 06                    ;
L9A9E:                                                                          ;
    LDA      zp_17                       ; 0x5aae $9A9E A5 17                    ; Link's shield position
    BNE      L9AA4                     ; 0x5ab0 $9AA0 D0 02                    ;
L9AA2:                                                                          ;
    INY                                ; 0x5ab2 $9AA2 C8                       ;
    INY                                ; 0x5ab3 $9AA3 C8                       ;
L9AA4:                                                                          ;
    STY      zp_81,x                     ; 0x5ab4 $9AA4 94 81                    ;; Current Animation Frame for Enemys
    LDA      #$18                      ; 0x5ab6 $9AA6 A9 18                    ; A = 18
    STA      bss_0504,x                   ; 0x5ab8 $9AA8 9D 04 05                 ; delay between axe is back and throw
L9AAB:                                                                          ;
    LDA      #$00                      ; 0x5abb $9AAB A9 00                    ; A = 00
    STA      zp_71,x                     ; 0x5abd $9AAD 95 71                    ; Enemy X Velocity
    LDA      zp_A7                       ; 0x5abf $9AAF A5 A7                    ;;collision bits for Link - 0000ABLR (above,below,left,right)
    AND      #$03                      ; 0x5ac1 $9AB1 29 03                    ; keep bits .... ..xx
    BNE      L9ACE                     ; 0x5ac3 $9AB3 D0 19                    ;
    LDA      bss_0742                     ; 0x5ac5 $9AB5 AD 42 07                 ; Left/Right buttons held
L9AB8:                                                                          ;
    BEQ      L9ABE                     ; 0x5ac8 $9AB8 F0 04                    ;
    LDA      zp_70                       ; 0x5aca $9ABA A5 70                    ; Link's X Velocity
    BNE      L9AC9                     ; 0x5acc $9ABC D0 0B                    ;
L9ABE:                                                                          ;
    LDY      #$04                      ; 0x5ace $9ABE A0 04                    ; Y = 04 (0000 0100)
    LDA      frame_counter                       ; 0x5ad0 $9AC0 A5 12                    ;; Frame Counter (ascending)
    AND      #$40                      ; 0x5ad2 $9AC2 29 40                    ; keep bits .x.. ....
    BNE      L9AC8                     ; 0x5ad4 $9AC4 D0 02                    ;
    LDY      #$FC                      ; 0x5ad6 $9AC6 A0 FC                    ; Y = FC (1111 1100) (-4)
L9AC8:                                                                          ;
    TYA                                ; 0x5ad8 $9AC8 98                       ;
L9AC9:                                                                          ;
    STA      zp_71,x                     ; 0x5ad9 $9AC9 95 71                    ; Enemy X Velocity
    ASL                                ; 0x5adb $9ACB 0A                       ;
    ROR      zp_71,x                     ; 0x5adc $9ACC 76 71                    ;; Enemy X Velocity
L9ACE:                                                                          ;
    RTS                                ; 0x5ade $9ACE 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Daira:                                                          ;
.byt    $04,$03                        ; 0x5adf $9ACF 04 03                    ;Table for Daira (Orange, Red)
; ---------------------------------------------------------------------------- ;
bank1_code20:                                                                   ;
    LDA      zp_81,x                     ; 0x5ae1 $9AD1 B5 81                    ;; Current Animation Frame for Enemys
    BEQ      L9B04                     ; 0x5ae3 $9AD3 F0 2F                    ;
    LDA      bss_0504,x                   ; 0x5ae5 $9AD5 BD 04 05                 ;; Timer for Enemy
    BNE      L9B04                     ; 0x5ae8 $9AD8 D0 2A                    ;
    INC      zp_81,x                     ; 0x5aea $9ADA F6 81                    ;; Current Animation Frame for Enemys
    LDY      zp_A1,x                     ; 0x5aec $9ADC B4 A1                    ; Enemy Code
    LDA      zp_81,x                     ; 0x5aee $9ADE B5 81                    ;; Current Animation Frame for Enemys
    CMP      L9AB8,y                   ; 0x5af0 $9AE0 D9 B8 9A                 ; refer to table at $5ACF (+17 +18)
    BEQ      L9B05                     ; 0x5af3 $9AE3 F0 20                    ;
    CMP      #$02                      ; 0x5af5 $9AE5 C9 02                    ;
    BNE      L9AFF                     ; 0x5af7 $9AE7 D0 16                    ;
    JSR      bank7_Display             ; 0x5af9 $9AE9 20 11 EF                 ;
    JSR      bank7_code39              ; 0x5afc $9AEC 20 58 E5                 ;
    LDA      zp_A1,x                     ; 0x5aff $9AEF B5 A1                    ; Enemy Code
    CMP      #$18                      ; 0x5b01 $9AF1 C9 18                    ; 18 = Red Daira
    BNE      L9AFF                     ; 0x5b03 $9AF3 D0 0A                    ;
    JSR      bank7_Spawn_New_Projectile; 0x5b05 $9AF5 20 CE DB                 ; Spawn New Projectile
    BCS      L9AFF                     ; 0x5b08 $9AF8 B0 05                    ;
    LDA      #$07                      ; 0x5b0a $9AFA A9 07                    ; A = 07 (07 = axe)
    STA      zp_87,y                     ; 0x5b0c $9AFC 99 87 00                 ;
L9AFF:                                                                          ;
    LDA      #$05                      ; 0x5b0f $9AFF A9 05                    ; A = 05 (delay when axe is up and forward)
    STA      bss_0504,x                   ; 0x5b11 $9B01 9D 04 05                 ;; Timer for Enemy
L9B04:                                                                          ;
    RTS                                ; 0x5b14 $9B04 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B05:                                                                          ;
    LDA      #$00                      ; 0x5b15 $9B05 A9 00                    ; A = 00
    STA      zp_81,x                     ; 0x5b17 $9B07 95 81                    ;; Current Animation Frame for Enemys
    RTS                                ; 0x5b19 $9B09 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B0A:                                                                          ;
    LDA      bss_043E,x                   ; 0x5b1a $9B0A BD 3E 04                 ;
    BEQ      L9B1E                     ; 0x5b1d $9B0D F0 0F                    ;
    DEC      bss_043E,x                   ; 0x5b1f $9B0F DE 3E 04                 ;
    BPL      L9B1A                     ; 0x5b22 $9B12 10 06                    ;
    INC      bss_043E,x                   ; 0x5b24 $9B14 FE 3E 04                 ;
    INC      bss_043E,x                   ; 0x5b27 $9B17 FE 3E 04                 ;
L9B1A:                                                                          ;
    STA      zp_71,x                     ; 0x5b2a $9B1A 95 71                    ; Enemy X Velocity
    PLA                                ; 0x5b2c $9B1C 68                       ;
    PLA                                ; 0x5b2d $9B1D 68                       ;
L9B1E:                                                                          ;
    JMP      L9B22                     ; 0x5b2e $9B1E 4C 22 9B                 ; skip to $5B22
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B21:                                                                          ;
    RTS                                ; 0x5b31 $9B21 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B22:                                                                          ;
    LDA      zp_A8,x                     ; 0x5b32 $9B22 B5 A8                    ;; Enemy State
    AND      #$03                      ; 0x5b34 $9B24 29 03                    ; keep bits .... ..xx
    BNE      L9B21                     ; 0x5b36 $9B26 D0 F9                    ;
L9B2A     = * + $0002                                                          ;
    JMP      bank7_Simple_Horizontal_Movement; 0x5b38 $9B28 4C B8 DE               ; Simple Horizontal Movement
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Moby:                                                           ;
;20 = X Velocity when facing right                                             ;
;E0 = X Velocity when facing left                                              ;
;30 = distance from left side of the screen, facing right                      ;
;D0 = distance from right side of the screen, facing left                      ;
.byt    $20,$E0                        ; 0x5b3b $9B2B 20 E0                    ;
L9B2D:                                                                          ;
.byt    $30,$D0,$00,$F8                ; 0x5b3d $9B2D 30 D0 00 F8              ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Generators:                                               ;
    LDA      frame_counter                       ; 0x5b41 $9B31 A5 12                    ;; Frame Counter (ascending)
    AND      #$7F                      ; 0x5b43 $9B33 29 7F                    ; keep bits .xxx xxxx
    BNE      L9B44                     ; 0x5b45 $9B35 D0 0D                    ;
    LDA      zp_A1,x                     ; 0x5b47 $9B37 B5 A1                    ; Enemy Code
    STA      zp_0D                       ; 0x5b49 $9B39 85 0D                    ;
    LDX      #$05                      ; 0x5b4b $9B3B A2 05                    ; X = 05
L9B3D:                                                                          ;
    LDA      zp_B6,x                     ; 0x5b4d $9B3D B5 B6                    ; Generated Enemy Slot
    BEQ      L9B48                     ; 0x5b4f $9B3F F0 07                    ; if 0, goto Moby init routine
    DEX                                ; 0x5b51 $9B41 CA                       ;
    BPL      L9B3D                     ; 0x5b52 $9B42 10 F9                    ; if (X >= 0) loop to $5B3D
L9B44:                                                                          ;
    LDX      zp_10                       ; 0x5b54 $9B44 A6 10                    ;; used as monster x register ;draw boss hp bar
    SEC                                ; 0x5b56 $9B46 38                       ;
    RTS                                ; 0x5b57 $9B47 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9B48:                                                                          ;
    INC      zp_B6,x                     ; 0x5b58 $9B48 F6 B6                    ;; Generated Enemy Slot
    LDA      #$FF                      ; 0x5b5a $9B4A A9 FF                    ; A = FF
    STA       a:zp_BC,x                   ; 0x5b5c $9B4C 9D BC 00                 ;
    LDA      #$03                      ; 0x5b5f $9B4F A9 03                    ; A = 03
    STA       a:zp_C2,x                   ; 0x5b61 $9B51 9D C2 00                 ; Enemy Current HP
    LDA      #$1E                      ; 0x5b64 $9B54 A9 1E                    ; 1E = Moby
    STA      zp_A1,x                     ; 0x5b66 $9B56 95 A1                    ; Moby assigned to slot #X
    LDA      rng_out,x                   ; 0x5b68 $9B58 BD 1B 05                 ; Randomizer
    AND      #$01                      ; 0x5b6b $9B5B 29 01                    ; keep bits .... ...x
    TAY                                ; 0x5b6d $9B5D A8                       ;
    LDA      zp_0D                       ; 0x5b6e $9B5E A5 0D                    ;
    CMP      #$21                      ; 0x5b70 $9B60 C9 21                    ; 21 = Moblin Generator
    BNE      L9B66                     ; 0x5b72 $9B62 D0 02                    ;
    INY                                ; 0x5b74 $9B64 C8                       ;
    INY                                ; 0x5b75 $9B65 C8                       ;
L9B66:                                                                          ;
    LDA      bss_072C                     ; 0x5b76 $9B66 AD 2C 07                 ; Scrolling Offset Low Byte
    ADC      L9B2D,y                   ; 0x5b79 $9B69 79 2D 9B                 ; refer to table at $5B2B (offset +2)
    STA      zp_4E,x                     ; 0x5b7c $9B6C 95 4E                    ; Enemy X position (low byte)
    LDA      bss_072A                     ; 0x5b7e $9B6E AD 2A 07                 ; Scrolling Offset High Byte
    ADC      #$00                      ; 0x5b81 $9B71 69 00                    ;
    STA      zp_3C,x                     ; 0x5b83 $9B73 95 3C                    ; Enemy X position (high byte)
    LDA      #$20                      ; 0x5b85 $9B75 A9 20                    ; Moby starting Y position
    STA      zp_2A,x                     ; 0x5b87 $9B77 95 2A                    ; ALSO Y velocity when flying down
    STA      bss_057E,x                   ; 0x5b89 $9B79 9D 7E 05                 ; Enemy Y Velocity
    JSR      bank7_Determine_Enemy_Facing_Direction_relative_to_Link; 0x5b8c $9B7C 20 91 DC; Determine Enemy Facing Direction
    LDA      #$01                      ; 0x5b8f $9B7F A9 01                    ; A = 01
    STA      zp_1A,x                     ; 0x5b91 $9B81 95 1A                    ;
    LSR                                ; 0x5b93 $9B83 4A                       ; A >> 0
L9B86     = * + $0002                                                          ;
    STA      bss_040E,x                   ; 0x5b94 $9B84 9D 0E 04                 ; Enemy Hit State
    STA      zp_AF,x                     ; 0x5b97 $9B87 95 AF                    ;; Various enemy state variables
    STA      zp_71,x                     ; 0x5b99 $9B89 95 71                    ; Enemy X Velocity
    STA      bss_0444,x                   ; 0x5b9b $9B8B 9D 44 04                 ;; Enemy Vulnerability, for example: horsehead and helmethead have =2, which prevents hit-with-sword in body and feet, but not head
    STX      zp_00                       ; 0x5b9e $9B8E 86 00                    ;
    LDX      zp_10                       ; 0x5ba0 $9B90 A6 10                    ;; used as monster x register ;draw boss hp bar
    CLC                                ; 0x5ba2 $9B92 18                       ;
    RTS                                ; 0x5ba3 $9B93 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Moby:                                                     ;
    JSR      bank7_Enemy_Stops_when_Hit; 0x5ba4 $9B94 20 02 DA                 ; Enemy Stops when Hit
    LDA      zp_2A,x                     ; 0x5ba7 $9B97 B5 2A                    ; Enemy Y position
    CMP      zp_29                       ; 0x5ba9 $9B99 C5 29                    ; Link  Y position
    BCC      L9BA7                     ; 0x5bab $9B9B 90 0A                    ;
    LDY      zp_60,x                     ; 0x5bad $9B9D B4 60                    ; Moby facing direction ?
    LDA      L9B2A,y                   ; 0x5baf $9B9F B9 2A 9B                 ; refer to table at $5B2B (offset +1)
    STA      zp_71,x                     ; 0x5bb2 $9BA2 95 71                    ; Enemy X velocity
    JSR      bank7_DAC7                     ; 0x5bb4 $9BA4 20 C7 DA                 ; Set Enemy Y Velocity to 0
L9BA7:                                                                          ;
    JSR      bank7_Simple_Vertical_Movement; 0x5bb7 $9BA7 20 C8 DE                 ; Simple Vertical Movement
    JSR      bank7_Simple_Horizontal_Movement; 0x5bba $9BAA 20 B8 DE               ; Simple Horizontal Movement
    JSR      bank7_DE40                     ; 0x5bbd $9BAD 20 40 DE                 ;
    JMP      bank7_Link_Collision_Detection; 0x5bc0 $9BB0 4C C1 D6                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Geldarm:                                                        ;
.byt    $FF,$01                        ; 0x5bc3 $9BB3 FF 01                    ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines1_Geldarm:                                                  ;
    LDA      zp_AF,x                     ; 0x5bc5 $9BB5 B5 AF                    ; 0 = stretching/shrinking, 1 = idle
    BNE      L9BEE                     ; 0x5bc7 $9BB7 D0 35                    ; if not 0, skip to $5BEE
    LDY      zp_60,x                     ; 0x5bc9 $9BB9 B4 60                    ;; Enemy facing direction
    BNE      L9BCA                     ; 0x5bcb $9BBB D0 0D                    ;
    LDA      zp_2A,x                     ; 0x5bcd $9BBD B5 2A                    ; Enemy Y position
    CLC                                ; 0x5bcf $9BBF 18                       ;
    ADC      bank1_Table_for_Geldarm,y ; 0x5bd0 $9BC0 79 B3 9B                 ;
    STA      zp_2A,x                     ; 0x5bd3 $9BC3 95 2A                    ;; Enemy Y Position
    LDA      bss_0504,x                   ; 0x5bd5 $9BC5 BD 04 05                 ;; Timer for Enemy
    BNE      L9C35                     ; 0x5bd8 $9BC8 D0 6B                    ;
L9BCA:                                                                          ;
L9BCB     = * + $0001                                                          ;
    LDA      zp_2A,x                     ; 0x5bda $9BCA B5 2A                    ;; Enemy Y Position
    CLC                                ; 0x5bdc $9BCC 18                       ;
    ADC      bank1_Table_for_Geldarm,y ; 0x5bdd $9BCD 79 B3 9B                 ; add FF (-1) or 01 (1)
    STA      zp_2A,x                     ; 0x5be0 $9BD0 95 2A                    ;; Enemy Y Position
    LDA      #$05                      ; 0x5be2 $9BD2 A9 05                    ; A = 05
    STA      bss_0504,x                   ; 0x5be4 $9BD4 9D 04 05                 ; coefficient of restretching speed (0 = fast)
    LDA      zp_81,x                     ; 0x5be7 $9BD7 B5 81                    ;; Current Animation Frame for Enemys
    SEC                                ; 0x5be9 $9BD9 38                       ;
    SBC      zp_2A,x                     ; 0x5bea $9BDA F5 2A                    ;; Enemy Y Position
    BNE      L9BE6                     ; 0x5bec $9BDC D0 08                    ;
    LDA      #$80                      ; 0x5bee $9BDE A9 80                    ; A = 80 (delay before restretching)
    STA      bss_0504,x                   ; 0x5bf0 $9BE0 9D 04 05                 ;; Timer for Enemy
    JMP      L9C2C                     ; 0x5bf3 $9BE3 4C 2C 9C                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9BE6:                                                                          ;
    CMP      #$40                      ; 0x5bf6 $9BE6 C9 40                    ; shrink to this height (8 tiles)
    BNE      L9C3D                     ; 0x5bf8 $9BE8 D0 53                    ;
    LDA      #$01                      ; 0x5bfa $9BEA A9 01                    ; A = 01
    STA      zp_AF,x                     ; 0x5bfc $9BEC 95 AF                    ; 01 = Geldarm is not moving
L9BEE:                                                                          ;
    LDA      zp_C9                       ; 0x5bfe $9BEE A5 C9                    ;
    BNE      L9C3D                     ; 0x5c00 $9BF0 D0 4B                    ;
    LDA      zp_2A,x                     ; 0x5c02 $9BF2 B5 2A                    ;; Enemy Y Position
    ADC      #$08                      ; 0x5c04 $9BF4 69 08                    ; 08 -> 04 : Geldarm's foot invulnerable
    STA      zp_05                       ; 0x5c06 $9BF6 85 05                    ;
    LDA      zp_81,x                     ; 0x5c08 $9BF8 B5 81                    ;; Current Animation Frame for Enemys
    SEC                                ; 0x5c0a $9BFA 38                       ;
    SBC      zp_2A,x                     ; 0x5c0b $9BFB F5 2A                    ;; Enemy Y Position
    STA      zp_07                       ; 0x5c0d $9BFD 85 07                    ;
    LDA      zp_CD                       ; 0x5c0f $9BFF A5 CD                    ;
    STA      zp_04                       ; 0x5c11 $9C01 85 04                    ;
    LDA      #$08                      ; 0x5c13 $9C03 A9 08                    ; Geldarm's hit detection on right side
    STA      zp_06                       ; 0x5c15 $9C05 85 06                    ;
    JSR      bank7_code44              ; 0x5c17 $9C07 20 A2 E9                 ; sword hit detection on body
    JSR      bank7_idem__maybe         ; 0x5c1a $9C0A 20 F9 E9                 ; idem?
    BCC      L9C1E                     ; 0x5c1d $9C0D 90 0F                    ;
    LDA      #$00                      ; 0x5c1f $9C0F A9 00                    ; A = 00
    STA      zp_AF,x                     ; 0x5c21 $9C11 95 AF                    ;; Various enemy state variables
    LDA      #$01                      ; 0x5c23 $9C13 A9 01                    ; A = 01
    STA      bss_0504,x                   ; 0x5c25 $9C15 9D 04 05                 ;; Timer for Enemy
    LDA      #$10                      ; 0x5c28 $9C18 A9 10                    ; A = 10
    STA      zp_ED                       ; 0x5c2a $9C1A 85 ED                    ; sound effect for Geldarm's body hit
    BNE      L9C2C                     ; 0x5c2c $9C1C D0 0E                    ;
L9C1E:                                                                          ;
    JSR      bank7_code43              ; 0x5c2e $9C1E 20 75 E9                 ;
    JSR      bank7_idem__maybe         ; 0x5c31 $9C21 20 F9 E9                 ;
    BCC      L9C29                     ; 0x5c34 $9C24 90 03                    ;
    JSR      bank7_Link_Hit_Routine    ; 0x5c36 $9C26 20 EF E2                 ; Link Hit Routine
L9C29:                                                                          ;
    JMP      L9C3D                     ; 0x5c39 $9C29 4C 3D 9C                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C2C:                                                                          ;
    LDA      zp_60,x                     ; 0x5c3c $9C2C B5 60                    ;; Enemy facing direction
    EOR      #$01                      ; 0x5c3e $9C2E 49 01                    ; flip bits .... ...x
    STA      zp_60,x                     ; 0x5c40 $9C30 95 60                    ;; Enemy facing direction
    JMP      L9C3D                     ; 0x5c42 $9C32 4C 3D 9C                 ; goto $5C3D
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9C35:                                                                          ;
    LDA      zp_2A,x                     ; 0x5c45 $9C35 B5 2A                    ;; Enemy Y Position
    SEC                                ; 0x5c47 $9C37 38                       ;
    SBC      bank1_Table_for_Geldarm,y ; 0x5c48 $9C38 F9 B3 9B                 ; subtract FF (-1) or 01 (1)
    STA      zp_2A,x                     ; 0x5c4b $9C3B 95 2A                    ;; Enemy Y Position
L9C3D:                                                                          ;
    JSR      bank7_DE40                     ; 0x5c4d $9C3D 20 40 DE                 ; goto $1DE40 (Next Enemy)
    JMP      bank7_Link_Collision_Detection; 0x5c50 $9C40 4C C1 D6                 ; goto $1D6C1
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_DumbMoblin:                                               ;
;Related to Dumb Moblin animation                                              ;
    LDA      frame_counter                       ; 0x5c53 $9C43 A5 12                    ;; Frame Counter (ascending)
    AND      #$10                      ; 0x5c55 $9C45 29 10                    ; keep bits ...x ....
    LSR                                ; 0x5c57 $9C47 4A                       ;
    LSR                                ; 0x5c58 $9C48 4A                       ;
    LSR                                ; 0x5c59 $9C49 4A                       ;
    LSR                                ; 0x5c5a $9C4A 4A                       ;
    ADC      #$03                      ; 0x5c5b $9C4B 69 03                    ;
    STA      zp_81,x                     ; 0x5c5d $9C4D 95 81                    ; Current Animation Frame for Enemy
    JSR      bank1_Enemy_Routines2_Moblin; 0x5c5f $9C4F 20 A4 9C                 ; goto $5CA4
    LDA      zp_91,x                     ; 0x5c62 $9C52 B5 91                    ;
    CLC                                ; 0x5c64 $9C54 18                       ;
    ADC      #$08                      ; 0x5c65 $9C55 69 08                    ;
    TAY                                ; 0x5c67 $9C57 A8                       ;
    LDA      zp_2A,x                     ; 0x5c68 $9C58 B5 2A                    ; Enemy Y position
    ADC      #$10                      ; 0x5c6a $9C5A 69 10                    ;
    STA      zp_00                     ; 0x5c6c $9C5C 85 00                    ;
    LDA      zp_CD                       ; 0x5c6e $9C5E A5 CD                    ;
    STA      zp_01                       ; 0x5c70 $9C60 85 01                    ;
    LDX      #$38                      ; 0x5c72 $9C62 A2 38                    ; X = 38
    LDA      frame_counter                       ; 0x5c74 $9C64 A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x5c76 $9C66 29 08                    ; keep bits .... x...
    BNE      L9C6C                     ; 0x5c78 $9C68 D0 02                    ;
    LDX      #$4A                      ; 0x5c7a $9C6A A2 4A                    ; X = 4A
L9C6C:                                                                          ;
    JMP      bank7_F0D7                     ; 0x5c7c $9C6C 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Goriya:                                                   ;
    LDY      #$0C                      ; 0x5c7f $9C6F A0 0C                    ; Y = 0C (related to tile mapping for throw)
    LDA      zp_81,x                     ; 0x5c81 $9C71 B5 81                    ; Current Animation Frame for Enemy
    BEQ      L9C7D                     ; 0x5c83 $9C73 F0 08                    ;
    CMP      #$01                      ; 0x5c85 $9C75 C9 01                    ;
    BNE      L9C8B                     ; 0x5c87 $9C77 D0 12                    ;
    LDY      #$08                      ; 0x5c89 $9C79 A0 08                    ; Y = 08
    BNE      L9C8B                     ; 0x5c8b $9C7B D0 0E                    ;
L9C7D:                                                                          ;
    LDY      #$00                      ; 0x5c8d $9C7D A0 00                    ; Y = 00
    LDA      zp_71,x                     ; 0x5c8f $9C7F B5 71                    ;; Enemy X Velocity
    BEQ      L9C8B                     ; 0x5c91 $9C81 F0 08                    ;
    LDA      frame_counter                       ; 0x5c93 $9C83 A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x5c95 $9C85 29 08                    ; keep bits .... x...
    BEQ      L9C8B                     ; 0x5c97 $9C87 F0 02                    ;
    LDY      #$04                      ; 0x5c99 $9C89 A0 04                    ; Y = 04
L9C8B:                                                                          ;
    TYA                                ; 0x5c9b $9C8B 98                       ;
    LDY      zp_91,x                     ; 0x5c9c $9C8C B4 91                    ;
    TAX                                ; 0x5c9e $9C8E AA                       ;
    JSR      bank7_F1F4                     ; 0x5c9f $9C8F 20 F4 F1                 ;
    JMP      bank7_F0D7                     ; 0x5ca2 $9C92 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Tables_for_Moblin_and_Spear__before_throw__tile_mapping_and_offsets:      ;
.byt    $24,$1E,$24,$2A,$30,$36        ; 0x5ca5 $9C95 24 1E 24 2A 30 36        ;
L9C9B:                                                                          ;
.byt    $04,$F8,$FC,$08                ; 0x5cab $9C9B 04 F8 FC 08              ;
L9C9F:                                                                          ;
.byt    $00,$01,$00,$01,$01            ; 0x5caf $9C9F 00 01 00 01 01           ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Moblin:                                                   ;
    LDA      zp_02                       ; 0x5cb4 $9CA4 A5 02                    ;
    STA      zp_D9                       ; 0x5cb6 $9CA6 85 D9                    ; Thunder Spell modifier ?
    LDA      zp_81,x                     ; 0x5cb8 $9CA8 B5 81                    ;; Current Animation Frame for Enemys
    CMP      #$02                      ; 0x5cba $9CAA C9 02                    ;
    BNE      L9CB8                     ; 0x5cbc $9CAC D0 0A                    ;
    LDA      bss_0504,x                   ; 0x5cbe $9CAE BD 04 05                 ;; Timer for Enemy
    CMP      #$08                      ; 0x5cc1 $9CB1 C9 08                    ;
    LDA      zp_81,x                     ; 0x5cc3 $9CB3 B5 81                    ;; Current Animation Frame for Enemys
    BCS      L9CB8                     ; 0x5cc5 $9CB5 B0 01                    ;
    LSR                                ; 0x5cc7 $9CB7 4A                       ;
L9CB8:                                                                          ;
    STA      bss_05E4                     ; 0x5cc8 $9CB8 8D E4 05                 ;
    TAX                                ; 0x5ccb $9CBB AA                       ;
    LDA      bank1_Tables_for_Moblin_and_Spear__before_throw__tile_mapping_and_offsets,x; 0x5ccc $9CBC BD 95 9C;
    CPX      #$00                      ; 0x5ccf $9CBF E0 00                    ;
    BNE      L9CD4                     ; 0x5cd1 $9CC1 D0 11                    ;
    LDX      zp_10                       ; 0x5cd3 $9CC3 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      zp_71,x                     ; 0x5cd5 $9CC5 B4 71                    ; Enemy X Velocity
    BEQ      L9CD4                     ; 0x5cd7 $9CC7 F0 0B                    ;
    LDY      #$24                      ; 0x5cd9 $9CC9 A0 24                    ; Y = 24
    LDA      frame_counter                       ; 0x5cdb $9CCB A5 12                    ;; Frame Counter (ascending)
    AND      #$08                      ; 0x5cdd $9CCD 29 08                    ; keep bits .... x...
    BEQ      L9CD3                     ; 0x5cdf $9CCF F0 02                    ;
    LDY      #$1E                      ; 0x5ce1 $9CD1 A0 1E                    ; Y = 1E
L9CD3:                                                                          ;
    TYA                                ; 0x5ce3 $9CD3 98                       ;
L9CD4:                                                                          ;
    LDX      zp_10                       ; 0x5ce4 $9CD4 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      zp_91,x                     ; 0x5ce6 $9CD6 B4 91                    ;
    TAX                                ; 0x5ce8 $9CD8 AA                       ;
    JSR      bank7_F1F4                     ; 0x5ce9 $9CD9 20 F4 F1                 ;
    JSR      bank7_F1F4                     ; 0x5cec $9CDC 20 F4 F1                 ;
    STX      zp_0D                       ; 0x5cef $9CDF 86 0D                    ;
    LDX      zp_10                       ; 0x5cf1 $9CE1 A6 10                    ;; used as monster x register ;draw boss hp bar
    LDA      zp_C9                       ; 0x5cf3 $9CE3 A5 C9                    ;
    BNE      L9D56                     ; 0x5cf5 $9CE5 D0 6F                    ;
    LDA      bss_05E4                     ; 0x5cf7 $9CE7 AD E4 05                 ;
    BEQ      L9D56                     ; 0x5cfa $9CEA F0 6A                    ;
    CMP      #$01                      ; 0x5cfc $9CEC C9 01                    ;
    BNE      L9CF6                     ; 0x5cfe $9CEE D0 06                    ;
    LDA      zp_02                       ; 0x5d00 $9CF0 A5 02                    ;
    EOR      #$03                      ; 0x5d02 $9CF2 49 03                    ; flip bits .... ..xx
    STA      zp_02                       ; 0x5d04 $9CF4 85 02                    ;
L9CF6:                                                                          ;
    LDA      zp_00                     ; 0x5d06 $9CF6 A5 00                    ;
    SEC                                ; 0x5d08 $9CF8 38                       ;
    SBC      #$18                      ; 0x5d09 $9CF9 E9 18                    ;
    STA      zp_00                     ; 0x5d0b $9CFB 85 00                    ;
    LDA      bss_05E4                     ; 0x5d0d $9CFD AD E4 05                 ;
    CMP      #$03                      ; 0x5d10 $9D00 C9 03                    ;
    BCC      L9D08                     ; 0x5d12 $9D02 90 04                    ;
    LDA      zp_2A,x                     ; 0x5d14 $9D04 B5 2A                    ; Enemy Y Position
    STA      zp_00                     ; 0x5d16 $9D06 85 00                    ;
L9D08:                                                                          ;
    LDA      bss_05E4                     ; 0x5d18 $9D08 AD E4 05                 ;
    TAX                                ; 0x5d1b $9D0B AA                       ;
    DEX                                ; 0x5d1c $9D0C CA                       ;
    LDA      L9C9F,x                   ; 0x5d1d $9D0D BD 9F 9C                 ; refer to table at $5C95 (offset +A)
    TAX                                ; 0x5d20 $9D10 AA                       ;
    LDA      zp_D9                       ; 0x5d21 $9D11 A5 D9                    ;; Thunder Spell modifier ?
    CMP      #$01                      ; 0x5d23 $9D13 C9 01                    ;
    BNE      L9D19                     ; 0x5d25 $9D15 D0 02                    ;
    INX                                ; 0x5d27 $9D17 E8                       ;
    INX                                ; 0x5d28 $9D18 E8                       ;
L9D19:                                                                          ;
    TYA                                ; 0x5d29 $9D19 98                       ;
    PHA                                ; 0x5d2a $9D1A 48                       ;
    LDA      L9C9B,x                   ; 0x5d2b $9D1B BD 9B 9C                 ; refer to table at $9C95 (offset +3)
    LDX      zp_10                       ; 0x5d2e $9D1E A6 10                    ;; used as monster x register ;draw boss hp bar
    LDY      bss_0504,x                   ; 0x5d30 $9D20 BC 04 05                 ;; Timer for Enemy
    CPY      #$03                      ; 0x5d33 $9D23 C0 03                    ;
    BCC      L9D2C                     ; 0x5d35 $9D25 90 05                    ;
    CPY      #$0D                      ; 0x5d37 $9D27 C0 0D                    ;
    BCS      L9D2C                     ; 0x5d39 $9D29 B0 01                    ;
    ASL                                ; 0x5d3b $9D2B 0A                       ;
L9D2C:                                                                          ;
    CLC                                ; 0x5d3c $9D2C 18                       ;
    ADC      zp_01                       ; 0x5d3d $9D2D 65 01                    ;
    STA      zp_01                       ; 0x5d3f $9D2F 85 01                    ;
    PLA                                ; 0x5d41 $9D31 68                       ;
    TAY                                ; 0x5d42 $9D32 A8                       ;
    LDX      zp_0D                       ; 0x5d43 $9D33 A6 0D                    ;
    JSR      bank7_F0D7                     ; 0x5d45 $9D35 20 D7 F0                 ;
    LDA      bss_05E4                     ; 0x5d48 $9D38 AD E4 05                 ;
    CLC                                ; 0x5d4b $9D3B 18                       ;
    ADC      #$01                      ; 0x5d4c $9D3C 69 01                    ;
    AND      #$03                      ; 0x5d4e $9D3E 29 03                    ; keep bits .... ..xx
    BNE      L9D56                     ; 0x5d50 $9D40 D0 14                    ;
    LDA      #$F3                      ; 0x5d52 $9D42 A9 F3                    ; A = F3
    LDX      zp_D9                       ; 0x5d54 $9D44 A6 D9                    ;; Thunder Spell modifier ?
    CPX      #$02                      ; 0x5d56 $9D46 E0 02                    ;
    BEQ      L9D50                     ; 0x5d58 $9D48 F0 06                    ;
    LDA      #$0C                      ; 0x5d5a $9D4A A9 0C                    ; A = 0C
    INY                                ; 0x5d5c $9D4C C8                       ;
    INY                                ; 0x5d5d $9D4D C8                       ;
    INY                                ; 0x5d5e $9D4E C8                       ;
    INY                                ; 0x5d5f $9D4F C8                       ;
L9D50:                                                                          ;
    ADC      bss_01FB,y                   ; 0x5d60 $9D50 79 FB 01                 ;
L9D54     = * + $0001                                                          ;
    STA      bss_01FB,y                   ; 0x5d63 $9D53 99 FB 01                 ;
L9D56:                                                                          ;
    LDX      zp_10                       ; 0x5d66 $9D56 A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x5d68 $9D58 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Table_for_Daira_backswing_tile_mapping__offset_and_hitbox:                ;
.byt    $10,$12,$14                    ; 0x5d69 $9D59 10 12 14                 ;10 12 14	Tile mapping for Axe frames 1-2-3 (1-2 for Red Daira)
L9D5C:                                                                          ;
.byt    $00,$02,$11                    ; 0x5d6c $9D5C 00 02 11                 ;00 02 11	Y offset for Axe frames 1-2-3 (1-2 for Red Daira)
L9D5F:                                                                          ;
.byt    $0D,$F0,$FB,$F3,$10,$05        ; 0x5d6f $9D5F 0D F0 FB F3 10 05        ;0D F0 FB	X offset - Facing left		F3 10 05	X offset - Facing right
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Daira_Orange:                                             ;
    LDA      #$F6                      ; 0x5d75 $9D65 A9 F6                    ; A = F6
    BNE      L9D6B                     ; 0x5d77 $9D67 D0 02                    ;
bank1_Enemy_Routines2_Daira_Red_:                                               ;
    LDA      #$F5                      ; 0x5d79 $9D69 A9 F5                    ; A = F5
L9D6B:                                                                          ;
    STA      bank1_Various_Tile_Mappings_Daira_Axe_Swing_Frame_1; 0x5d7b $9D6B 8D E6 95;
    LDA      #$00                      ; 0x5d7e $9D6E A9 00                    ;;A = #$00 0000_0000
    STA      zp_0D                       ; 0x5d80 $9D70 85 0D                    ;
    LDA      zp_02                       ; 0x5d82 $9D72 A5 02                    ;
    STA      zp_D9                       ; 0x5d84 $9D74 85 D9                    ;; Thunder Spell modifier ?
    LDA      zp_A8,x                     ; 0x5d86 $9D76 B5 A8                    ;; Enemy State
    AND      #$04                      ; 0x5d88 $9D78 29 04                    ; keep bits .... .x..
    BEQ      L9D91                     ; 0x5d8a $9D7A F0 15                    ;
    LDA      zp_71,x                     ; 0x5d8c $9D7C B5 71                    ;; Enemy X Velocity
    BEQ      L9D91                     ; 0x5d8e $9D7E F0 11                    ;
    CLC                                ; 0x5d90 $9D80 18                       ;
    ADC      #$08                      ; 0x5d91 $9D81 69 08                    ;
    TAY                                ; 0x5d93 $9D83 A8                       ;
    LDA      #$08                      ; 0x5d94 $9D84 A9 08                    ; A = 08
    CPY      #$11                      ; 0x5d96 $9D86 C0 11                    ; if (Y >= 11)
    BCC      L9D8B                     ; 0x5d98 $9D88 90 01                    ; skip  to $5D8B
    LSR                                ; 0x5d9a $9D8A 4A                       ;
L9D8B:                                                                          ;
    AND      frame_counter                       ; 0x5d9b $9D8B 25 12                    ;; Frame Counter (ascending)
    BNE      L9D91                     ; 0x5d9d $9D8D D0 02                    ;
    INC      zp_0D                       ; 0x5d9f $9D8F E6 0D                    ;
L9D91:                                                                          ;
    LDY      zp_81,x                     ; 0x5da1 $9D91 B4 81                    ;; Current Animation Frame for Enemys
    DEY                                ; 0x5da3 $9D93 88                       ;
    STY      zp_0E                     ; 0x5da4 $9D94 84 0E                    ;
    LDY      zp_91,x                     ; 0x5da6 $9D96 B4 91                    ;
    LDX      #$16                      ; 0x5da8 $9D98 A2 16                    ; X = 16
    LDA      zp_0D                       ; 0x5daa $9D9A A5 0D                    ;
    BNE      L9DA0                     ; 0x5dac $9D9C D0 02                    ;
    LDX      #$1A                      ; 0x5dae $9D9E A2 1A                    ; A = 1A
L9DA0:                                                                          ;
    JSR      bank7_F1F4                     ; 0x5db0 $9DA0 20 F4 F1                 ;
    JSR      bank7_F1F4                     ; 0x5db3 $9DA3 20 F4 F1                 ;
    LDA      zp_C9                       ; 0x5db6 $9DA6 A5 C9                    ;
    BNE      L9DEE                     ; 0x5db8 $9DA8 D0 44                    ;
    LDX      zp_0E                     ; 0x5dba $9DAA A6 0E                    ;
    BMI      L9DEE                     ; 0x5dbc $9DAC 30 40                    ;
    BNE      L9DBC                     ; 0x5dbe $9DAE D0 0C                    ;
    LDA      zp_02                       ; 0x5dc0 $9DB0 A5 02                    ;
    EOR      #$03                      ; 0x5dc2 $9DB2 49 03                    ; flip bits .... ..xx
    STA      zp_02                       ; 0x5dc4 $9DB4 85 02                    ;
    LDA      zp_03                       ; 0x5dc6 $9DB6 A5 03                    ;
    ORA      #$80                      ; 0x5dc8 $9DB8 09 80                    ; set bits  x... ....
    STA      zp_03                       ; 0x5dca $9DBA 85 03                    ;
L9DBC:                                                                          ;
    LDA      bank1_Table_for_Daira_backswing_tile_mapping__offset_and_hitbox,x; 0x5dcc $9DBC BD 59 9D; refer to table at $5D59
    TAX                                ; 0x5dcf $9DBF AA                       ;
    JSR      bank7_F0D7                     ; 0x5dd0 $9DC0 20 D7 F0                 ;
    LDA      zp_2A,x                     ; 0x5dd3 $9DC3 B5 2A                    ; Enemy Y Position
    LDX      zp_0E                     ; 0x5dd5 $9DC5 A6 0E                    ;
    CLC                                ; 0x5dd7 $9DC7 18                       ;
    ADC      L9D5C,x                   ; 0x5dd8 $9DC8 7D 5C 9D                 ; refer to table at $5D59 (offset +3)
    STA      bss_01F8,y                   ; 0x5ddb $9DCB 99 F8 01                 ;
    STA      bss_01FC,y                   ; 0x5dde $9DCE 99 FC 01                 ;
    LDA      zp_D9                       ; 0x5de1 $9DD1 A5 D9                    ;; Thunder Spell modifier ?
    LSR                                ; 0x5de3 $9DD3 4A                       ;
    BCC      L9DDB                     ; 0x5de4 $9DD4 90 05                    ;
    TXA                                ; 0x5de6 $9DD6 8A                       ;
    CLC                                ; 0x5de7 $9DD7 18                       ;
    ADC      #$03                      ; 0x5de8 $9DD8 69 03                    ;
    TAX                                ; 0x5dea $9DDA AA                       ;
L9DDB:                                                                          ;
    LDA      L9D5F,x                   ; 0x5deb $9DDB BD 5F 9D                 ; refer to table at $5D59 (offset +6)
    PHA                                ; 0x5dee $9DDE 48                       ;
    CLC                                ; 0x5def $9DDF 18                       ;
    ADC      bss_01FB,y                   ; 0x5df0 $9DE0 79 FB 01                 ;
    STA      bss_01FB,y                   ; 0x5df3 $9DE3 99 FB 01                 ;
    PLA                                ; 0x5df6 $9DE6 68                       ;
    CLC                                ; 0x5df7 $9DE7 18                       ;
    ADC      bss_01FF,y                   ; 0x5df8 $9DE8 79 FF 01                 ;
    STA      bss_01FF,y                   ; 0x5dfb $9DEB 99 FF 01                 ;
L9DEE:                                                                          ;
    LDX      zp_10                       ; 0x5dfe $9DEE A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x5e00 $9DF0 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Lowder:                                                   ;
    LDA      #$3C                      ; 0x5e01 $9DF1 A9 3C                    ; A = 3C
    JMP      bank7_F0CC                     ; 0x5e03 $9DF3 4C CC F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Moby:                                                     ;
    LDA      #$44                      ; 0x5e06 $9DF6 A9 44                    ; A = 44
    JMP      bank7_F0CC                     ; 0x5e08 $9DF8 4C CC F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Enemy_Routines2_Megmat:                                                   ;
    LDA      bss_057E,x                   ; 0x5e0b $9DFB BD 7E 05                 ; Enemy Y Velocity
    LDX      #$40                      ; 0x5e0e $9DFE A2 40                    ;;X = #$40 0100_0000
    CMP      #$02                      ; 0x5e10 $9E00 C9 02                    ;
    BMI      L9E06                     ; 0x5e12 $9E02 30 02                    ;
    INX                                ; 0x5e14 $9E04 E8                       ;
    INX                                ; 0x5e15 $9E05 E8                       ;
L9E06:                                                                          ;
    JMP      bank7_F0D7                     ; 0x5e16 $9E06 4C D7 F0                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9E09:                                                                          ;
    RTS                                ; 0x5e19 $9E09 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_table12:                                                                  ;
.byt    $FF,$01                        ; 0x5e1a $9E0A FF 01                    ;
; ---------------------------------------------------------------------------- ;
bank1_Geldarm_body_tiles_layout:                                                ;
    LDA      bss_040E,x                   ; 0x5e1c $9E0C BD 0E 04                 ;; Enemy Hit State (0 = not in Hit State)	;	causes flashing
    BEQ      L9E15                     ; 0x5e1f $9E0F F0 04                    ;
    AND      #$03                      ; 0x5e21 $9E11 29 03                    ; keep bits .... ..xx
    STA      zp_03                       ; 0x5e23 $9E13 85 03                    ;
L9E15:                                                                          ;
    LDA      zp_C9                       ; 0x5e25 $9E15 A5 C9                    ;
    AND      #$08                      ; 0x5e27 $9E17 29 08                    ; keep bits .... x...
    BNE      L9E09                     ; 0x5e29 $9E19 D0 EE                    ;
    LDA      #$00                      ; 0x5e2b $9E1B A9 00                    ; A = 00
    STA      zp_00                     ; 0x5e2d $9E1D 85 00                    ;
    LDA      zp_81,x                     ; 0x5e2f $9E1F B5 81                    ;; Current Animation Frame for Enemys
    SEC                                ; 0x5e31 $9E21 38                       ;
    SBC      zp_2A,x                     ; 0x5e32 $9E22 F5 2A                    ;; Enemy Y Position
    STA      zp_02                       ; 0x5e34 $9E24 85 02                    ;
L9E26:                                                                          ;
    CMP      #$05                      ; 0x5e36 $9E26 C9 05                    ;
    BCC      bank1_Geldarm_head        ; 0x5e38 $9E28 90 08                    ;
    INC      zp_00                     ; 0x5e3a $9E2A E6 00                    ;
    SEC                                ; 0x5e3c $9E2C 38                       ;
    SBC      #$05                      ; 0x5e3d $9E2D E9 05                    ;
    JMP      L9E26                     ; 0x5e3f $9E2F 4C 26 9E                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Geldarm_head:                                                             ;
    STA      zp_01                       ; 0x5e42 $9E32 85 01                    ;
    LDY      zp_91,x                     ; 0x5e44 $9E34 B4 91                    ;
    TYA                                ; 0x5e46 $9E36 98                       ;
    CLC                                ; 0x5e47 $9E37 18                       ;
    ADC      #$14                      ; 0x5e48 $9E38 69 14                    ;
    STA      zp_0F                       ; 0x5e4a $9E3A 85 0F                    ;
    LDA      zp_2A,x                     ; 0x5e4c $9E3C B5 2A                    ; Enemy Y position
    STA      bss_0200,y                   ; 0x5e4e $9E3E 99 00 02                 ;
    LDA      #$62                      ; 0x5e51 $9E41 A9 62                    ; A = 62 (Geldarm head tile code)
    STA      bss_0201,y                   ; 0x5e53 $9E43 99 01 02                 ;
    LDA      zp_02                       ; 0x5e56 $9E46 A5 02                    ;
    BNE      bank1_Geldarm_body_Tile_Mapping; 0x5e58 $9E48 D0 09                   ;
    TYA                                ; 0x5e5a $9E4A 98                       ;
    CLC                                ; 0x5e5b $9E4B 18                       ;
    ADC      #$04                      ; 0x5e5c $9E4C 69 04                    ;
    STA      zp_0F                       ; 0x5e5e $9E4E 85 0F                    ;
    JMP      L9E70                     ; 0x5e60 $9E50 4C 70 9E                 ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
bank1_Geldarm_body_Tile_Mapping:                                                ;
    LDA      bss_0200,y                   ; 0x5e63 $9E53 B9 00 02                 ;
    CLC                                ; 0x5e66 $9E56 18                       ;
    ADC      zp_00                     ; 0x5e67 $9E57 65 00                    ;
    STA      bss_0204,y                   ; 0x5e69 $9E59 99 04 02                 ;
    LDA      zp_01                       ; 0x5e6c $9E5C A5 01                    ;
    BEQ      L9E6B                     ; 0x5e6e $9E5E F0 0B                    ;
    DEC      zp_01                       ; 0x5e70 $9E60 C6 01                    ;
    LDA      bss_0204,y                   ; 0x5e72 $9E62 B9 04 02                 ;
    CLC                                ; 0x5e75 $9E65 18                       ;
    ADC      #$01                      ; 0x5e76 $9E66 69 01                    ;
    STA      bss_0204,y                   ; 0x5e78 $9E68 99 04 02                 ;
L9E6B:                                                                          ;
    LDA      #$64                      ; 0x5e7b $9E6B A9 64                    ; A = 64
    STA      bss_0205,y                   ; 0x5e7d $9E6D 99 05 02                 ;
L9E70:                                                                          ;
    LDA      frame_counter                       ; 0x5e80 $9E70 A5 12                    ;; Frame Counter (ascending)
    AND      #$10                      ; 0x5e82 $9E72 29 10                    ; keep bits ...x ....
    ASL                                ; 0x5e84 $9E74 0A                       ;
    ASL                                ; 0x5e85 $9E75 0A                       ;
    ORA      zp_03                       ; 0x5e86 $9E76 05 03                    ;
    STA      bss_0202,y                   ; 0x5e88 $9E78 99 02 02                 ;
    STA      bss_0206,y                   ; 0x5e8b $9E7B 99 06 02                 ;
    LDA      zp_CD                       ; 0x5e8e $9E7E A5 CD                    ;
    STA      bss_0203,y                   ; 0x5e90 $9E80 99 03 02                 ;
    STA      bss_0207,y                   ; 0x5e93 $9E83 99 07 02                 ;
    INY                                ; 0x5e96 $9E86 C8                       ;
    INY                                ; 0x5e97 $9E87 C8                       ;
    INY                                ; 0x5e98 $9E88 C8                       ;
    INY                                ; 0x5e99 $9E89 C8                       ;
    CPY      zp_0F                       ; 0x5e9a $9E8A C4 0F                    ;
    BNE      bank1_Geldarm_body_Tile_Mapping; 0x5e9c $9E8C D0 C5                   ;
    LDY      zp_91,x                     ; 0x5e9e $9E8E B4 91                    ;
    LDA      zp_AF,x                     ; 0x5ea0 $9E90 B5 AF                    ;; Various enemy state variables
    BEQ      L9EAF                     ; 0x5ea2 $9E92 F0 1B                    ;
    LDA      frame_counter                       ; 0x5ea4 $9E94 A5 12                    ;; Frame Counter (ascending)
    AND      #$20                      ; 0x5ea6 $9E96 29 20                    ; keep bits ..x. ....
    LSR                                ; 0x5ea8 $9E98 4A                       ;
    LSR                                ; 0x5ea9 $9E99 4A                       ;
    LSR                                ; 0x5eaa $9E9A 4A                       ;
    LSR                                ; 0x5eab $9E9B 4A                       ;
    LSR                                ; 0x5eac $9E9C 4A                       ;
    TAX                                ; 0x5ead $9E9D AA                       ;
    LDA      bss_0203,y                   ; 0x5eae $9E9E B9 03 02                 ;
    CLC                                ; 0x5eb1 $9EA1 18                       ;
    ADC      bank1_table12,x           ; 0x5eb2 $9EA2 7D 0A 9E                 ; refer to table at $5E0A
    STA      bss_0207,y                   ; 0x5eb5 $9EA5 99 07 02                 ;
    CLC                                ; 0x5eb8 $9EA8 18                       ;
    ADC      bank1_table12,x           ; 0x5eb9 $9EA9 7D 0A 9E                 ; refer to table at $5E0A
    STA      bss_0203,y                   ; 0x5ebc $9EAC 99 03 02                 ;
L9EAF:                                                                          ;
    LDX      zp_10                       ; 0x5ebf $9EAF A6 10                    ;; used as monster x register ;draw boss hp bar
    RTS                                ; 0x5ec1 $9EB1 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
L9EB2:                                                                          ;
    LDA      zp_ED                       ; 0x5ec2 $9EB2 A5 ED                    ;; Sound Effects Type 2; Sound Effects Type 2
    ORA      #$40                      ; 0x5ec4 $9EB4 09 40                    ; set bits  .x.. ....
    STA      zp_ED                       ; 0x5ec6 $9EB6 85 ED                    ;; Sound Effects Type 2; Sound Effects Type 2
    RTS                                ; 0x5ec8 $9EB8 60                       ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
setpos Sub_World_Area_Pointers
bank1_Area_Pointers_Death_Mountain:                                             ;
.word    Area_Data_Death_Mountain_And_Maze; 0x6010 $A000 6C A2                    ;Crash (not enough data to make a valid area)
.word    LA33E                         ; 0x6012 $A002 3E A3                    ;Gradual slope climb left
.word    LA398                         ; 0x6014 $A004 98 A3                    ;Grotto with Bots and Goriya
.word    LA3DC                         ; 0x6016 $A006 DC A3                    ;Grotto with Octoroks and Goriya
.word    LA31E                         ; 0x6018 $A008 1E A3                    ;Gradual slope climb right
.word    LA5B6                         ; 0x601a $A00A B6 A5                    ;Generic Bridge
.word    LA362                         ; 0x601c $A00C 62 A3                    ;Grotto with notches in ground (for Octoroks)
.word    LA3B8                         ; 0x601e $A00E B8 A3                    ;Grotto with random lava pits
.word    LA5B6                         ; 0x6020 $A010 B6 A5                    ;Generic Bridge
.word    LA4A4                         ; 0x6022 $A012 A4 A4                    ;
.word    LA362                         ; 0x6024 $A014 62 A3                    ;
.word    LA4C0                         ; 0x6026 $A016 C0 A4                    ;
.word    LA33E                         ; 0x6028 $A018 3E A3                    ;
.word    LA31E                         ; 0x602a $A01A 1E A3                    ;
.word    LA3B8                         ; 0x602c $A01C B8 A3                    ;
.word    LA4D4                         ; 0x602e $A01E D4 A4                    ;
.word    LA408                         ; 0x6030 $A020 08 A4                    ;
.word    L8C96                         ; 0x6032 $A022 96 8C                    ;BG Map Type 5 (dead-end cave)
.word    L8C96                         ; 0x6034 $A024 96 8C                    ;BG Map Type 5 (dead-end cave)
.word    LA432                         ; 0x6036 $A026 32 A4                    ;
.word    LA458                         ; 0x6038 $A028 58 A4                    ;
.word    LA4EC                         ; 0x603a $A02A EC A4                    ;
.word    LA5F6                         ; 0x603c $A02C F6 A5                    ;
.word    LA408                         ; 0x603e $A02E 08 A4                    ;
.word    LA408                         ; 0x6040 $A030 08 A4                    ;
.word    LA432                         ; 0x6042 $A032 32 A4                    ;
.word    LA59B                         ; 0x6044 $A034 9B A5                    ;
.word    Area_Data_Death_Mountain_And_Maze; 0x6046 $A036 6C A2                    ;
.word    Area_Data_Death_Mountain_And_Maze; 0x6048 $A038 6C A2                    ;
.word    LA26E                         ; 0x604a $A03A 6E A2                    ;
.word    LA26E                         ; 0x604c $A03C 6E A2                    ;
.word    LA26E                         ; 0x604e $A03E 6E A2                    ;
.word    LA26E                         ; 0x6050 $A040 6E A2                    ;
.word    LA26E                         ; 0x6052 $A042 6E A2                    ;
.word    LA52B                         ; 0x6054 $A044 2B A5                    ;
.word    LA52B                         ; 0x6056 $A046 2B A5                    ;
.word    LA57E                         ; 0x6058 $A048 7E A5                    ;
.word    LA55F                         ; 0x605a $A04A 5F A5                    ;
.word    LA515                         ; 0x605c $A04C 15 A5                    ;
.word    LA298                         ; 0x605e $A04E 98 A2                    ;
.word    LA298                         ; 0x6060 $A050 98 A2                    ;
.word    LA298                         ; 0x6062 $A052 98 A2                    ;
.word    LA298                         ; 0x6064 $A054 98 A2                    ;
.word    LA298                         ; 0x6066 $A056 98 A2                    ;
.word    LA298                         ; 0x6068 $A058 98 A2                    ;
.word    LA298                         ; 0x606a $A05A 98 A2                    ;
.word    LA298                         ; 0x606c $A05C 98 A2                    ;
.word    LA515                         ; 0x606e $A05E 15 A5                    ;
.word    LA53B                         ; 0x6070 $A060 3B A5                    ;
.word    LA53B                         ; 0x6072 $A062 3B A5                    ;
.word    LA53B                         ; 0x6074 $A064 3B A5                    ;
.word    LA515                         ; 0x6076 $A066 15 A5                    ;
.word    LA2DC                         ; 0x6078 $A068 DC A2                    ;
.word    LA2DC                         ; 0x607a $A06A DC A2                    ;
.word    LA2DC                         ; 0x607c $A06C DC A2                    ;
.word    LA2DC                         ; 0x607e $A06E DC A2                    ;
.word    LA2DC                         ; 0x6080 $A070 DC A2                    ;
.word    LA505                         ; 0x6082 $A072 05 A5                    ;
.word    LA505                         ; 0x6084 $A074 05 A5                    ;
.word    LA2BA                         ; 0x6086 $A076 BA A2                    ;
.word    LA2BA                         ; 0x6088 $A078 BA A2                    ;
.word    LA2BA                         ; 0x608a $A07A BA A2                    ;
.word    LA2BA                         ; 0x608c $A07C BA A2                    ;
setpos Sub_World_Enemy_Pointers
bank1_Enemy_Pointers_Death_Mountain:                                            ;
.word    L71D8                         ; 0x608e $A07E D8 71                    ;Base Offset is 48A0
.word    L71DA                         ; 0x6090 $A080 DA 71                    ;
.word    L71EB                         ; 0x6092 $A082 EB 71                    ;
.word    L71FA                         ; 0x6094 $A084 FA 71                    ;
.word    L7218                         ; 0x6096 $A086 18 72                    ;
.word    L7223                         ; 0x6098 $A088 23 72                    ;
.word    L7237                         ; 0x609a $A08A 37 72                    ;
.word    L7244                         ; 0x609c $A08C 44 72                    ;
.word    L7256                         ; 0x609e $A08E 56 72                    ;
.word    L7268                         ; 0x60a0 $A090 68 72                    ;
.word    L7273                         ; 0x60a2 $A092 73 72                    ;
.word    L7280                         ; 0x60a4 $A094 80 72                    ;
.word    L728D                         ; 0x60a6 $A096 8D 72                    ;
.word    L729C                         ; 0x60a8 $A098 9C 72                    ;
.word    L72E5                         ; 0x60aa $A09A E5 72                    ;
.word    L72BA                         ; 0x60ac $A09C BA 72                    ;
.word    L72CA                         ; 0x60ae $A09E CA 72                    ;
.word    L72AB                         ; 0x60b0 $A0A0 AB 72                    ;
.word    L72AB                         ; 0x60b2 $A0A2 AB 72                    ;
.word    L72D9                         ; 0x60b4 $A0A4 D9 72                    ;
.word    L72E2                         ; 0x60b6 $A0A6 E2 72                    ;
.word    L72C5                         ; 0x60b8 $A0A8 C5 72                    ;
.word    L7223                         ; 0x60ba $A0AA 23 72                    ;
.word    L7228                         ; 0x60bc $A0AC 28 72                    ;
.word    L724D                         ; 0x60be $A0AE 4D 72                    ;
.word    L725B                         ; 0x60c0 $A0B0 5B 72                    ;
.word    L71D8                         ; 0x60c2 $A0B2 D8 71                    ;
.word    L71D8                         ; 0x60c4 $A0B4 D8 71                    ;
.word    L71D8                         ; 0x60c6 $A0B6 D8 71                    ;
.word    L7366                         ; 0x60c8 $A0B8 66 73                    ;
.word    L7366                         ; 0x60ca $A0BA 66 73                    ;
.word    L71D8                         ; 0x60cc $A0BC D8 71                    ;
.word    L71D8                         ; 0x60ce $A0BE D8 71                    ;
.word    L71D8                         ; 0x60d0 $A0C0 D8 71                    ;
.word    L72EE                         ; 0x60d2 $A0C2 EE 72                    ;
.word    L72F9                         ; 0x60d4 $A0C4 F9 72                    ;
.word    L71D8                         ; 0x60d6 $A0C6 D8 71                    ;
.word    L734B                         ; 0x60d8 $A0C8 4B 73                    ;
.word    L7311                         ; 0x60da $A0CA 11 73                    ;
.word    L734E                         ; 0x60dc $A0CC 4E 73                    ;
.word    L734E                         ; 0x60de $A0CE 4E 73                    ;
.word    L71D8                         ; 0x60e0 $A0D0 D8 71                    ;
.word    L71D8                         ; 0x60e2 $A0D2 D8 71                    ;
.word    L71D8                         ; 0x60e4 $A0D4 D8 71                    ;
.word    L71D8                         ; 0x60e6 $A0D6 D8 71                    ;
.word    L71D8                         ; 0x60e8 $A0D8 D8 71                    ;
.word    L71D8                         ; 0x60ea $A0DA D8 71                    ;
.word    L731C                         ; 0x60ec $A0DC 1C 73                    ;
.word    L7325                         ; 0x60ee $A0DE 25 73                    ;
.word    L732A                         ; 0x60f0 $A0E0 2A 73                    ;
.word    L7335                         ; 0x60f2 $A0E2 35 73                    ;
.word    L7342                         ; 0x60f4 $A0E4 42 73                    ;
.word    L737E                         ; 0x60f6 $A0E6 7E 73                    ;
.word    L737E                         ; 0x60f8 $A0E8 7E 73                    ;
.word    L71D8                         ; 0x60fa $A0EA D8 71                    ;
.word    L71D8                         ; 0x60fc $A0EC D8 71                    ;
.word    L71D8                         ; 0x60fe $A0EE D8 71                    ;
.word    L71D8                         ; 0x6100 $A0F0 D8 71                    ;
.word    L71D8                         ; 0x6102 $A0F2 D8 71                    ;
.word    L71D8                         ; 0x6104 $A0F4 D8 71                    ;
.word    L71D8                         ; 0x6106 $A0F6 D8 71                    ;
.word    L71D8                         ; 0x6108 $A0F8 D8 71                    ;
.word    L71D8                         ; 0x610a $A0FA D8 71                    ;
; ---------------------------------------------------------------------------- ;
setpos Sub_World_Key_Areas
.include "shared/death_maze_key_areas.asm"
; ---------------------------------------------------------------------------- ;
setpos $bf70
.include "prg7/reset.asm"
setpos $BFFA
.include "prg7/vector.asm"

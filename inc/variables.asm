; character mappings
;(c) = $0e
COPYRIGHT = $0e
.charmap $2c, $9c ; ,
.charmap $2e, $cf ; .
.charmap $30, $d0 ; 0
.charmap $31, $d1 ; 1
.charmap $32, $d2 ; 2
.charmap $33, $d3 ; 3
.charmap $34, $d4 ; 4
.charmap $35, $d5 ; 5
.charmap $36, $d6 ; 6
.charmap $37, $d7 ; 7
.charmap $38, $d8 ; 8
.charmap $39, $d9 ; 9
.charmap $61, $da ; a
.charmap $62, $db ; b
.charmap $63, $dc ; c
.charmap $64, $dd ; d
.charmap $65, $de ; e
.charmap $66, $df ; f
.charmap $67, $e0 ; g
.charmap $68, $e1 ; h
.charmap $69, $e2 ; i
.charmap $6a, $e3 ; j
.charmap $6b, $e4 ; k
.charmap $6c, $e5 ; l
.charmap $6d, $e6 ; m
.charmap $6e, $e7 ; n
.charmap $6f, $e8 ; o
.charmap $70, $e9 ; p
.charmap $71, $ea ; q
.charmap $72, $eb ; r
.charmap $73, $ec ; s
.charmap $74, $ed ; t
.charmap $75, $ee ; u
.charmap $76, $ef ; v
.charmap $77, $f0 ; w
.charmap $78, $f1 ; x
.charmap $79, $f2 ; y
.charmap $7a, $f3 ; z
.charmap $20, $f4 ; space
;linefeed = $fd
LF = $fd

; Table addresses that exist in multiple banks:
; world<->bank:
; - world 0 = bank1 or bank2 (overworld encounters)
; - world 1 = bank3 (west hyrule towns)
; - world 2 = bank3 (east hyrule towns)
; - world 3 = bank4 (palaces 1,2,5)
; - world 4 = bank4 (palaces 3,4,6)
; - world 5 = bank5 (grand palace)
; (note: table at $C4B7 is this except always bank1, game_mode_load_rom_bank_data($CD40) does this logic)

; The base address of "Key Area" pointer tables in banks 1 or 2
Main_World_Key_Areas = $861F ; The "main worlds", East Hyrule and West Hyrule
Sub_World_Key_Areas = $A0FC  ; The "subworlds", Death Mountain and Maze Island

; The base address of "Area Data" pointer tables
Main_World_Area_Pointers = $8523 ; The "main worlds", East Hyrule and West Hyrule
Sub_World_Area_Pointers = $A000  ; The "subworlds", Death Mountain and Maze Island

; The base address of "Enemy Data" pointer tables
Main_World_Enemy_Pointers = $85A1  ; The "main worlds", East Hyrule and West Hyrule
Sub_World_Enemy_Pointers = $A07E   ; The "subworlds", Death Mountain and Maze Island

; The base address of layer tile pointer builders
Main_World_Build_Pointer_for_Layer_Tiles = $81A3

; The base address of "Enemy Data" copied from different banks into SRAM at $7000
Enemy_Data_ROM = $88A0
Enemy_Data_RAM = $7000

; The base address of overworld map data pointers (in banks 1 & 2)
Overworld_Map_Data_Pointers = $8508

; The base address of Object Tile Mapping pointers
Object_Tile_Mappings = $8500

; The base address of Random Battle Tables (in banks 1 & 2)
Random_Battle_Tables = $8409

; The address of the "limit check" function in banks 1 and 2
; (note: these might be identical and could potentially be
;  deduped?)
Limit_Check_Function = $83CF

; The address of the function that acts on chopping down trees
; with the hammer in either bank 1 or 2
Chop_Down_Tree_Function = $83A1

; Base address for "Object Construction Addresses" in banks 1,2 and 4
Small_Objects_Construction_Address = $812F
Object_Construction_Addresses = $80EE

; Base address of sidescroll palettes in banks 1-5
Sidescroll_Palettes = $800E

; Base address of sidescroll collision logic(?) in banks 1-5
Sidescroll_Collision_Function = $850C
Sidescroll_Collision_Table = $851A

; Address of an unknown function that's in bank 1 or 2

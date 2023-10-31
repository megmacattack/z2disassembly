; system ram locations
area_code = $0561
town_code = $056B
lives_remaining = $0700
region_number = $0706
world_number = $0707
game_mode = $0736
PRG_bank = $0769

; constants
joy1_pressed = $F5
joy2_pressed = $F6
joy1_held    = $F7
joy2_held    = $F8

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

; The base address of "Key Area" pointer tables in banks 1 or 2
Main_World_Key_Areas = $861F ; The "main worlds", East Hyrule and West Hyrule
Sub_World_Key_Areas = $A0FC  ; The "subworlds", Death Mountain and Maze Island

; The base address of "Area Data" pointer tables
Main_World_Area_Pointers = $8523 ; The "main worlds", East Hyrule and West Hyrule
Sub_World_Area_Pointers = $A000  ; The "subworlds", Death Mountain and Maze Island

; The base address of "Enemy Data" pointer tables
Main_World_Enemy_Pointers = $85A1  ; The "main worlds", East Hyrule and West Hyrule
Sub_World_Enemy_Pointers = $A07E   ; The "subworlds", Death Mountain and Maze Island

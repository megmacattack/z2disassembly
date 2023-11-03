.include "nes.asm"
.include "mmc1.asm"
.include "variables.asm"
.include "macros.asm"
.include "globals.asm"

.segment "BSS"
.org $300

setpos $051B
rng_base: .res 4

setpos $0561
area_code: .res 1

setpos $056B
town_code: .res 1

setpos $0700
lives_remaining: .res 1

setpos $0706
region_number: .res 1 ; overworld index (0=west hyrule, 1=death mtn/maze island, 2=east hyrule)

setpos $0707
world_number: .res 1 ; "world" (0=caves, enemy encounters...; 1=west hyrule towns; 2=east hyrule towns; 3=palace 1,2,5 ; 4=palace 3,4,6 ; 5=great palace)

setpos $0736
game_mode: .res 1

setpos $0769
PRG_bank: .res 1

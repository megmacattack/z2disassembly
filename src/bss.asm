.include "nes.asm"
.include "mmc1.asm"
.include "variables.asm"
.include "macros.asm"
.include "globals.asm"

.segment "BSS"
.org $300

setpos $302
bss_0302: .res 1 ; unknown size

setpos $363
bss_0363: .res 1 ; unknown size

setpos $3A4
bss_03A4: .res 1 ; unknown size

setpos $051A
; The RNG consists of a 9 byte linear shift register.
; For more specific details, see https://wiki.bindingforce.net/index.php/RNG_Algorithm
; The first byte is the seed, fed with a mix of new data and bits from the second byte
rng_base: .res 1
; The second byte is the most commonly drawn from for rng data
rng_out: .res 1
; The third byte is sometimes used as well.
rng_alt: .res 1
; The rest are only indirectly referenced.
rng_tail: .res 6

setpos $0561
area_code: .res 1

setpos $056B
town_code: .res 1
palace_code: .res 1

setpos $5C9
bss_05C9: .res 1 ; unknown size

setpos $600
bss_0600: .res 1 ; unknown size

setpos $620
bss_0620: .res 1 ; unknown size

setpos $640
bss_0640: .res 1 ; unknown size

setpos $660
bss_0660: .res 1 ; unknown size

setpos $680
bss_0680: .res 1 ; unknown size

setpos $6A0
bss_06A0: .res 1 ; unknown size

setpos $6C0
bss_06C0: .res 1 ; unknown size

setpos $0700
lives_remaining: .res 1

setpos $0706
region_number: .res 1 ; overworld index (0=west hyrule, 1=death mtn/maze island, 2=east hyrule)
world_number: .res 1 ; "world" (0=caves, enemy encounters...; 1=west hyrule towns; 2=east hyrule towns; 3=palace 1,2,5 ; 4=palace 3,4,6 ; 5=great palace)

setpos $0736
game_mode: .res 1

setpos $0769
PRG_bank: .res 1

setpos $7AD
bss_07AD: .res 1 ; unknown size

.include "nes.asm"
.include "mmc1.asm"
.include "variables.asm"
.include "macros.asm"
.include "globals.asm"

.segment "PPU_REG"
.org $2000
setpos $2000
PPU_CTRL: .res 1
PPU_MASK: .res 1
PPU_STATUS: .res 1
OAM_ADDR: .res 1
OAM_DATA: .res 1
PPU_SCROLL: .res 1
PPU_ADDR: .res 1
PPU_DATA: .res 1

.segment "IO_REG"
.org $4000
setpos $4000
SQ1_VOL: .res 1
SQ1_SWEEP: .res 1
SQ1_LO: .res 1
SQ1_HI: .res 1
SQ2_VOL: .res 1
SQ2_SWEEP: .res 1
SQ2_LO: .res 1
SQ2_HI: .res 1
TRI_LINEAR: .res 1

setpos $400A
TRI_LO: .res 1
TRI_HI: .res 1
NOISE_VOL: .res 1

setpos $400E
NOISE_LO: .res 1
NOISE_HI: .res 1
DMC_FREQ: .res 1
DMC_RAW: .res 1
DMC_START: .res 1
DMC_LEN: .res 1
OAM_DMA: .res 1
SND_CHN: .res 1
JOY1: .res 1
JOY2: .res 1

.segment "MMC1_REG"
.org $8000
setpos $8000
MMC1_Control: .res 1

setpos $A000
MMC1_CHR0_bank: .res 1

setpos $C000
MMC1_CHR1_bank: .res 1

setpos $E000
MMC1_PRG_bank: .res 1

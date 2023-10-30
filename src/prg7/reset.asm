; This reset routine and the reset vector lives at the top of every bank,
; just in case the mapper maps a bank other than bank7 to the top. In any event,
; it will always execute with a PC of $ff70, even if it came from a lower bank.
bank7_reset:                                                                   ;
    SEI                                ; 0x1ff80 $FF70 78                      ;
    CLD                                ; 0x1ff81 $FF71 D8                      ;
    LDX      #$00                      ; 0x1ff82 $FF72 A2 00                   ; X = 00
    STX      PPU_CTRL                  ; 0x1ff84 $FF74 8E 00 20                ;
    INX                                ; 0x1ff87 $FF77 E8                      ;
@PPUSpin:                                                                      ;
    LDA      PPU_STATUS                ; 0x1ff88 $FF78 AD 02 20                ; Wait 2 frames for PPU to warm up
    BPL      @PPUSpin                  ; 0x1ff8b $FF7B 10 FB                   ;
    DEX                                ; 0x1ff8d $FF7D CA                      ;
    BEQ      @PPUSpin                  ; 0x1ff8e $FF7E F0 F8                   ;
    TXS                                ; 0x1ff90 $FF80 9A                      ;
    STX      MMC1_Control              ; 0x1ff91 $FF81 8E 00 80                ; Clear MMC1 registers
    STX      MMC1_CHR0_bank            ; 0x1ff94 $FF84 8E 00 A0                ;
    STX      MMC1_CHR1_bank            ; 0x1ff97 $FF87 8E 00 C0                ;
    STX      MMC1_PRG_bank             ; 0x1ff9a $FF8A 8E 00 E0                ;
    LDA      #$0F                      ; 0x1ff9d $FF8D A9 0F                   ; A = 0F
    JSR      _ConfigureMMC1             ; 0x1ff9f $FF8F 20 9D FF                ;
    JSR      _SwapCHR                   ; 0x1ffa2 $FF92 20 B1 FF                ;
    LDA      #$07                      ; 0x1ffa5 $FF95 A9 07                   ; A = 07
    JSR      _SwapPRG                   ; 0x1ffa7 $FF97 20 CC FF                ;
    JMP      bank7_PowerON_code        ; 0x1ffaa $FF9A 4C 00 C0                ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
_ConfigureMMC1:                                                                 ;
    STA      MMC1_Control              ; 0x1ffad $FF9D 8D 00 80                ;
    LSR                                ; 0x1ffb0 $FFA0 4A                      ;
    STA      MMC1_Control              ; 0x1ffb1 $FFA1 8D 00 80                ;
    LSR                                ; 0x1ffb4 $FFA4 4A                      ;
    STA      MMC1_Control              ; 0x1ffb5 $FFA5 8D 00 80                ;
    LSR                                ; 0x1ffb8 $FFA8 4A                      ;
    STA      MMC1_Control              ; 0x1ffb9 $FFA9 8D 00 80                ;
    LSR                                ; 0x1ffbc $FFAC 4A                      ;
    STA      MMC1_Control              ; 0x1ffbd $FFAD 8D 00 80                ;
    RTS                                ; 0x1ffc0 $FFB0 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
_SwapCHR:                                                  ;
    STA      MMC1_CHR0_bank            ; 0x1ffc1 $FFB1 8D 00 A0                ;
    LSR                                ; 0x1ffc4 $FFB4 4A                      ;
    STA      MMC1_CHR0_bank            ; 0x1ffc5 $FFB5 8D 00 A0                ;
    LSR                                ; 0x1ffc8 $FFB8 4A                      ;
    STA      MMC1_CHR0_bank            ; 0x1ffc9 $FFB9 8D 00 A0                ;
    LSR                                ; 0x1ffcc $FFBC 4A                      ;
    STA      MMC1_CHR0_bank            ; 0x1ffcd $FFBD 8D 00 A0                ;
    LSR                                ; 0x1ffd0 $FFC0 4A                      ;
    STA      MMC1_CHR0_bank            ; 0x1ffd1 $FFC1 8D 00 A0                ;
    RTS                                ; 0x1ffd4 $FFC4 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;
_SwapToPRG0:                                                                    ;
    LDA      #$00                      ; 0x1ffd5 $FFC5 A9 00                   ; A = 00
    BEQ      _SwapPRG                   ; 0x1ffd7 $FFC7 F0 03                   ;
_SwapToSavedPRG:                                                                ;
    LDA      PRG_bank                  ; 0x1ffd9 $FFC9 AD 69 07                ; Bank to switch to (other than 0 or 7)
_SwapPRG:                                                                       ;
    STA      MMC1_PRG_bank             ; 0x1ffdc $FFCC 8D 00 E0                ;
    LSR                                ; 0x1ffdf $FFCF 4A                      ;
    STA      MMC1_PRG_bank             ; 0x1ffe0 $FFD0 8D 00 E0                ;
    LSR                                ; 0x1ffe3 $FFD3 4A                      ;
    STA      MMC1_PRG_bank             ; 0x1ffe4 $FFD4 8D 00 E0                ;
    LSR                                ; 0x1ffe7 $FFD7 4A                      ;
    STA      MMC1_PRG_bank             ; 0x1ffe8 $FFD8 8D 00 E0                ;
    LSR                                ; 0x1ffeb $FFDB 4A                      ;
    STA      MMC1_PRG_bank             ; 0x1ffec $FFDC 8D 00 E0                ;
    RTS                                ; 0x1ffef $FFDF 60                      ;
                                                                               ;
; ---------------------------------------------------------------------------- ;

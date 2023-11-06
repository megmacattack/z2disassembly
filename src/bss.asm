.include "nes.asm"
.include "mmc1.asm"
.include "variables.asm"
.include "macros.asm"
.include "globals.asm"

.segment "BSS"
.org $300

bss_0300: .res 1 ; unknown size
bss_0301: .res 1 ; unknown size
bss_0302: .res 1 ; unknown size
bss_0303: .res 1 ; unknown size
bss_0304: .res 1 ; unknown size
bss_0305: .res 1 ; unknown size
bss_0306: .res 1 ; unknown size
bss_0307: .res 1 ; unknown size
bss_0308: .res 1 ; unknown size
bss_0309: .res 1 ; unknown size
bss_030A: .res 1 ; unknown size
bss_030B: .res 1 ; unknown size
bss_030C: .res 1 ; unknown size
bss_030D: .res 1 ; unknown size
bss_030E: .res 1 ; unknown size
bss_030F: .res 1 ; unknown size

setpos $311
bss_0311: .res 1 ; unknown size
bss_0312: .res 1 ; unknown size
bss_0313: .res 1 ; unknown size
bss_0314: .res 1 ; unknown size

setpos $0316
bss_0316: .res 1 ; unknown size
bss_0317: .res 1 ; unknown size
bss_0318: .res 1 ; unknown size

setpos $31D
bss_031D: .res 1 ; unknown size
bss_031E: .res 1 ; unknown size
bss_031F: .res 1 ; unknown size
bss_0320: .res 1 ; unknown size

setpos $325
bss_0325: .res 1 ; unknown size
bss_0326: .res 1 ; unknown size
bss_0327: .res 1 ; unknown size
bss_0328: .res 1 ; unknown size
bss_0329: .res 1 ; unknown size

setpos $0348
bss_0348: .res 1 ; unknown size

setpos $0362
bss_0362: .res 1 ; unknown size

setpos $363
bss_0363: .res 1 ; unknown size
bss_0364: .res 1 ; unknown size
bss_0365: .res 1 ; unknown size
bss_0366: .res 1 ; unknown size
bss_0367: .res 1 ; unknown size
bss_0368: .res 1 ; unknown size
bss_0369: .res 1 ; unknown size
bss_036A: .res 1 ; unknown size
bss_036B: .res 1 ; unknown size
bss_036C: .res 1 ; unknown size
bss_036D: .res 1 ; unknown size

setpos $372
bss_0372: .res 1 ; unknown size

setpos $3A3
bss_03A3: .res 1 ; unknown size

setpos $3A4
bss_03A4: .res 1 ; unknown size
bss_03A5: .res 1 ; unknown size
bss_03A6: .res 1 ; unknown size
bss_03A7: .res 1 ; unknown size
bss_03A8: .res 1 ; unknown size

setpos $3D6
bss_03D6: .res 1 ; unknown size
setpos $3E6
bss_03E6: .res 1 ; unknown size

setpos $400
bss_0400: .res 1 ; unknown size
bss_0401: .res 1 ; unknown size

setpos $40E
bss_040E: .res 1 ; unknown size

setpos $410
bss_0410: .res 1 ; unknown size
bss_0411: .res 1 ; unknown size

setpos $414
bss_0414: .res 1 ; unknown size

setpos $41A
bss_041A: .res 1 ; unknown size

setpos $041F
bss_041F: .res 1 ; unknown size
bss_0420: .res 1 ; unknown size

setpos $0424
bss_0424: .res 1 ; unknown size

setpos $0429
bss_0429: .res 1 ; unknown size

setpos $042E
bss_042E: .res 1 ; unknown size

setpos $0433
bss_0433: .res 1 ; unknown size

setpos $0438
bss_0438: .res 1 ; unknown size

setpos $043E
bss_043E: .res 1 ; unknown size

setpos $0444
bss_0444: .res 1 ; unknown size

setpos $0447
bss_0447: .res 1 ; unknown size

setpos $044A
bss_044A: .res 1 ; unknown size
bss_044B: .res 1 ; unknown size
bss_044C: .res 1 ; unknown size

setpos $0452
bss_0452: .res 1 ; unknown size

setpos $0458
bss_0458: .res 1 ; unknown size

setpos $045E
bss_045E: .res 1 ; unknown size

setpos $0464
bss_0464: .res 1 ; unknown size

setpos $0470
bss_0470: .res 1 ; unknown size
bss_0471: .res 1 ; unknown size

setpos $0477
bss_0477: .res 1 ; unknown size

setpos $0479
bss_0479: .res 1 ; unknown size

setpos $047E
bss_047E: .res 1 ; unknown size
bss_047F: .res 1 ; unknown size
bss_0480: .res 1 ; unknown size
bss_0481: .res 1 ; unknown size

setpos $0484
bss_0484: .res 1 ; unknown size
bss_0485: .res 1 ; unknown size
bss_0486: .res 1 ; unknown size
bss_0487: .res 1 ; unknown size
bss_0488: .res 1 ; unknown size
bss_0489: .res 1 ; unknown size
bss_048A: .res 1 ; unknown size
bss_048B: .res 1 ; unknown size
bss_048C: .res 1 ; unknown size
bss_048D: .res 1 ; unknown size
bss_048E: .res 1 ; unknown size

setpos $0494
bss_0494: .res 1 ; unknown size
bss_0495: .res 1 ; unknown size

setpos $0497
bss_0497: .res 1 ; unknown size

setpos $0499
bss_0499: .res 1 ; unknown size
bss_049A: .res 1 ; unknown size

setpos $049C
bss_049C: .res 1 ; unknown size
bss_049D: .res 1 ; unknown size
bss_049E: .res 1 ; unknown size
bss_049F: .res 1 ; unknown size
bss_04A0: .res 1 ; unknown size

setpos $04D0
bss_04D0: .res 1 ; unknown size

setpos $04E8
bss_04E8: .res 1 ; unknown size

setpos $0500
bss_0500: .res 1 ; unknown size
bss_0501: .res 1 ; unknown size
bss_0502: .res 1 ; unknown size
bss_0503: .res 1 ; unknown size
bss_0504: .res 1 ; unknown size
bss_0505: .res 1 ; unknown size
bss_0506: .res 1 ; unknown size

setpos $0509
bss_0509: .res 1 ; unknown size
bss_050A: .res 1 ; unknown size

setpos $050C
bss_050C: .res 1 ; unknown size
bss_050D: .res 1 ; unknown size
bss_050E: .res 1 ; unknown size

setpos $0512
bss_0512: .res 1 ; unknown size

setpos $0516
bss_0516: .res 1 ; unknown size

setpos $0518
bss_0518: .res 1 ; unknown size

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

setpos $0524
bss_0524: .res 1 ; unknown size
bss_0525: .res 1 ; unknown size
bss_0526: .res 1 ; unknown size

setpos $053E
bss_053E: .res 1 ; unknown size

setpos $0543
bss_0543: .res 1 ; unknown size
bss_0544: .res 1 ; unknown size

setpos $054C
bss_054C: .res 1 ; unknown size
bss_054D: .res 1 ; unknown size

setpos $0551
bss_0551: .res 1 ; unknown size
bss_0552: .res 1 ; unknown size

setpos $055A
bss_055A: .res 1 ; unknown size

setpos $0561
area_code: .res 1
bss_0562: .res 1 ; unknown size
bss_0563: .res 1 ; unknown size
bss_0564: .res 1 ; unknown size
bss_0565: .res 1 ; unknown size
bss_0566: .res 1 ; unknown size
bss_0567: .res 1 ; unknown size
bss_0568: .res 1 ; unknown size
bss_0569: .res 1 ; unknown size
bss_056A: .res 1 ; unknown size
town_code: .res 1
palace_code: .res 1
bss_056D: .res 1 ; unknown size

setpos $0575
bss_0575: .res 1 ; unknown size

setpos $057D
bss_057D: .res 1 ; unknown size
bss_057E: .res 1 ; unknown size

setpos $0581
bss_0581: .res 1 ; unknown size

setpos $0584
bss_0584: .res 1 ; unknown size

setpos $058D
bss_058D: .res 1 ; unknown size

setpos $0593
bss_0593: .res 1 ; unknown size

setpos $0599
bss_0599: .res 1 ; unknown size

setpos $059F
bss_059F: .res 1 ; unknown size

setpos $05A5
bss_05A5: .res 1 ; unknown size

setpos $05AB
bss_05AB: .res 1 ; unknown size

setpos $05B1
bss_05B1: .res 1 ; unknown size

setpos $05B7
bss_05B7: .res 1 ; unknown size

setpos $05BD
bss_05BD: .res 1 ; unknown size

setpos $05C3
bss_05C3: .res 1 ; unknown size

setpos $05C9
bss_05C9: .res 1 ; unknown size
bss_05CA: .res 1 ; unknown size

setpos $05CC
bss_05CC: .res 1 ; unknown size

setpos $05D3
bss_05D3: .res 1 ; unknown size

setpos $05DA
bss_05DA: .res 1 ; unknown size
bss_05DB: .res 1 ; unknown size
bss_05DC: .res 1 ; unknown size
bss_05DD: .res 1 ; unknown size
bss_05DE: .res 1 ; unknown size

setpos $05E2
bss_05E2: .res 1 ; unknown size
bss_05E3: .res 1 ; unknown size
bss_05E4: .res 1 ; unknown size
bss_05E5: .res 1 ; unknown size
bss_05E6: .res 1 ; unknown size
bss_05E7: .res 1 ; unknown size
bss_05E8: .res 1 ; unknown size
bss_05E9: .res 1 ; unknown size

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

setpos $06FE
bss_06FE: .res 1 ; unknown size

setpos $0700
lives_remaining: .res 1
bss_0701: .res 1 ; unknown size

setpos $0704
bss_0704: .res 1 ; unknown size
bss_0705: .res 1 ; unknown size

setpos $0706
region_number: .res 1 ; overworld index (0=west hyrule, 1=death mtn/maze island, 2=east hyrule)
world_number: .res 1 ; "world" (0=caves, enemy encounters...; 1=west hyrule towns; 2=east hyrule towns; 3=palace 1,2,5 ; 4=palace 3,4,6 ; 5=great palace)
bss_0708: .res 1 ; unknown size
bss_0709: .res 1 ; unknown size
bss_070A: .res 1 ; unknown size
bss_070B: .res 1 ; unknown size
bss_070C: .res 1 ; unknown size
bss_070D: .res 1 ; unknown size
bss_070E: .res 1 ; unknown size
bss_070F: .res 1 ; unknown size
bss_0710: .res 1 ; unknown size

setpos $0717
bss_0717: .res 1 ; unknown size

setpos $071B
bss_071B: .res 1 ; unknown size
bss_071C: .res 1 ; unknown size
bss_071D: .res 1 ; unknown size
bss_071E: .res 1 ; unknown size
bss_071F: .res 1 ; unknown size
bss_0720: .res 1 ; unknown size
bss_0721: .res 1 ; unknown size
bss_0722: .res 1 ; unknown size

setpos $0725
bss_0725: .res 1 ; unknown size
bss_0726: .res 1 ; unknown size
bss_0727: .res 1 ; unknown size
bss_0728: .res 1 ; unknown size
bss_0729: .res 1 ; unknown size
bss_072A: .res 1 ; unknown size
bss_072B: .res 1 ; unknown size
bss_072C: .res 1 ; unknown size
bss_072D: .res 1 ; unknown size
bss_072E: .res 1 ; unknown size
bss_072F: .res 1 ; unknown size
bss_0730: .res 1 ; unknown size
bss_0731: .res 1 ; unknown size
bss_0732: .res 1 ; unknown size
bss_0733: .res 1 ; unknown size
bss_0734: .res 1 ; unknown size
bss_0735: .res 1 ; unknown size
game_mode: .res 1
bss_0737: .res 1 ; unknown size
bss_0738: .res 1 ; unknown size
bss_0739: .res 1 ; unknown size

setpos $073B
bss_073B: .res 1 ; unknown size
bss_073C: .res 1 ; unknown size
bss_073D: .res 1 ; unknown size
bss_073E: .res 1 ; unknown size
bss_073F: .res 1 ; unknown size
bss_0740: .res 1 ; unknown size
bss_0741: .res 1 ; unknown size
bss_0742: .res 1 ; unknown size
bss_0743: .res 1 ; unknown size
bss_0744: .res 1 ; unknown size

setpos $0746
bss_0746: .res 1 ; unknown size
bss_0747: .res 1 ; unknown size
bss_0748: .res 1 ; unknown size
bss_0749: .res 1 ; unknown size
bss_074A: .res 1 ; unknown size
bss_074B: .res 1 ; unknown size
bss_074C: .res 1 ; unknown size

setpos $074E
bss_074E: .res 1 ; unknown size
bss_074F: .res 1 ; unknown size
bss_0750: .res 1 ; unknown size
bss_0751: .res 1 ; unknown size
bss_0752: .res 1 ; unknown size
bss_0753: .res 1 ; unknown size
bss_0754: .res 1 ; unknown size
bss_0755: .res 1 ; unknown size
bss_0756: .res 1 ; unknown size
bss_0757: .res 1 ; unknown size
bss_0758: .res 1 ; unknown size
bss_0759: .res 1 ; unknown size
bss_075A: .res 1 ; unknown size
bss_075B: .res 1 ; unknown size
bss_075C: .res 1 ; unknown size
bss_075D: .res 1 ; unknown size

setpos $075F
bss_075F: .res 1 ; unknown size
bss_0760: .res 1 ; unknown size
bss_0761: .res 1 ; unknown size
bss_0762: .res 1 ; unknown size
bss_0763: .res 1 ; unknown size
bss_0764: .res 1 ; unknown size
bss_0765: .res 1 ; unknown size
bss_0766: .res 1 ; unknown size
bss_0767: .res 1 ; unknown size
bss_0768: .res 1 ; unknown size
PRG_bank: .res 1

setpos $076B
bss_076B: .res 1 ; unknown size
bss_076C: .res 1 ; unknown size
bss_076D: .res 1 ; unknown size
bss_076E: .res 1 ; unknown size
bss_076F: .res 1 ; unknown size
bss_0770: .res 1 ; unknown size
bss_0771: .res 1 ; unknown size
bss_0772: .res 1 ; unknown size
bss_0773: .res 1 ; unknown size
bss_0774: .res 1 ; unknown size
bss_0775: .res 1 ; unknown size
bss_0776: .res 1 ; unknown size
bss_0777: .res 1 ; unknown size
bss_0778: .res 1 ; unknown size
bss_0779: .res 1 ; unknown size

setpos $077B
bss_077B: .res 1 ; unknown size

setpos $0783
bss_0783: .res 1 ; unknown size
bss_0784: .res 1 ; unknown size
bss_0785: .res 1 ; unknown size
bss_0786: .res 1 ; unknown size
bss_0787: .res 1 ; unknown size
bss_0788: .res 1 ; unknown size
bss_0789: .res 1 ; unknown size
bss_078A: .res 1 ; unknown size
bss_078B: .res 1 ; unknown size
bss_078C: .res 1 ; unknown size
bss_078D: .res 1 ; unknown size

setpos $0793
bss_0793: .res 1 ; unknown size
bss_0794: .res 1 ; unknown size

setpos $0796
bss_0796: .res 1 ; unknown size
bss_0797: .res 1 ; unknown size
bss_0798: .res 1 ; unknown size

setpos $079A
bss_079A: .res 1 ; unknown size

setpos $079C
bss_079C: .res 1 ; unknown size
bss_079D: .res 1 ; unknown size

setpos $079F
bss_079F: .res 1 ; unknown size
bss_07A0: .res 1 ; unknown size
bss_07A1: .res 1 ; unknown size

setpos $07A9
bss_07A9: .res 1 ; unknown size
bss_07AA: .res 1 ; unknown size
bss_07AB: .res 1 ; unknown size
bss_07AC: .res 1 ; unknown size
bss_07AD: .res 1 ; unknown size
bss_07AE: .res 1 ; unknown size
bss_07AF: .res 1 ; unknown size
bss_07B0: .res 1 ; unknown size

setpos $07DA
bss_07DA: .res 1 ; unknown size
bss_07DB: .res 1 ; unknown size
bss_07DC: .res 1 ; unknown size
bss_07DD: .res 1 ; unknown size
bss_07DE: .res 1 ; unknown size
bss_07DF: .res 1 ; unknown size
bss_07E0: .res 1 ; unknown size
bss_07E1: .res 1 ; unknown size
bss_07E2: .res 1 ; unknown size
bss_07E3: .res 1 ; unknown size
bss_07E4: .res 1 ; unknown size
bss_07E5: .res 1 ; unknown size
bss_07E6: .res 1 ; unknown size
bss_07E7: .res 1 ; unknown size
bss_07E8: .res 1 ; unknown size
bss_07E9: .res 1 ; unknown size
bss_07EA: .res 1 ; unknown size
bss_07EB: .res 1 ; unknown size
bss_07EC: .res 1 ; unknown size
bss_07ED: .res 1 ; unknown size
bss_07EE: .res 1 ; unknown size
bss_07EF: .res 1 ; unknown size
bss_07F0: .res 1 ; unknown size
bss_07F1: .res 1 ; unknown size
bss_07F2: .res 1 ; unknown size
bss_07F3: .res 1 ; unknown size
bss_07F4: .res 1 ; unknown size
bss_07F5: .res 1 ; unknown size
bss_07F6: .res 1 ; unknown size
bss_07F7: .res 1 ; unknown size
bss_07F8: .res 1 ; unknown size
bss_07F9: .res 1 ; unknown size
bss_07FA: .res 1 ; unknown size
bss_07FB: .res 1 ; unknown size
bss_07FC: .res 1 ; unknown size
bss_07FD: .res 1 ; unknown size
bss_07FE: .res 1 ; unknown size
bss_07FF: .res 1 ; unknown size

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module blink
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _EIPX6
                                     13 	.globl _EIPX5
                                     14 	.globl _EIPX4
                                     15 	.globl _PI2C
                                     16 	.globl _PUSB
                                     17 	.globl _EIEX6
                                     18 	.globl _EIEX5
                                     19 	.globl _EIEX4
                                     20 	.globl _EI2C
                                     21 	.globl _EUSB
                                     22 	.globl _SMOD1
                                     23 	.globl _ERESI
                                     24 	.globl _RESI
                                     25 	.globl _INT6
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _FL
                                     33 	.globl _P
                                     34 	.globl _TF2
                                     35 	.globl _EXF2
                                     36 	.globl _RCLK
                                     37 	.globl _TCLK
                                     38 	.globl _EXEN2
                                     39 	.globl _TR2
                                     40 	.globl _C_T2
                                     41 	.globl _CP_RL2
                                     42 	.globl _SM01
                                     43 	.globl _SM11
                                     44 	.globl _SM21
                                     45 	.globl _REN1
                                     46 	.globl _TB81
                                     47 	.globl _RB81
                                     48 	.globl _TI1
                                     49 	.globl _RI1
                                     50 	.globl _PS1
                                     51 	.globl _PT2
                                     52 	.globl _PS0
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _PD7
                                     58 	.globl _PD6
                                     59 	.globl _PD5
                                     60 	.globl _PD4
                                     61 	.globl _PD3
                                     62 	.globl _PD2
                                     63 	.globl _PD1
                                     64 	.globl _PD0
                                     65 	.globl _EA
                                     66 	.globl _ES1
                                     67 	.globl _ET2
                                     68 	.globl _ES0
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _PC7
                                     74 	.globl _PC6
                                     75 	.globl _PC5
                                     76 	.globl _PC4
                                     77 	.globl _PC3
                                     78 	.globl _PC2
                                     79 	.globl _PC1
                                     80 	.globl _PC0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _PB7
                                     90 	.globl _PB6
                                     91 	.globl _PB5
                                     92 	.globl _PB4
                                     93 	.globl _PB3
                                     94 	.globl _PB2
                                     95 	.globl _PB1
                                     96 	.globl _PB0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _PA7
                                    106 	.globl _PA6
                                    107 	.globl _PA5
                                    108 	.globl _PA4
                                    109 	.globl _PA3
                                    110 	.globl _PA2
                                    111 	.globl _PA1
                                    112 	.globl _PA0
                                    113 	.globl _EIP
                                    114 	.globl _B
                                    115 	.globl _EIE
                                    116 	.globl _ACC
                                    117 	.globl _EICON
                                    118 	.globl _PSW
                                    119 	.globl _TH2
                                    120 	.globl _TL2
                                    121 	.globl _RCAP2H
                                    122 	.globl _RCAP2L
                                    123 	.globl _T2CON
                                    124 	.globl _SBUF1
                                    125 	.globl _SCON1
                                    126 	.globl _GPIFSGLDATLNOX
                                    127 	.globl _GPIFSGLDATLX
                                    128 	.globl _GPIFSGLDATH
                                    129 	.globl _GPIFTRIG
                                    130 	.globl _EP01STAT
                                    131 	.globl _IP
                                    132 	.globl _OEE
                                    133 	.globl _OED
                                    134 	.globl _OEC
                                    135 	.globl _OEB
                                    136 	.globl _OEA
                                    137 	.globl _IOE
                                    138 	.globl _IOD
                                    139 	.globl _AUTOPTRSETUP
                                    140 	.globl _EP68FIFOFLGS
                                    141 	.globl _EP24FIFOFLGS
                                    142 	.globl _EP2468STAT
                                    143 	.globl _IE
                                    144 	.globl _INT4CLR
                                    145 	.globl _INT2CLR
                                    146 	.globl _IOC
                                    147 	.globl _AUTOPTRL2
                                    148 	.globl _AUTOPTRH2
                                    149 	.globl _AUTOPTRL1
                                    150 	.globl _AUTOPTRH1
                                    151 	.globl _SBUF0
                                    152 	.globl _SCON0
                                    153 	.globl _MPAGE
                                    154 	.globl _EXIF
                                    155 	.globl _IOB
                                    156 	.globl _SPC_FNC
                                    157 	.globl _CKCON
                                    158 	.globl _TH1
                                    159 	.globl _TH0
                                    160 	.globl _TL1
                                    161 	.globl _TL0
                                    162 	.globl _TMOD
                                    163 	.globl _TCON
                                    164 	.globl _PCON
                                    165 	.globl _DPS
                                    166 	.globl _DPH1
                                    167 	.globl _DPL1
                                    168 	.globl _DPH
                                    169 	.globl _DPL
                                    170 	.globl _SP
                                    171 	.globl _IOA
                                    172 	.globl _GPCR2
                                    173 	.globl _ECC2B2
                                    174 	.globl _ECC2B1
                                    175 	.globl _ECC2B0
                                    176 	.globl _ECC1B2
                                    177 	.globl _ECC1B1
                                    178 	.globl _ECC1B0
                                    179 	.globl _ECCRESET
                                    180 	.globl _ECCCFG
                                    181 	.globl _EP8FIFOBUF
                                    182 	.globl _EP6FIFOBUF
                                    183 	.globl _EP4FIFOBUF
                                    184 	.globl _EP2FIFOBUF
                                    185 	.globl _EP1INBUF
                                    186 	.globl _EP1OUTBUF
                                    187 	.globl _EP0BUF
                                    188 	.globl _CT4
                                    189 	.globl _CT3
                                    190 	.globl _CT2
                                    191 	.globl _CT1
                                    192 	.globl _USBTEST
                                    193 	.globl _TESTCFG
                                    194 	.globl _DBUG
                                    195 	.globl _UDMACRCQUAL
                                    196 	.globl _UDMACRCL
                                    197 	.globl _UDMACRCH
                                    198 	.globl _GPIFHOLDAMOUNT
                                    199 	.globl _FLOWSTBHPERIOD
                                    200 	.globl _FLOWSTBEDGE
                                    201 	.globl _FLOWSTB
                                    202 	.globl _FLOWHOLDOFF
                                    203 	.globl _FLOWEQ1CTL
                                    204 	.globl _FLOWEQ0CTL
                                    205 	.globl _FLOWLOGIC
                                    206 	.globl _FLOWSTATE
                                    207 	.globl _GPIFABORT
                                    208 	.globl _GPIFREADYSTAT
                                    209 	.globl _GPIFREADYCFG
                                    210 	.globl _XGPIFSGLDATLNOX
                                    211 	.globl _XGPIFSGLDATLX
                                    212 	.globl _XGPIFSGLDATH
                                    213 	.globl _EP8GPIFTRIG
                                    214 	.globl _EP8GPIFPFSTOP
                                    215 	.globl _EP8GPIFFLGSEL
                                    216 	.globl _EP6GPIFTRIG
                                    217 	.globl _EP6GPIFPFSTOP
                                    218 	.globl _EP6GPIFFLGSEL
                                    219 	.globl _EP4GPIFTRIG
                                    220 	.globl _EP4GPIFPFSTOP
                                    221 	.globl _EP4GPIFFLGSEL
                                    222 	.globl _EP2GPIFTRIG
                                    223 	.globl _EP2GPIFPFSTOP
                                    224 	.globl _EP2GPIFFLGSEL
                                    225 	.globl _GPIFTCB0
                                    226 	.globl _GPIFTCB1
                                    227 	.globl _GPIFTCB2
                                    228 	.globl _GPIFTCB3
                                    229 	.globl _GPIFADRL
                                    230 	.globl _GPIFADRH
                                    231 	.globl _GPIFCTLCFG
                                    232 	.globl _GPIFIDLECTL
                                    233 	.globl _GPIFIDLECS
                                    234 	.globl _GPIFWFSELECT
                                    235 	.globl _SETUPDAT
                                    236 	.globl _SUDPTRCTL
                                    237 	.globl _SUDPTRL
                                    238 	.globl _SUDPTRH
                                    239 	.globl _EP8FIFOBCL
                                    240 	.globl _EP8FIFOBCH
                                    241 	.globl _EP6FIFOBCL
                                    242 	.globl _EP6FIFOBCH
                                    243 	.globl _EP4FIFOBCL
                                    244 	.globl _EP4FIFOBCH
                                    245 	.globl _EP2FIFOBCL
                                    246 	.globl _EP2FIFOBCH
                                    247 	.globl _EP8FIFOFLGS
                                    248 	.globl _EP6FIFOFLGS
                                    249 	.globl _EP4FIFOFLGS
                                    250 	.globl _EP2FIFOFLGS
                                    251 	.globl _EP8CS
                                    252 	.globl _EP6CS
                                    253 	.globl _EP4CS
                                    254 	.globl _EP2CS
                                    255 	.globl _EP1INCS
                                    256 	.globl _EP1OUTCS
                                    257 	.globl _EP0CS
                                    258 	.globl _EP8BCL
                                    259 	.globl _EP8BCH
                                    260 	.globl _EP6BCL
                                    261 	.globl _EP6BCH
                                    262 	.globl _EP4BCL
                                    263 	.globl _EP4BCH
                                    264 	.globl _EP2BCL
                                    265 	.globl _EP2BCH
                                    266 	.globl _EP1INBC
                                    267 	.globl _EP1OUTBC
                                    268 	.globl _EP0BCL
                                    269 	.globl _EP0BCH
                                    270 	.globl _FNADDR
                                    271 	.globl _MICROFRAME
                                    272 	.globl _USBFRAMEL
                                    273 	.globl _USBFRAMEH
                                    274 	.globl _TOGCTL
                                    275 	.globl _WAKEUPCS
                                    276 	.globl _SUSPEND
                                    277 	.globl _USBCS
                                    278 	.globl _XAUTODAT2
                                    279 	.globl _XAUTODAT1
                                    280 	.globl _I2CTL
                                    281 	.globl _I2DAT
                                    282 	.globl _I2CS
                                    283 	.globl _PORTECFG
                                    284 	.globl _PORTCCFG
                                    285 	.globl _PORTACFG
                                    286 	.globl _INTSETUP
                                    287 	.globl _INT4IVEC
                                    288 	.globl _INT2IVEC
                                    289 	.globl _CLRERRCNT
                                    290 	.globl _ERRCNTLIM
                                    291 	.globl _USBERRIRQ
                                    292 	.globl _USBERRIE
                                    293 	.globl _GPIFIRQ
                                    294 	.globl _GPIFIE
                                    295 	.globl _EPIRQ
                                    296 	.globl _EPIE
                                    297 	.globl _USBIRQ
                                    298 	.globl _USBIE
                                    299 	.globl _NAKIRQ
                                    300 	.globl _NAKIE
                                    301 	.globl _IBNIRQ
                                    302 	.globl _IBNIE
                                    303 	.globl _EP8FIFOIRQ
                                    304 	.globl _EP8FIFOIE
                                    305 	.globl _EP6FIFOIRQ
                                    306 	.globl _EP6FIFOIE
                                    307 	.globl _EP4FIFOIRQ
                                    308 	.globl _EP4FIFOIE
                                    309 	.globl _EP2FIFOIRQ
                                    310 	.globl _EP2FIFOIE
                                    311 	.globl _OUTPKTEND
                                    312 	.globl _INPKTEND
                                    313 	.globl _EP8ISOINPKTS
                                    314 	.globl _EP6ISOINPKTS
                                    315 	.globl _EP4ISOINPKTS
                                    316 	.globl _EP2ISOINPKTS
                                    317 	.globl _EP8FIFOPFL
                                    318 	.globl _EP8FIFOPFH
                                    319 	.globl _EP6FIFOPFL
                                    320 	.globl _EP6FIFOPFH
                                    321 	.globl _EP4FIFOPFL
                                    322 	.globl _EP4FIFOPFH
                                    323 	.globl _EP2FIFOPFL
                                    324 	.globl _EP2FIFOPFH
                                    325 	.globl _EP8AUTOINLENL
                                    326 	.globl _EP8AUTOINLENH
                                    327 	.globl _EP6AUTOINLENL
                                    328 	.globl _EP6AUTOINLENH
                                    329 	.globl _EP4AUTOINLENL
                                    330 	.globl _EP4AUTOINLENH
                                    331 	.globl _EP2AUTOINLENL
                                    332 	.globl _EP2AUTOINLENH
                                    333 	.globl _EP8FIFOCFG
                                    334 	.globl _EP6FIFOCFG
                                    335 	.globl _EP4FIFOCFG
                                    336 	.globl _EP2FIFOCFG
                                    337 	.globl _EP8CFG
                                    338 	.globl _EP6CFG
                                    339 	.globl _EP4CFG
                                    340 	.globl _EP2CFG
                                    341 	.globl _EP1INCFG
                                    342 	.globl _EP1OUTCFG
                                    343 	.globl _REVCTL
                                    344 	.globl _REVID
                                    345 	.globl _FIFOPINPOLAR
                                    346 	.globl _UART230
                                    347 	.globl _BPADDRL
                                    348 	.globl _BPADDRH
                                    349 	.globl _BREAKPT
                                    350 	.globl _FIFORESET
                                    351 	.globl _PINFLAGSCD
                                    352 	.globl _PINFLAGSAB
                                    353 	.globl _IFCONFIG
                                    354 	.globl _CPUCS
                                    355 	.globl _RES_WAVEDATA_END
                                    356 	.globl _GPIF_WAVE_DATA
                                    357 ;--------------------------------------------------------
                                    358 ; special function registers
                                    359 ;--------------------------------------------------------
                                    360 	.area RSEG    (ABS,DATA)
      000000                        361 	.org 0x0000
                           000080   362 _IOA	=	0x0080
                           000081   363 _SP	=	0x0081
                           000082   364 _DPL	=	0x0082
                           000083   365 _DPH	=	0x0083
                           000084   366 _DPL1	=	0x0084
                           000085   367 _DPH1	=	0x0085
                           000086   368 _DPS	=	0x0086
                           000087   369 _PCON	=	0x0087
                           000088   370 _TCON	=	0x0088
                           000089   371 _TMOD	=	0x0089
                           00008A   372 _TL0	=	0x008a
                           00008B   373 _TL1	=	0x008b
                           00008C   374 _TH0	=	0x008c
                           00008D   375 _TH1	=	0x008d
                           00008E   376 _CKCON	=	0x008e
                           00008F   377 _SPC_FNC	=	0x008f
                           000090   378 _IOB	=	0x0090
                           000091   379 _EXIF	=	0x0091
                           000092   380 _MPAGE	=	0x0092
                           000098   381 _SCON0	=	0x0098
                           000099   382 _SBUF0	=	0x0099
                           00009A   383 _AUTOPTRH1	=	0x009a
                           00009B   384 _AUTOPTRL1	=	0x009b
                           00009D   385 _AUTOPTRH2	=	0x009d
                           00009E   386 _AUTOPTRL2	=	0x009e
                           0000A0   387 _IOC	=	0x00a0
                           0000A1   388 _INT2CLR	=	0x00a1
                           0000A2   389 _INT4CLR	=	0x00a2
                           0000A8   390 _IE	=	0x00a8
                           0000AA   391 _EP2468STAT	=	0x00aa
                           0000AB   392 _EP24FIFOFLGS	=	0x00ab
                           0000AC   393 _EP68FIFOFLGS	=	0x00ac
                           0000AF   394 _AUTOPTRSETUP	=	0x00af
                           0000B0   395 _IOD	=	0x00b0
                           0000B1   396 _IOE	=	0x00b1
                           0000B2   397 _OEA	=	0x00b2
                           0000B3   398 _OEB	=	0x00b3
                           0000B4   399 _OEC	=	0x00b4
                           0000B5   400 _OED	=	0x00b5
                           0000B6   401 _OEE	=	0x00b6
                           0000B8   402 _IP	=	0x00b8
                           0000BA   403 _EP01STAT	=	0x00ba
                           0000BB   404 _GPIFTRIG	=	0x00bb
                           0000BD   405 _GPIFSGLDATH	=	0x00bd
                           0000BE   406 _GPIFSGLDATLX	=	0x00be
                           0000BF   407 _GPIFSGLDATLNOX	=	0x00bf
                           0000C0   408 _SCON1	=	0x00c0
                           0000C1   409 _SBUF1	=	0x00c1
                           0000C8   410 _T2CON	=	0x00c8
                           0000CA   411 _RCAP2L	=	0x00ca
                           0000CB   412 _RCAP2H	=	0x00cb
                           0000CC   413 _TL2	=	0x00cc
                           0000CD   414 _TH2	=	0x00cd
                           0000D0   415 _PSW	=	0x00d0
                           0000D8   416 _EICON	=	0x00d8
                           0000E0   417 _ACC	=	0x00e0
                           0000E8   418 _EIE	=	0x00e8
                           0000F0   419 _B	=	0x00f0
                           0000F8   420 _EIP	=	0x00f8
                                    421 ;--------------------------------------------------------
                                    422 ; special function bits
                                    423 ;--------------------------------------------------------
                                    424 	.area RSEG    (ABS,DATA)
      000000                        425 	.org 0x0000
                           000080   426 _PA0	=	0x0080
                           000081   427 _PA1	=	0x0081
                           000082   428 _PA2	=	0x0082
                           000083   429 _PA3	=	0x0083
                           000084   430 _PA4	=	0x0084
                           000085   431 _PA5	=	0x0085
                           000086   432 _PA6	=	0x0086
                           000087   433 _PA7	=	0x0087
                           000088   434 _IT0	=	0x0088
                           000089   435 _IE0	=	0x0089
                           00008A   436 _IT1	=	0x008a
                           00008B   437 _IE1	=	0x008b
                           00008C   438 _TR0	=	0x008c
                           00008D   439 _TF0	=	0x008d
                           00008E   440 _TR1	=	0x008e
                           00008F   441 _TF1	=	0x008f
                           000090   442 _PB0	=	0x0090
                           000091   443 _PB1	=	0x0091
                           000092   444 _PB2	=	0x0092
                           000093   445 _PB3	=	0x0093
                           000094   446 _PB4	=	0x0094
                           000095   447 _PB5	=	0x0095
                           000096   448 _PB6	=	0x0096
                           000097   449 _PB7	=	0x0097
                           000098   450 _RI	=	0x0098
                           000099   451 _TI	=	0x0099
                           00009A   452 _RB8	=	0x009a
                           00009B   453 _TB8	=	0x009b
                           00009C   454 _REN	=	0x009c
                           00009D   455 _SM2	=	0x009d
                           00009E   456 _SM1	=	0x009e
                           00009F   457 _SM0	=	0x009f
                           0000A0   458 _PC0	=	0x00a0
                           0000A1   459 _PC1	=	0x00a1
                           0000A2   460 _PC2	=	0x00a2
                           0000A3   461 _PC3	=	0x00a3
                           0000A4   462 _PC4	=	0x00a4
                           0000A5   463 _PC5	=	0x00a5
                           0000A6   464 _PC6	=	0x00a6
                           0000A7   465 _PC7	=	0x00a7
                           0000A8   466 _EX0	=	0x00a8
                           0000A9   467 _ET0	=	0x00a9
                           0000AA   468 _EX1	=	0x00aa
                           0000AB   469 _ET1	=	0x00ab
                           0000AC   470 _ES0	=	0x00ac
                           0000AD   471 _ET2	=	0x00ad
                           0000AE   472 _ES1	=	0x00ae
                           0000AF   473 _EA	=	0x00af
                           0000B0   474 _PD0	=	0x00b0
                           0000B1   475 _PD1	=	0x00b1
                           0000B2   476 _PD2	=	0x00b2
                           0000B3   477 _PD3	=	0x00b3
                           0000B4   478 _PD4	=	0x00b4
                           0000B5   479 _PD5	=	0x00b5
                           0000B6   480 _PD6	=	0x00b6
                           0000B7   481 _PD7	=	0x00b7
                           0000B8   482 _PX0	=	0x00b8
                           0000B9   483 _PT0	=	0x00b9
                           0000BA   484 _PX1	=	0x00ba
                           0000BB   485 _PT1	=	0x00bb
                           0000BC   486 _PS0	=	0x00bc
                           0000BD   487 _PT2	=	0x00bd
                           0000BE   488 _PS1	=	0x00be
                           0000C0   489 _RI1	=	0x00c0
                           0000C1   490 _TI1	=	0x00c1
                           0000C2   491 _RB81	=	0x00c2
                           0000C3   492 _TB81	=	0x00c3
                           0000C4   493 _REN1	=	0x00c4
                           0000C5   494 _SM21	=	0x00c5
                           0000C6   495 _SM11	=	0x00c6
                           0000C7   496 _SM01	=	0x00c7
                           0000C8   497 _CP_RL2	=	0x00c8
                           0000C9   498 _C_T2	=	0x00c9
                           0000CA   499 _TR2	=	0x00ca
                           0000CB   500 _EXEN2	=	0x00cb
                           0000CC   501 _TCLK	=	0x00cc
                           0000CD   502 _RCLK	=	0x00cd
                           0000CE   503 _EXF2	=	0x00ce
                           0000CF   504 _TF2	=	0x00cf
                           0000D0   505 _P	=	0x00d0
                           0000D1   506 _FL	=	0x00d1
                           0000D2   507 _OV	=	0x00d2
                           0000D3   508 _RS0	=	0x00d3
                           0000D4   509 _RS1	=	0x00d4
                           0000D5   510 _F0	=	0x00d5
                           0000D6   511 _AC	=	0x00d6
                           0000D7   512 _CY	=	0x00d7
                           0000DB   513 _INT6	=	0x00db
                           0000DC   514 _RESI	=	0x00dc
                           0000DD   515 _ERESI	=	0x00dd
                           0000DF   516 _SMOD1	=	0x00df
                           0000E8   517 _EUSB	=	0x00e8
                           0000E9   518 _EI2C	=	0x00e9
                           0000EA   519 _EIEX4	=	0x00ea
                           0000EB   520 _EIEX5	=	0x00eb
                           0000EC   521 _EIEX6	=	0x00ec
                           0000F8   522 _PUSB	=	0x00f8
                           0000F9   523 _PI2C	=	0x00f9
                           0000FA   524 _EIPX4	=	0x00fa
                           0000FB   525 _EIPX5	=	0x00fb
                           0000FC   526 _EIPX6	=	0x00fc
                                    527 ;--------------------------------------------------------
                                    528 ; overlayable register banks
                                    529 ;--------------------------------------------------------
                                    530 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        531 	.ds 8
                                    532 ;--------------------------------------------------------
                                    533 ; internal ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area DSEG    (DATA)
                                    536 ;--------------------------------------------------------
                                    537 ; overlayable items in internal ram 
                                    538 ;--------------------------------------------------------
                                    539 	.area	OSEG    (OVR,DATA)
                                    540 ;--------------------------------------------------------
                                    541 ; Stack segment in internal ram 
                                    542 ;--------------------------------------------------------
                                    543 	.area	SSEG
      000008                        544 __start__stack:
      000008                        545 	.ds	1
                                    546 
                                    547 ;--------------------------------------------------------
                                    548 ; indirectly addressable internal ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area ISEG    (DATA)
                                    551 ;--------------------------------------------------------
                                    552 ; absolute internal ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area IABS    (ABS,DATA)
                                    555 	.area IABS    (ABS,DATA)
                                    556 ;--------------------------------------------------------
                                    557 ; bit data
                                    558 ;--------------------------------------------------------
                                    559 	.area BSEG    (BIT)
                                    560 ;--------------------------------------------------------
                                    561 ; paged external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area PSEG    (PAG,XDATA)
                                    564 ;--------------------------------------------------------
                                    565 ; external ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area XSEG    (XDATA)
                           00E400   568 _GPIF_WAVE_DATA	=	0xe400
                           00E480   569 _RES_WAVEDATA_END	=	0xe480
                           00E600   570 _CPUCS	=	0xe600
                           00E601   571 _IFCONFIG	=	0xe601
                           00E602   572 _PINFLAGSAB	=	0xe602
                           00E603   573 _PINFLAGSCD	=	0xe603
                           00E604   574 _FIFORESET	=	0xe604
                           00E605   575 _BREAKPT	=	0xe605
                           00E606   576 _BPADDRH	=	0xe606
                           00E607   577 _BPADDRL	=	0xe607
                           00E608   578 _UART230	=	0xe608
                           00E609   579 _FIFOPINPOLAR	=	0xe609
                           00E60A   580 _REVID	=	0xe60a
                           00E60B   581 _REVCTL	=	0xe60b
                           00E610   582 _EP1OUTCFG	=	0xe610
                           00E611   583 _EP1INCFG	=	0xe611
                           00E612   584 _EP2CFG	=	0xe612
                           00E613   585 _EP4CFG	=	0xe613
                           00E614   586 _EP6CFG	=	0xe614
                           00E615   587 _EP8CFG	=	0xe615
                           00E618   588 _EP2FIFOCFG	=	0xe618
                           00E619   589 _EP4FIFOCFG	=	0xe619
                           00E61A   590 _EP6FIFOCFG	=	0xe61a
                           00E61B   591 _EP8FIFOCFG	=	0xe61b
                           00E620   592 _EP2AUTOINLENH	=	0xe620
                           00E621   593 _EP2AUTOINLENL	=	0xe621
                           00E622   594 _EP4AUTOINLENH	=	0xe622
                           00E623   595 _EP4AUTOINLENL	=	0xe623
                           00E624   596 _EP6AUTOINLENH	=	0xe624
                           00E625   597 _EP6AUTOINLENL	=	0xe625
                           00E626   598 _EP8AUTOINLENH	=	0xe626
                           00E627   599 _EP8AUTOINLENL	=	0xe627
                           00E630   600 _EP2FIFOPFH	=	0xe630
                           00E631   601 _EP2FIFOPFL	=	0xe631
                           00E632   602 _EP4FIFOPFH	=	0xe632
                           00E633   603 _EP4FIFOPFL	=	0xe633
                           00E634   604 _EP6FIFOPFH	=	0xe634
                           00E635   605 _EP6FIFOPFL	=	0xe635
                           00E636   606 _EP8FIFOPFH	=	0xe636
                           00E637   607 _EP8FIFOPFL	=	0xe637
                           00E640   608 _EP2ISOINPKTS	=	0xe640
                           00E641   609 _EP4ISOINPKTS	=	0xe641
                           00E642   610 _EP6ISOINPKTS	=	0xe642
                           00E643   611 _EP8ISOINPKTS	=	0xe643
                           00E648   612 _INPKTEND	=	0xe648
                           00E649   613 _OUTPKTEND	=	0xe649
                           00E650   614 _EP2FIFOIE	=	0xe650
                           00E651   615 _EP2FIFOIRQ	=	0xe651
                           00E652   616 _EP4FIFOIE	=	0xe652
                           00E653   617 _EP4FIFOIRQ	=	0xe653
                           00E654   618 _EP6FIFOIE	=	0xe654
                           00E655   619 _EP6FIFOIRQ	=	0xe655
                           00E656   620 _EP8FIFOIE	=	0xe656
                           00E657   621 _EP8FIFOIRQ	=	0xe657
                           00E658   622 _IBNIE	=	0xe658
                           00E659   623 _IBNIRQ	=	0xe659
                           00E65A   624 _NAKIE	=	0xe65a
                           00E65B   625 _NAKIRQ	=	0xe65b
                           00E65C   626 _USBIE	=	0xe65c
                           00E65D   627 _USBIRQ	=	0xe65d
                           00E65E   628 _EPIE	=	0xe65e
                           00E65F   629 _EPIRQ	=	0xe65f
                           00E660   630 _GPIFIE	=	0xe660
                           00E661   631 _GPIFIRQ	=	0xe661
                           00E662   632 _USBERRIE	=	0xe662
                           00E663   633 _USBERRIRQ	=	0xe663
                           00E664   634 _ERRCNTLIM	=	0xe664
                           00E665   635 _CLRERRCNT	=	0xe665
                           00E666   636 _INT2IVEC	=	0xe666
                           00E667   637 _INT4IVEC	=	0xe667
                           00E668   638 _INTSETUP	=	0xe668
                           00E670   639 _PORTACFG	=	0xe670
                           00E671   640 _PORTCCFG	=	0xe671
                           00E672   641 _PORTECFG	=	0xe672
                           00E678   642 _I2CS	=	0xe678
                           00E679   643 _I2DAT	=	0xe679
                           00E67A   644 _I2CTL	=	0xe67a
                           00E67B   645 _XAUTODAT1	=	0xe67b
                           00E67C   646 _XAUTODAT2	=	0xe67c
                           00E680   647 _USBCS	=	0xe680
                           00E681   648 _SUSPEND	=	0xe681
                           00E682   649 _WAKEUPCS	=	0xe682
                           00E683   650 _TOGCTL	=	0xe683
                           00E684   651 _USBFRAMEH	=	0xe684
                           00E685   652 _USBFRAMEL	=	0xe685
                           00E686   653 _MICROFRAME	=	0xe686
                           00E687   654 _FNADDR	=	0xe687
                           00E68A   655 _EP0BCH	=	0xe68a
                           00E68B   656 _EP0BCL	=	0xe68b
                           00E68D   657 _EP1OUTBC	=	0xe68d
                           00E68F   658 _EP1INBC	=	0xe68f
                           00E690   659 _EP2BCH	=	0xe690
                           00E691   660 _EP2BCL	=	0xe691
                           00E694   661 _EP4BCH	=	0xe694
                           00E695   662 _EP4BCL	=	0xe695
                           00E698   663 _EP6BCH	=	0xe698
                           00E699   664 _EP6BCL	=	0xe699
                           00E69C   665 _EP8BCH	=	0xe69c
                           00E69D   666 _EP8BCL	=	0xe69d
                           00E6A0   667 _EP0CS	=	0xe6a0
                           00E6A1   668 _EP1OUTCS	=	0xe6a1
                           00E6A2   669 _EP1INCS	=	0xe6a2
                           00E6A3   670 _EP2CS	=	0xe6a3
                           00E6A4   671 _EP4CS	=	0xe6a4
                           00E6A5   672 _EP6CS	=	0xe6a5
                           00E6A6   673 _EP8CS	=	0xe6a6
                           00E6A7   674 _EP2FIFOFLGS	=	0xe6a7
                           00E6A8   675 _EP4FIFOFLGS	=	0xe6a8
                           00E6A9   676 _EP6FIFOFLGS	=	0xe6a9
                           00E6AA   677 _EP8FIFOFLGS	=	0xe6aa
                           00E6AB   678 _EP2FIFOBCH	=	0xe6ab
                           00E6AC   679 _EP2FIFOBCL	=	0xe6ac
                           00E6AD   680 _EP4FIFOBCH	=	0xe6ad
                           00E6AE   681 _EP4FIFOBCL	=	0xe6ae
                           00E6AF   682 _EP6FIFOBCH	=	0xe6af
                           00E6B0   683 _EP6FIFOBCL	=	0xe6b0
                           00E6B1   684 _EP8FIFOBCH	=	0xe6b1
                           00E6B2   685 _EP8FIFOBCL	=	0xe6b2
                           00E6B3   686 _SUDPTRH	=	0xe6b3
                           00E6B4   687 _SUDPTRL	=	0xe6b4
                           00E6B5   688 _SUDPTRCTL	=	0xe6b5
                           00E6B8   689 _SETUPDAT	=	0xe6b8
                           00E6C0   690 _GPIFWFSELECT	=	0xe6c0
                           00E6C1   691 _GPIFIDLECS	=	0xe6c1
                           00E6C2   692 _GPIFIDLECTL	=	0xe6c2
                           00E6C3   693 _GPIFCTLCFG	=	0xe6c3
                           00E6C4   694 _GPIFADRH	=	0xe6c4
                           00E6C5   695 _GPIFADRL	=	0xe6c5
                           00E6CE   696 _GPIFTCB3	=	0xe6ce
                           00E6CF   697 _GPIFTCB2	=	0xe6cf
                           00E6D0   698 _GPIFTCB1	=	0xe6d0
                           00E6D1   699 _GPIFTCB0	=	0xe6d1
                           00E6D2   700 _EP2GPIFFLGSEL	=	0xe6d2
                           00E6D3   701 _EP2GPIFPFSTOP	=	0xe6d3
                           00E6D4   702 _EP2GPIFTRIG	=	0xe6d4
                           00E6DA   703 _EP4GPIFFLGSEL	=	0xe6da
                           00E6DB   704 _EP4GPIFPFSTOP	=	0xe6db
                           00E6DC   705 _EP4GPIFTRIG	=	0xe6dc
                           00E6E2   706 _EP6GPIFFLGSEL	=	0xe6e2
                           00E6E3   707 _EP6GPIFPFSTOP	=	0xe6e3
                           00E6E4   708 _EP6GPIFTRIG	=	0xe6e4
                           00E6EA   709 _EP8GPIFFLGSEL	=	0xe6ea
                           00E6EB   710 _EP8GPIFPFSTOP	=	0xe6eb
                           00E6EC   711 _EP8GPIFTRIG	=	0xe6ec
                           00E6F0   712 _XGPIFSGLDATH	=	0xe6f0
                           00E6F1   713 _XGPIFSGLDATLX	=	0xe6f1
                           00E6F2   714 _XGPIFSGLDATLNOX	=	0xe6f2
                           00E6F3   715 _GPIFREADYCFG	=	0xe6f3
                           00E6F4   716 _GPIFREADYSTAT	=	0xe6f4
                           00E6F5   717 _GPIFABORT	=	0xe6f5
                           00E6C6   718 _FLOWSTATE	=	0xe6c6
                           00E6C7   719 _FLOWLOGIC	=	0xe6c7
                           00E6C8   720 _FLOWEQ0CTL	=	0xe6c8
                           00E6C9   721 _FLOWEQ1CTL	=	0xe6c9
                           00E6CA   722 _FLOWHOLDOFF	=	0xe6ca
                           00E6CB   723 _FLOWSTB	=	0xe6cb
                           00E6CC   724 _FLOWSTBEDGE	=	0xe6cc
                           00E6CD   725 _FLOWSTBHPERIOD	=	0xe6cd
                           00E60C   726 _GPIFHOLDAMOUNT	=	0xe60c
                           00E67D   727 _UDMACRCH	=	0xe67d
                           00E67E   728 _UDMACRCL	=	0xe67e
                           00E67F   729 _UDMACRCQUAL	=	0xe67f
                           00E6F8   730 _DBUG	=	0xe6f8
                           00E6F9   731 _TESTCFG	=	0xe6f9
                           00E6FA   732 _USBTEST	=	0xe6fa
                           00E6FB   733 _CT1	=	0xe6fb
                           00E6FC   734 _CT2	=	0xe6fc
                           00E6FD   735 _CT3	=	0xe6fd
                           00E6FE   736 _CT4	=	0xe6fe
                           00E740   737 _EP0BUF	=	0xe740
                           00E780   738 _EP1OUTBUF	=	0xe780
                           00E7C0   739 _EP1INBUF	=	0xe7c0
                           00F000   740 _EP2FIFOBUF	=	0xf000
                           00F400   741 _EP4FIFOBUF	=	0xf400
                           00F800   742 _EP6FIFOBUF	=	0xf800
                           00FC00   743 _EP8FIFOBUF	=	0xfc00
                           00E628   744 _ECCCFG	=	0xe628
                           00E629   745 _ECCRESET	=	0xe629
                           00E62A   746 _ECC1B0	=	0xe62a
                           00E62B   747 _ECC1B1	=	0xe62b
                           00E62C   748 _ECC1B2	=	0xe62c
                           00E62D   749 _ECC2B0	=	0xe62d
                           00E62E   750 _ECC2B1	=	0xe62e
                           00E62F   751 _ECC2B2	=	0xe62f
                           00E50D   752 _GPCR2	=	0xe50d
                                    753 ;--------------------------------------------------------
                                    754 ; absolute external ram data
                                    755 ;--------------------------------------------------------
                                    756 	.area XABS    (ABS,XDATA)
                                    757 ;--------------------------------------------------------
                                    758 ; external initialized ram data
                                    759 ;--------------------------------------------------------
                                    760 	.area XISEG   (XDATA)
                                    761 	.area HOME    (CODE)
                                    762 	.area GSINIT0 (CODE)
                                    763 	.area GSINIT1 (CODE)
                                    764 	.area GSINIT2 (CODE)
                                    765 	.area GSINIT3 (CODE)
                                    766 	.area GSINIT4 (CODE)
                                    767 	.area GSINIT5 (CODE)
                                    768 	.area GSINIT  (CODE)
                                    769 	.area GSFINAL (CODE)
                                    770 	.area CSEG    (CODE)
                                    771 ;--------------------------------------------------------
                                    772 ; interrupt vector 
                                    773 ;--------------------------------------------------------
                                    774 	.area HOME    (CODE)
      000000                        775 __interrupt_vect:
      000000 02 00 06         [24]  776 	ljmp	__sdcc_gsinit_startup
                                    777 ;--------------------------------------------------------
                                    778 ; global & static initialisations
                                    779 ;--------------------------------------------------------
                                    780 	.area HOME    (CODE)
                                    781 	.area GSINIT  (CODE)
                                    782 	.area GSFINAL (CODE)
                                    783 	.area GSINIT  (CODE)
                                    784 	.globl __sdcc_gsinit_startup
                                    785 	.globl __sdcc_program_startup
                                    786 	.globl __start__stack
                                    787 	.globl __mcs51_genXINIT
                                    788 	.globl __mcs51_genXRAMCLEAR
                                    789 	.globl __mcs51_genRAMCLEAR
                                    790 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  791 	ljmp	__sdcc_program_startup
                                    792 ;--------------------------------------------------------
                                    793 ; Home
                                    794 ;--------------------------------------------------------
                                    795 	.area HOME    (CODE)
                                    796 	.area HOME    (CODE)
      000003                        797 __sdcc_program_startup:
      000003 02 00 90         [24]  798 	ljmp	_main
                                    799 ;	return from main will return to caller
                                    800 ;--------------------------------------------------------
                                    801 ; code
                                    802 ;--------------------------------------------------------
                                    803 	.area CSEG    (CODE)
                                    804 ;------------------------------------------------------------
                                    805 ;Allocation info for local variables in function 'delay'
                                    806 ;------------------------------------------------------------
                                    807 ;times                     Allocated to registers r6 r7 
                                    808 ;x                         Allocated to registers r4 r5 
                                    809 ;y                         Allocated to registers r2 r3 
                                    810 ;------------------------------------------------------------
                                    811 ;	blink.c:10: delay(unsigned times) {
                                    812 ;	-----------------------------------------
                                    813 ;	 function delay
                                    814 ;	-----------------------------------------
      000062                        815 _delay:
                           000007   816 	ar7 = 0x07
                           000006   817 	ar6 = 0x06
                           000005   818 	ar5 = 0x05
                           000004   819 	ar4 = 0x04
                           000003   820 	ar3 = 0x03
                           000002   821 	ar2 = 0x02
                           000001   822 	ar1 = 0x01
                           000000   823 	ar0 = 0x00
      000062 AE 82            [24]  824 	mov	r6,dpl
      000064 AF 83            [24]  825 	mov	r7,dph
                                    826 ;	blink.c:13: for ( x=0; x<times; x++ ) {
      000066 7C 00            [12]  827 	mov	r4,#0x00
      000068 7D 00            [12]  828 	mov	r5,#0x00
      00006A                        829 00107$:
      00006A C3               [12]  830 	clr	c
      00006B EC               [12]  831 	mov	a,r4
      00006C 9E               [12]  832 	subb	a,r6
      00006D ED               [12]  833 	mov	a,r5
      00006E 9F               [12]  834 	subb	a,r7
      00006F 50 1E            [24]  835 	jnc	00109$
                                    836 ;	blink.c:14: for ( y=0; y<200; y++ ) {
      000071 7A C8            [12]  837 	mov	r2,#0xc8
      000073 7B 00            [12]  838 	mov	r3,#0x00
      000075                        839 00105$:
                                    840 ;	blink.c:15: SYNCDELAY;
      000075 00               [12]  841 	nop 
      000076 00               [12]  842 	nop 
      000077 00               [12]  843 	nop 
      000078 EA               [12]  844 	mov	a,r2
      000079 24 FF            [12]  845 	add	a,#0xff
      00007B F8               [12]  846 	mov	r0,a
      00007C EB               [12]  847 	mov	a,r3
      00007D 34 FF            [12]  848 	addc	a,#0xff
      00007F F9               [12]  849 	mov	r1,a
      000080 88 02            [24]  850 	mov	ar2,r0
      000082 89 03            [24]  851 	mov	ar3,r1
                                    852 ;	blink.c:14: for ( y=0; y<200; y++ ) {
      000084 E8               [12]  853 	mov	a,r0
      000085 49               [12]  854 	orl	a,r1
      000086 70 ED            [24]  855 	jnz	00105$
                                    856 ;	blink.c:13: for ( x=0; x<times; x++ ) {
      000088 0C               [12]  857 	inc	r4
      000089 BC 00 DE         [24]  858 	cjne	r4,#0x00,00107$
      00008C 0D               [12]  859 	inc	r5
      00008D 80 DB            [24]  860 	sjmp	00107$
      00008F                        861 00109$:
                                    862 ;	blink.c:18: }
      00008F 22               [24]  863 	ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'main'
                                    866 ;------------------------------------------------------------
                                    867 ;	blink.c:21: main(void) {
                                    868 ;	-----------------------------------------
                                    869 ;	 function main
                                    870 ;	-----------------------------------------
      000090                        871 _main:
                                    872 ;	blink.c:23: OEA = 0x03;		// PA0 & PA1 is output
      000090 75 B2 03         [24]  873 	mov	_OEA,#0x03
      000093                        874 00102$:
                                    875 ;	blink.c:26: PA0 = 1;
                                    876 ;	assignBit
      000093 D2 80            [12]  877 	setb	_PA0
                                    878 ;	blink.c:27: PA1 = 0;
                                    879 ;	assignBit
      000095 C2 81            [12]  880 	clr	_PA1
                                    881 ;	blink.c:28: delay(1000);
      000097 90 03 E8         [24]  882 	mov	dptr,#0x03e8
      00009A 12 00 62         [24]  883 	lcall	_delay
                                    884 ;	blink.c:29: PA0 = 0;
                                    885 ;	assignBit
      00009D C2 80            [12]  886 	clr	_PA0
                                    887 ;	blink.c:30: PA1 = 1;
                                    888 ;	assignBit
      00009F D2 81            [12]  889 	setb	_PA1
                                    890 ;	blink.c:31: delay(1000);
      0000A1 90 03 E8         [24]  891 	mov	dptr,#0x03e8
      0000A4 12 00 62         [24]  892 	lcall	_delay
                                    893 ;	blink.c:33: }
      0000A7 80 EA            [24]  894 	sjmp	00102$
                                    895 	.area CSEG    (CODE)
                                    896 	.area CONST   (CODE)
                                    897 	.area XINIT   (CODE)
                                    898 	.area CABS    (ABS,CODE)

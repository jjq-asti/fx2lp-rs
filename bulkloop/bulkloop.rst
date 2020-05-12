                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module bulkloop
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ISR_GpifWaveform
                                     12 	.globl _ISR_GpifComplete
                                     13 	.globl _ISR_Ep8fflag
                                     14 	.globl _ISR_Ep6fflag
                                     15 	.globl _ISR_Ep4fflag
                                     16 	.globl _ISR_Ep2fflag
                                     17 	.globl _ISR_Ep8eflag
                                     18 	.globl _ISR_Ep6eflag
                                     19 	.globl _ISR_Ep4eflag
                                     20 	.globl _ISR_Ep2eflag
                                     21 	.globl _ISR_Ep8pflag
                                     22 	.globl _ISR_Ep6pflag
                                     23 	.globl _ISR_Ep4pflag
                                     24 	.globl _ISR_Ep2pflag
                                     25 	.globl _ISR_Ep8piderror
                                     26 	.globl _ISR_Ep6piderror
                                     27 	.globl _ISR_Ep4piderror
                                     28 	.globl _ISR_Ep2piderror
                                     29 	.globl _ISR_Errorlimit
                                     30 	.globl _ISR_Ep8pingnak
                                     31 	.globl _ISR_Ep6pingnak
                                     32 	.globl _ISR_Ep4pingnak
                                     33 	.globl _ISR_Ep2pingnak
                                     34 	.globl _ISR_Ep1pingnak
                                     35 	.globl _ISR_Ep0pingnak
                                     36 	.globl _ISR_Ibn
                                     37 	.globl _ISR_Ep8inout
                                     38 	.globl _ISR_Ep6inout
                                     39 	.globl _ISR_Ep4inout
                                     40 	.globl _ISR_Ep2inout
                                     41 	.globl _ISR_Ep1out
                                     42 	.globl _ISR_Ep1in
                                     43 	.globl _ISR_Ep0out
                                     44 	.globl _ISR_Ep0in
                                     45 	.globl _ISR_Stub
                                     46 	.globl _ISR_Ep0ack
                                     47 	.globl _ISR_Highspeed
                                     48 	.globl _ISR_Susp
                                     49 	.globl _ISR_Ures
                                     50 	.globl _ISR_Sof
                                     51 	.globl _ISR_Sutok
                                     52 	.globl _ISR_Sudav
                                     53 	.globl _DR_VendorCmnd
                                     54 	.globl _DR_SetFeature
                                     55 	.globl _DR_ClearFeature
                                     56 	.globl _DR_GetStatus
                                     57 	.globl _DR_GetInterface
                                     58 	.globl _DR_SetInterface
                                     59 	.globl _DR_GetConfiguration
                                     60 	.globl _DR_SetConfiguration
                                     61 	.globl _DR_GetDescriptor
                                     62 	.globl _TD_Resume
                                     63 	.globl _TD_Suspend
                                     64 	.globl _TD_Poll
                                     65 	.globl _TD_Init
                                     66 	.globl _EIPX6
                                     67 	.globl _EIPX5
                                     68 	.globl _EIPX4
                                     69 	.globl _PI2C
                                     70 	.globl _PUSB
                                     71 	.globl _EIEX6
                                     72 	.globl _EIEX5
                                     73 	.globl _EIEX4
                                     74 	.globl _EI2C
                                     75 	.globl _EUSB
                                     76 	.globl _SMOD1
                                     77 	.globl _ERESI
                                     78 	.globl _RESI
                                     79 	.globl _INT6
                                     80 	.globl _CY
                                     81 	.globl _AC
                                     82 	.globl _F0
                                     83 	.globl _RS1
                                     84 	.globl _RS0
                                     85 	.globl _OV
                                     86 	.globl _FL
                                     87 	.globl _P
                                     88 	.globl _TF2
                                     89 	.globl _EXF2
                                     90 	.globl _RCLK
                                     91 	.globl _TCLK
                                     92 	.globl _EXEN2
                                     93 	.globl _TR2
                                     94 	.globl _C_T2
                                     95 	.globl _CP_RL2
                                     96 	.globl _SM01
                                     97 	.globl _SM11
                                     98 	.globl _SM21
                                     99 	.globl _REN1
                                    100 	.globl _TB81
                                    101 	.globl _RB81
                                    102 	.globl _TI1
                                    103 	.globl _RI1
                                    104 	.globl _PS1
                                    105 	.globl _PT2
                                    106 	.globl _PS0
                                    107 	.globl _PT1
                                    108 	.globl _PX1
                                    109 	.globl _PT0
                                    110 	.globl _PX0
                                    111 	.globl _PD7
                                    112 	.globl _PD6
                                    113 	.globl _PD5
                                    114 	.globl _PD4
                                    115 	.globl _PD3
                                    116 	.globl _PD2
                                    117 	.globl _PD1
                                    118 	.globl _PD0
                                    119 	.globl _EA
                                    120 	.globl _ES1
                                    121 	.globl _ET2
                                    122 	.globl _ES0
                                    123 	.globl _ET1
                                    124 	.globl _EX1
                                    125 	.globl _ET0
                                    126 	.globl _EX0
                                    127 	.globl _PC7
                                    128 	.globl _PC6
                                    129 	.globl _PC5
                                    130 	.globl _PC4
                                    131 	.globl _PC3
                                    132 	.globl _PC2
                                    133 	.globl _PC1
                                    134 	.globl _PC0
                                    135 	.globl _SM0
                                    136 	.globl _SM1
                                    137 	.globl _SM2
                                    138 	.globl _REN
                                    139 	.globl _TB8
                                    140 	.globl _RB8
                                    141 	.globl _TI
                                    142 	.globl _RI
                                    143 	.globl _PB7
                                    144 	.globl _PB6
                                    145 	.globl _PB5
                                    146 	.globl _PB4
                                    147 	.globl _PB3
                                    148 	.globl _PB2
                                    149 	.globl _PB1
                                    150 	.globl _PB0
                                    151 	.globl _TF1
                                    152 	.globl _TR1
                                    153 	.globl _TF0
                                    154 	.globl _TR0
                                    155 	.globl _IE1
                                    156 	.globl _IT1
                                    157 	.globl _IE0
                                    158 	.globl _IT0
                                    159 	.globl _PA7
                                    160 	.globl _PA6
                                    161 	.globl _PA5
                                    162 	.globl _PA4
                                    163 	.globl _PA3
                                    164 	.globl _PA2
                                    165 	.globl _PA1
                                    166 	.globl _PA0
                                    167 	.globl _EIP
                                    168 	.globl _B
                                    169 	.globl _EIE
                                    170 	.globl _ACC
                                    171 	.globl _EICON
                                    172 	.globl _PSW
                                    173 	.globl _TH2
                                    174 	.globl _TL2
                                    175 	.globl _RCAP2H
                                    176 	.globl _RCAP2L
                                    177 	.globl _T2CON
                                    178 	.globl _SBUF1
                                    179 	.globl _SCON1
                                    180 	.globl _GPIFSGLDATLNOX
                                    181 	.globl _GPIFSGLDATLX
                                    182 	.globl _GPIFSGLDATH
                                    183 	.globl _GPIFTRIG
                                    184 	.globl _EP01STAT
                                    185 	.globl _IP
                                    186 	.globl _OEE
                                    187 	.globl _OED
                                    188 	.globl _OEC
                                    189 	.globl _OEB
                                    190 	.globl _OEA
                                    191 	.globl _IOE
                                    192 	.globl _IOD
                                    193 	.globl _AUTOPTRSETUP
                                    194 	.globl _EP68FIFOFLGS
                                    195 	.globl _EP24FIFOFLGS
                                    196 	.globl _EP2468STAT
                                    197 	.globl _IE
                                    198 	.globl _INT4CLR
                                    199 	.globl _INT2CLR
                                    200 	.globl _IOC
                                    201 	.globl _AUTOPTRL2
                                    202 	.globl _AUTOPTRH2
                                    203 	.globl _AUTOPTRL1
                                    204 	.globl _AUTOPTRH1
                                    205 	.globl _SBUF0
                                    206 	.globl _SCON0
                                    207 	.globl _MPAGE
                                    208 	.globl _EXIF
                                    209 	.globl _IOB
                                    210 	.globl _SPC_FNC
                                    211 	.globl _CKCON
                                    212 	.globl _TH1
                                    213 	.globl _TH0
                                    214 	.globl _TL1
                                    215 	.globl _TL0
                                    216 	.globl _TMOD
                                    217 	.globl _TCON
                                    218 	.globl _PCON
                                    219 	.globl _DPS
                                    220 	.globl _DPH1
                                    221 	.globl _DPL1
                                    222 	.globl _DPH
                                    223 	.globl _DPL
                                    224 	.globl _SP
                                    225 	.globl _IOA
                                    226 	.globl _GPCR2
                                    227 	.globl _ECC2B2
                                    228 	.globl _ECC2B1
                                    229 	.globl _ECC2B0
                                    230 	.globl _ECC1B2
                                    231 	.globl _ECC1B1
                                    232 	.globl _ECC1B0
                                    233 	.globl _ECCRESET
                                    234 	.globl _ECCCFG
                                    235 	.globl _EP8FIFOBUF
                                    236 	.globl _EP6FIFOBUF
                                    237 	.globl _EP4FIFOBUF
                                    238 	.globl _EP2FIFOBUF
                                    239 	.globl _EP1INBUF
                                    240 	.globl _EP1OUTBUF
                                    241 	.globl _EP0BUF
                                    242 	.globl _CT4
                                    243 	.globl _CT3
                                    244 	.globl _CT2
                                    245 	.globl _CT1
                                    246 	.globl _USBTEST
                                    247 	.globl _TESTCFG
                                    248 	.globl _DBUG
                                    249 	.globl _UDMACRCQUAL
                                    250 	.globl _UDMACRCL
                                    251 	.globl _UDMACRCH
                                    252 	.globl _GPIFHOLDAMOUNT
                                    253 	.globl _FLOWSTBHPERIOD
                                    254 	.globl _FLOWSTBEDGE
                                    255 	.globl _FLOWSTB
                                    256 	.globl _FLOWHOLDOFF
                                    257 	.globl _FLOWEQ1CTL
                                    258 	.globl _FLOWEQ0CTL
                                    259 	.globl _FLOWLOGIC
                                    260 	.globl _FLOWSTATE
                                    261 	.globl _GPIFABORT
                                    262 	.globl _GPIFREADYSTAT
                                    263 	.globl _GPIFREADYCFG
                                    264 	.globl _XGPIFSGLDATLNOX
                                    265 	.globl _XGPIFSGLDATLX
                                    266 	.globl _XGPIFSGLDATH
                                    267 	.globl _EP8GPIFTRIG
                                    268 	.globl _EP8GPIFPFSTOP
                                    269 	.globl _EP8GPIFFLGSEL
                                    270 	.globl _EP6GPIFTRIG
                                    271 	.globl _EP6GPIFPFSTOP
                                    272 	.globl _EP6GPIFFLGSEL
                                    273 	.globl _EP4GPIFTRIG
                                    274 	.globl _EP4GPIFPFSTOP
                                    275 	.globl _EP4GPIFFLGSEL
                                    276 	.globl _EP2GPIFTRIG
                                    277 	.globl _EP2GPIFPFSTOP
                                    278 	.globl _EP2GPIFFLGSEL
                                    279 	.globl _GPIFTCB0
                                    280 	.globl _GPIFTCB1
                                    281 	.globl _GPIFTCB2
                                    282 	.globl _GPIFTCB3
                                    283 	.globl _GPIFADRL
                                    284 	.globl _GPIFADRH
                                    285 	.globl _GPIFCTLCFG
                                    286 	.globl _GPIFIDLECTL
                                    287 	.globl _GPIFIDLECS
                                    288 	.globl _GPIFWFSELECT
                                    289 	.globl _SETUPDAT
                                    290 	.globl _SUDPTRCTL
                                    291 	.globl _SUDPTRL
                                    292 	.globl _SUDPTRH
                                    293 	.globl _EP8FIFOBCL
                                    294 	.globl _EP8FIFOBCH
                                    295 	.globl _EP6FIFOBCL
                                    296 	.globl _EP6FIFOBCH
                                    297 	.globl _EP4FIFOBCL
                                    298 	.globl _EP4FIFOBCH
                                    299 	.globl _EP2FIFOBCL
                                    300 	.globl _EP2FIFOBCH
                                    301 	.globl _EP8FIFOFLGS
                                    302 	.globl _EP6FIFOFLGS
                                    303 	.globl _EP4FIFOFLGS
                                    304 	.globl _EP2FIFOFLGS
                                    305 	.globl _EP8CS
                                    306 	.globl _EP6CS
                                    307 	.globl _EP4CS
                                    308 	.globl _EP2CS
                                    309 	.globl _EP1INCS
                                    310 	.globl _EP1OUTCS
                                    311 	.globl _EP0CS
                                    312 	.globl _EP8BCL
                                    313 	.globl _EP8BCH
                                    314 	.globl _EP6BCL
                                    315 	.globl _EP6BCH
                                    316 	.globl _EP4BCL
                                    317 	.globl _EP4BCH
                                    318 	.globl _EP2BCL
                                    319 	.globl _EP2BCH
                                    320 	.globl _EP1INBC
                                    321 	.globl _EP1OUTBC
                                    322 	.globl _EP0BCL
                                    323 	.globl _EP0BCH
                                    324 	.globl _FNADDR
                                    325 	.globl _MICROFRAME
                                    326 	.globl _USBFRAMEL
                                    327 	.globl _USBFRAMEH
                                    328 	.globl _TOGCTL
                                    329 	.globl _WAKEUPCS
                                    330 	.globl _SUSPEND
                                    331 	.globl _USBCS
                                    332 	.globl _XAUTODAT2
                                    333 	.globl _XAUTODAT1
                                    334 	.globl _I2CTL
                                    335 	.globl _I2DAT
                                    336 	.globl _I2CS
                                    337 	.globl _PORTECFG
                                    338 	.globl _PORTCCFG
                                    339 	.globl _PORTACFG
                                    340 	.globl _INTSETUP
                                    341 	.globl _INT4IVEC
                                    342 	.globl _INT2IVEC
                                    343 	.globl _CLRERRCNT
                                    344 	.globl _ERRCNTLIM
                                    345 	.globl _USBERRIRQ
                                    346 	.globl _USBERRIE
                                    347 	.globl _GPIFIRQ
                                    348 	.globl _GPIFIE
                                    349 	.globl _EPIRQ
                                    350 	.globl _EPIE
                                    351 	.globl _USBIRQ
                                    352 	.globl _USBIE
                                    353 	.globl _NAKIRQ
                                    354 	.globl _NAKIE
                                    355 	.globl _IBNIRQ
                                    356 	.globl _IBNIE
                                    357 	.globl _EP8FIFOIRQ
                                    358 	.globl _EP8FIFOIE
                                    359 	.globl _EP6FIFOIRQ
                                    360 	.globl _EP6FIFOIE
                                    361 	.globl _EP4FIFOIRQ
                                    362 	.globl _EP4FIFOIE
                                    363 	.globl _EP2FIFOIRQ
                                    364 	.globl _EP2FIFOIE
                                    365 	.globl _OUTPKTEND
                                    366 	.globl _INPKTEND
                                    367 	.globl _EP8ISOINPKTS
                                    368 	.globl _EP6ISOINPKTS
                                    369 	.globl _EP4ISOINPKTS
                                    370 	.globl _EP2ISOINPKTS
                                    371 	.globl _EP8FIFOPFL
                                    372 	.globl _EP8FIFOPFH
                                    373 	.globl _EP6FIFOPFL
                                    374 	.globl _EP6FIFOPFH
                                    375 	.globl _EP4FIFOPFL
                                    376 	.globl _EP4FIFOPFH
                                    377 	.globl _EP2FIFOPFL
                                    378 	.globl _EP2FIFOPFH
                                    379 	.globl _EP8AUTOINLENL
                                    380 	.globl _EP8AUTOINLENH
                                    381 	.globl _EP6AUTOINLENL
                                    382 	.globl _EP6AUTOINLENH
                                    383 	.globl _EP4AUTOINLENL
                                    384 	.globl _EP4AUTOINLENH
                                    385 	.globl _EP2AUTOINLENL
                                    386 	.globl _EP2AUTOINLENH
                                    387 	.globl _EP8FIFOCFG
                                    388 	.globl _EP6FIFOCFG
                                    389 	.globl _EP4FIFOCFG
                                    390 	.globl _EP2FIFOCFG
                                    391 	.globl _EP8CFG
                                    392 	.globl _EP6CFG
                                    393 	.globl _EP4CFG
                                    394 	.globl _EP2CFG
                                    395 	.globl _EP1INCFG
                                    396 	.globl _EP1OUTCFG
                                    397 	.globl _REVCTL
                                    398 	.globl _REVID
                                    399 	.globl _FIFOPINPOLAR
                                    400 	.globl _UART230
                                    401 	.globl _BPADDRL
                                    402 	.globl _BPADDRH
                                    403 	.globl _BREAKPT
                                    404 	.globl _FIFORESET
                                    405 	.globl _PINFLAGSCD
                                    406 	.globl _PINFLAGSAB
                                    407 	.globl _IFCONFIG
                                    408 	.globl _CPUCS
                                    409 	.globl _RES_WAVEDATA_END
                                    410 	.globl _GPIF_WAVE_DATA
                                    411 	.globl _AlternateSetting
                                    412 	.globl _Configuration
                                    413 ;--------------------------------------------------------
                                    414 ; special function registers
                                    415 ;--------------------------------------------------------
                                    416 	.area RSEG    (ABS,DATA)
      000000                        417 	.org 0x0000
                           000080   418 _IOA	=	0x0080
                           000081   419 _SP	=	0x0081
                           000082   420 _DPL	=	0x0082
                           000083   421 _DPH	=	0x0083
                           000084   422 _DPL1	=	0x0084
                           000085   423 _DPH1	=	0x0085
                           000086   424 _DPS	=	0x0086
                           000087   425 _PCON	=	0x0087
                           000088   426 _TCON	=	0x0088
                           000089   427 _TMOD	=	0x0089
                           00008A   428 _TL0	=	0x008a
                           00008B   429 _TL1	=	0x008b
                           00008C   430 _TH0	=	0x008c
                           00008D   431 _TH1	=	0x008d
                           00008E   432 _CKCON	=	0x008e
                           00008F   433 _SPC_FNC	=	0x008f
                           000090   434 _IOB	=	0x0090
                           000091   435 _EXIF	=	0x0091
                           000092   436 _MPAGE	=	0x0092
                           000098   437 _SCON0	=	0x0098
                           000099   438 _SBUF0	=	0x0099
                           00009A   439 _AUTOPTRH1	=	0x009a
                           00009B   440 _AUTOPTRL1	=	0x009b
                           00009D   441 _AUTOPTRH2	=	0x009d
                           00009E   442 _AUTOPTRL2	=	0x009e
                           0000A0   443 _IOC	=	0x00a0
                           0000A1   444 _INT2CLR	=	0x00a1
                           0000A2   445 _INT4CLR	=	0x00a2
                           0000A8   446 _IE	=	0x00a8
                           0000AA   447 _EP2468STAT	=	0x00aa
                           0000AB   448 _EP24FIFOFLGS	=	0x00ab
                           0000AC   449 _EP68FIFOFLGS	=	0x00ac
                           0000AF   450 _AUTOPTRSETUP	=	0x00af
                           0000B0   451 _IOD	=	0x00b0
                           0000B1   452 _IOE	=	0x00b1
                           0000B2   453 _OEA	=	0x00b2
                           0000B3   454 _OEB	=	0x00b3
                           0000B4   455 _OEC	=	0x00b4
                           0000B5   456 _OED	=	0x00b5
                           0000B6   457 _OEE	=	0x00b6
                           0000B8   458 _IP	=	0x00b8
                           0000BA   459 _EP01STAT	=	0x00ba
                           0000BB   460 _GPIFTRIG	=	0x00bb
                           0000BD   461 _GPIFSGLDATH	=	0x00bd
                           0000BE   462 _GPIFSGLDATLX	=	0x00be
                           0000BF   463 _GPIFSGLDATLNOX	=	0x00bf
                           0000C0   464 _SCON1	=	0x00c0
                           0000C1   465 _SBUF1	=	0x00c1
                           0000C8   466 _T2CON	=	0x00c8
                           0000CA   467 _RCAP2L	=	0x00ca
                           0000CB   468 _RCAP2H	=	0x00cb
                           0000CC   469 _TL2	=	0x00cc
                           0000CD   470 _TH2	=	0x00cd
                           0000D0   471 _PSW	=	0x00d0
                           0000D8   472 _EICON	=	0x00d8
                           0000E0   473 _ACC	=	0x00e0
                           0000E8   474 _EIE	=	0x00e8
                           0000F0   475 _B	=	0x00f0
                           0000F8   476 _EIP	=	0x00f8
                                    477 ;--------------------------------------------------------
                                    478 ; special function bits
                                    479 ;--------------------------------------------------------
                                    480 	.area RSEG    (ABS,DATA)
      000000                        481 	.org 0x0000
                           000080   482 _PA0	=	0x0080
                           000081   483 _PA1	=	0x0081
                           000082   484 _PA2	=	0x0082
                           000083   485 _PA3	=	0x0083
                           000084   486 _PA4	=	0x0084
                           000085   487 _PA5	=	0x0085
                           000086   488 _PA6	=	0x0086
                           000087   489 _PA7	=	0x0087
                           000088   490 _IT0	=	0x0088
                           000089   491 _IE0	=	0x0089
                           00008A   492 _IT1	=	0x008a
                           00008B   493 _IE1	=	0x008b
                           00008C   494 _TR0	=	0x008c
                           00008D   495 _TF0	=	0x008d
                           00008E   496 _TR1	=	0x008e
                           00008F   497 _TF1	=	0x008f
                           000090   498 _PB0	=	0x0090
                           000091   499 _PB1	=	0x0091
                           000092   500 _PB2	=	0x0092
                           000093   501 _PB3	=	0x0093
                           000094   502 _PB4	=	0x0094
                           000095   503 _PB5	=	0x0095
                           000096   504 _PB6	=	0x0096
                           000097   505 _PB7	=	0x0097
                           000098   506 _RI	=	0x0098
                           000099   507 _TI	=	0x0099
                           00009A   508 _RB8	=	0x009a
                           00009B   509 _TB8	=	0x009b
                           00009C   510 _REN	=	0x009c
                           00009D   511 _SM2	=	0x009d
                           00009E   512 _SM1	=	0x009e
                           00009F   513 _SM0	=	0x009f
                           0000A0   514 _PC0	=	0x00a0
                           0000A1   515 _PC1	=	0x00a1
                           0000A2   516 _PC2	=	0x00a2
                           0000A3   517 _PC3	=	0x00a3
                           0000A4   518 _PC4	=	0x00a4
                           0000A5   519 _PC5	=	0x00a5
                           0000A6   520 _PC6	=	0x00a6
                           0000A7   521 _PC7	=	0x00a7
                           0000A8   522 _EX0	=	0x00a8
                           0000A9   523 _ET0	=	0x00a9
                           0000AA   524 _EX1	=	0x00aa
                           0000AB   525 _ET1	=	0x00ab
                           0000AC   526 _ES0	=	0x00ac
                           0000AD   527 _ET2	=	0x00ad
                           0000AE   528 _ES1	=	0x00ae
                           0000AF   529 _EA	=	0x00af
                           0000B0   530 _PD0	=	0x00b0
                           0000B1   531 _PD1	=	0x00b1
                           0000B2   532 _PD2	=	0x00b2
                           0000B3   533 _PD3	=	0x00b3
                           0000B4   534 _PD4	=	0x00b4
                           0000B5   535 _PD5	=	0x00b5
                           0000B6   536 _PD6	=	0x00b6
                           0000B7   537 _PD7	=	0x00b7
                           0000B8   538 _PX0	=	0x00b8
                           0000B9   539 _PT0	=	0x00b9
                           0000BA   540 _PX1	=	0x00ba
                           0000BB   541 _PT1	=	0x00bb
                           0000BC   542 _PS0	=	0x00bc
                           0000BD   543 _PT2	=	0x00bd
                           0000BE   544 _PS1	=	0x00be
                           0000C0   545 _RI1	=	0x00c0
                           0000C1   546 _TI1	=	0x00c1
                           0000C2   547 _RB81	=	0x00c2
                           0000C3   548 _TB81	=	0x00c3
                           0000C4   549 _REN1	=	0x00c4
                           0000C5   550 _SM21	=	0x00c5
                           0000C6   551 _SM11	=	0x00c6
                           0000C7   552 _SM01	=	0x00c7
                           0000C8   553 _CP_RL2	=	0x00c8
                           0000C9   554 _C_T2	=	0x00c9
                           0000CA   555 _TR2	=	0x00ca
                           0000CB   556 _EXEN2	=	0x00cb
                           0000CC   557 _TCLK	=	0x00cc
                           0000CD   558 _RCLK	=	0x00cd
                           0000CE   559 _EXF2	=	0x00ce
                           0000CF   560 _TF2	=	0x00cf
                           0000D0   561 _P	=	0x00d0
                           0000D1   562 _FL	=	0x00d1
                           0000D2   563 _OV	=	0x00d2
                           0000D3   564 _RS0	=	0x00d3
                           0000D4   565 _RS1	=	0x00d4
                           0000D5   566 _F0	=	0x00d5
                           0000D6   567 _AC	=	0x00d6
                           0000D7   568 _CY	=	0x00d7
                           0000DB   569 _INT6	=	0x00db
                           0000DC   570 _RESI	=	0x00dc
                           0000DD   571 _ERESI	=	0x00dd
                           0000DF   572 _SMOD1	=	0x00df
                           0000E8   573 _EUSB	=	0x00e8
                           0000E9   574 _EI2C	=	0x00e9
                           0000EA   575 _EIEX4	=	0x00ea
                           0000EB   576 _EIEX5	=	0x00eb
                           0000EC   577 _EIEX6	=	0x00ec
                           0000F8   578 _PUSB	=	0x00f8
                           0000F9   579 _PI2C	=	0x00f9
                           0000FA   580 _EIPX4	=	0x00fa
                           0000FB   581 _EIPX5	=	0x00fb
                           0000FC   582 _EIPX6	=	0x00fc
                                    583 ;--------------------------------------------------------
                                    584 ; overlayable register banks
                                    585 ;--------------------------------------------------------
                                    586 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        587 	.ds 8
                                    588 ;--------------------------------------------------------
                                    589 ; internal ram data
                                    590 ;--------------------------------------------------------
                                    591 	.area DSEG    (DATA)
      000000                        592 _Configuration::
      000000                        593 	.ds 1
      000001                        594 _AlternateSetting::
      000001                        595 	.ds 1
                                    596 ;--------------------------------------------------------
                                    597 ; overlayable items in internal ram 
                                    598 ;--------------------------------------------------------
                                    599 	.area	OSEG    (OVR,DATA)
                                    600 	.area	OSEG    (OVR,DATA)
                                    601 ;--------------------------------------------------------
                                    602 ; indirectly addressable internal ram data
                                    603 ;--------------------------------------------------------
                                    604 	.area ISEG    (DATA)
                                    605 ;--------------------------------------------------------
                                    606 ; absolute internal ram data
                                    607 ;--------------------------------------------------------
                                    608 	.area IABS    (ABS,DATA)
                                    609 	.area IABS    (ABS,DATA)
                                    610 ;--------------------------------------------------------
                                    611 ; bit data
                                    612 ;--------------------------------------------------------
                                    613 	.area BSEG    (BIT)
                                    614 ;--------------------------------------------------------
                                    615 ; paged external ram data
                                    616 ;--------------------------------------------------------
                                    617 	.area PSEG    (PAG,XDATA)
                                    618 ;--------------------------------------------------------
                                    619 ; external ram data
                                    620 ;--------------------------------------------------------
                                    621 	.area XSEG    (XDATA)
                           00E400   622 _GPIF_WAVE_DATA	=	0xe400
                           00E480   623 _RES_WAVEDATA_END	=	0xe480
                           00E600   624 _CPUCS	=	0xe600
                           00E601   625 _IFCONFIG	=	0xe601
                           00E602   626 _PINFLAGSAB	=	0xe602
                           00E603   627 _PINFLAGSCD	=	0xe603
                           00E604   628 _FIFORESET	=	0xe604
                           00E605   629 _BREAKPT	=	0xe605
                           00E606   630 _BPADDRH	=	0xe606
                           00E607   631 _BPADDRL	=	0xe607
                           00E608   632 _UART230	=	0xe608
                           00E609   633 _FIFOPINPOLAR	=	0xe609
                           00E60A   634 _REVID	=	0xe60a
                           00E60B   635 _REVCTL	=	0xe60b
                           00E610   636 _EP1OUTCFG	=	0xe610
                           00E611   637 _EP1INCFG	=	0xe611
                           00E612   638 _EP2CFG	=	0xe612
                           00E613   639 _EP4CFG	=	0xe613
                           00E614   640 _EP6CFG	=	0xe614
                           00E615   641 _EP8CFG	=	0xe615
                           00E618   642 _EP2FIFOCFG	=	0xe618
                           00E619   643 _EP4FIFOCFG	=	0xe619
                           00E61A   644 _EP6FIFOCFG	=	0xe61a
                           00E61B   645 _EP8FIFOCFG	=	0xe61b
                           00E620   646 _EP2AUTOINLENH	=	0xe620
                           00E621   647 _EP2AUTOINLENL	=	0xe621
                           00E622   648 _EP4AUTOINLENH	=	0xe622
                           00E623   649 _EP4AUTOINLENL	=	0xe623
                           00E624   650 _EP6AUTOINLENH	=	0xe624
                           00E625   651 _EP6AUTOINLENL	=	0xe625
                           00E626   652 _EP8AUTOINLENH	=	0xe626
                           00E627   653 _EP8AUTOINLENL	=	0xe627
                           00E630   654 _EP2FIFOPFH	=	0xe630
                           00E631   655 _EP2FIFOPFL	=	0xe631
                           00E632   656 _EP4FIFOPFH	=	0xe632
                           00E633   657 _EP4FIFOPFL	=	0xe633
                           00E634   658 _EP6FIFOPFH	=	0xe634
                           00E635   659 _EP6FIFOPFL	=	0xe635
                           00E636   660 _EP8FIFOPFH	=	0xe636
                           00E637   661 _EP8FIFOPFL	=	0xe637
                           00E640   662 _EP2ISOINPKTS	=	0xe640
                           00E641   663 _EP4ISOINPKTS	=	0xe641
                           00E642   664 _EP6ISOINPKTS	=	0xe642
                           00E643   665 _EP8ISOINPKTS	=	0xe643
                           00E648   666 _INPKTEND	=	0xe648
                           00E649   667 _OUTPKTEND	=	0xe649
                           00E650   668 _EP2FIFOIE	=	0xe650
                           00E651   669 _EP2FIFOIRQ	=	0xe651
                           00E652   670 _EP4FIFOIE	=	0xe652
                           00E653   671 _EP4FIFOIRQ	=	0xe653
                           00E654   672 _EP6FIFOIE	=	0xe654
                           00E655   673 _EP6FIFOIRQ	=	0xe655
                           00E656   674 _EP8FIFOIE	=	0xe656
                           00E657   675 _EP8FIFOIRQ	=	0xe657
                           00E658   676 _IBNIE	=	0xe658
                           00E659   677 _IBNIRQ	=	0xe659
                           00E65A   678 _NAKIE	=	0xe65a
                           00E65B   679 _NAKIRQ	=	0xe65b
                           00E65C   680 _USBIE	=	0xe65c
                           00E65D   681 _USBIRQ	=	0xe65d
                           00E65E   682 _EPIE	=	0xe65e
                           00E65F   683 _EPIRQ	=	0xe65f
                           00E660   684 _GPIFIE	=	0xe660
                           00E661   685 _GPIFIRQ	=	0xe661
                           00E662   686 _USBERRIE	=	0xe662
                           00E663   687 _USBERRIRQ	=	0xe663
                           00E664   688 _ERRCNTLIM	=	0xe664
                           00E665   689 _CLRERRCNT	=	0xe665
                           00E666   690 _INT2IVEC	=	0xe666
                           00E667   691 _INT4IVEC	=	0xe667
                           00E668   692 _INTSETUP	=	0xe668
                           00E670   693 _PORTACFG	=	0xe670
                           00E671   694 _PORTCCFG	=	0xe671
                           00E672   695 _PORTECFG	=	0xe672
                           00E678   696 _I2CS	=	0xe678
                           00E679   697 _I2DAT	=	0xe679
                           00E67A   698 _I2CTL	=	0xe67a
                           00E67B   699 _XAUTODAT1	=	0xe67b
                           00E67C   700 _XAUTODAT2	=	0xe67c
                           00E680   701 _USBCS	=	0xe680
                           00E681   702 _SUSPEND	=	0xe681
                           00E682   703 _WAKEUPCS	=	0xe682
                           00E683   704 _TOGCTL	=	0xe683
                           00E684   705 _USBFRAMEH	=	0xe684
                           00E685   706 _USBFRAMEL	=	0xe685
                           00E686   707 _MICROFRAME	=	0xe686
                           00E687   708 _FNADDR	=	0xe687
                           00E68A   709 _EP0BCH	=	0xe68a
                           00E68B   710 _EP0BCL	=	0xe68b
                           00E68D   711 _EP1OUTBC	=	0xe68d
                           00E68F   712 _EP1INBC	=	0xe68f
                           00E690   713 _EP2BCH	=	0xe690
                           00E691   714 _EP2BCL	=	0xe691
                           00E694   715 _EP4BCH	=	0xe694
                           00E695   716 _EP4BCL	=	0xe695
                           00E698   717 _EP6BCH	=	0xe698
                           00E699   718 _EP6BCL	=	0xe699
                           00E69C   719 _EP8BCH	=	0xe69c
                           00E69D   720 _EP8BCL	=	0xe69d
                           00E6A0   721 _EP0CS	=	0xe6a0
                           00E6A1   722 _EP1OUTCS	=	0xe6a1
                           00E6A2   723 _EP1INCS	=	0xe6a2
                           00E6A3   724 _EP2CS	=	0xe6a3
                           00E6A4   725 _EP4CS	=	0xe6a4
                           00E6A5   726 _EP6CS	=	0xe6a5
                           00E6A6   727 _EP8CS	=	0xe6a6
                           00E6A7   728 _EP2FIFOFLGS	=	0xe6a7
                           00E6A8   729 _EP4FIFOFLGS	=	0xe6a8
                           00E6A9   730 _EP6FIFOFLGS	=	0xe6a9
                           00E6AA   731 _EP8FIFOFLGS	=	0xe6aa
                           00E6AB   732 _EP2FIFOBCH	=	0xe6ab
                           00E6AC   733 _EP2FIFOBCL	=	0xe6ac
                           00E6AD   734 _EP4FIFOBCH	=	0xe6ad
                           00E6AE   735 _EP4FIFOBCL	=	0xe6ae
                           00E6AF   736 _EP6FIFOBCH	=	0xe6af
                           00E6B0   737 _EP6FIFOBCL	=	0xe6b0
                           00E6B1   738 _EP8FIFOBCH	=	0xe6b1
                           00E6B2   739 _EP8FIFOBCL	=	0xe6b2
                           00E6B3   740 _SUDPTRH	=	0xe6b3
                           00E6B4   741 _SUDPTRL	=	0xe6b4
                           00E6B5   742 _SUDPTRCTL	=	0xe6b5
                           00E6B8   743 _SETUPDAT	=	0xe6b8
                           00E6C0   744 _GPIFWFSELECT	=	0xe6c0
                           00E6C1   745 _GPIFIDLECS	=	0xe6c1
                           00E6C2   746 _GPIFIDLECTL	=	0xe6c2
                           00E6C3   747 _GPIFCTLCFG	=	0xe6c3
                           00E6C4   748 _GPIFADRH	=	0xe6c4
                           00E6C5   749 _GPIFADRL	=	0xe6c5
                           00E6CE   750 _GPIFTCB3	=	0xe6ce
                           00E6CF   751 _GPIFTCB2	=	0xe6cf
                           00E6D0   752 _GPIFTCB1	=	0xe6d0
                           00E6D1   753 _GPIFTCB0	=	0xe6d1
                           00E6D2   754 _EP2GPIFFLGSEL	=	0xe6d2
                           00E6D3   755 _EP2GPIFPFSTOP	=	0xe6d3
                           00E6D4   756 _EP2GPIFTRIG	=	0xe6d4
                           00E6DA   757 _EP4GPIFFLGSEL	=	0xe6da
                           00E6DB   758 _EP4GPIFPFSTOP	=	0xe6db
                           00E6DC   759 _EP4GPIFTRIG	=	0xe6dc
                           00E6E2   760 _EP6GPIFFLGSEL	=	0xe6e2
                           00E6E3   761 _EP6GPIFPFSTOP	=	0xe6e3
                           00E6E4   762 _EP6GPIFTRIG	=	0xe6e4
                           00E6EA   763 _EP8GPIFFLGSEL	=	0xe6ea
                           00E6EB   764 _EP8GPIFPFSTOP	=	0xe6eb
                           00E6EC   765 _EP8GPIFTRIG	=	0xe6ec
                           00E6F0   766 _XGPIFSGLDATH	=	0xe6f0
                           00E6F1   767 _XGPIFSGLDATLX	=	0xe6f1
                           00E6F2   768 _XGPIFSGLDATLNOX	=	0xe6f2
                           00E6F3   769 _GPIFREADYCFG	=	0xe6f3
                           00E6F4   770 _GPIFREADYSTAT	=	0xe6f4
                           00E6F5   771 _GPIFABORT	=	0xe6f5
                           00E6C6   772 _FLOWSTATE	=	0xe6c6
                           00E6C7   773 _FLOWLOGIC	=	0xe6c7
                           00E6C8   774 _FLOWEQ0CTL	=	0xe6c8
                           00E6C9   775 _FLOWEQ1CTL	=	0xe6c9
                           00E6CA   776 _FLOWHOLDOFF	=	0xe6ca
                           00E6CB   777 _FLOWSTB	=	0xe6cb
                           00E6CC   778 _FLOWSTBEDGE	=	0xe6cc
                           00E6CD   779 _FLOWSTBHPERIOD	=	0xe6cd
                           00E60C   780 _GPIFHOLDAMOUNT	=	0xe60c
                           00E67D   781 _UDMACRCH	=	0xe67d
                           00E67E   782 _UDMACRCL	=	0xe67e
                           00E67F   783 _UDMACRCQUAL	=	0xe67f
                           00E6F8   784 _DBUG	=	0xe6f8
                           00E6F9   785 _TESTCFG	=	0xe6f9
                           00E6FA   786 _USBTEST	=	0xe6fa
                           00E6FB   787 _CT1	=	0xe6fb
                           00E6FC   788 _CT2	=	0xe6fc
                           00E6FD   789 _CT3	=	0xe6fd
                           00E6FE   790 _CT4	=	0xe6fe
                           00E740   791 _EP0BUF	=	0xe740
                           00E780   792 _EP1OUTBUF	=	0xe780
                           00E7C0   793 _EP1INBUF	=	0xe7c0
                           00F000   794 _EP2FIFOBUF	=	0xf000
                           00F400   795 _EP4FIFOBUF	=	0xf400
                           00F800   796 _EP6FIFOBUF	=	0xf800
                           00FC00   797 _EP8FIFOBUF	=	0xfc00
                           00E628   798 _ECCCFG	=	0xe628
                           00E629   799 _ECCRESET	=	0xe629
                           00E62A   800 _ECC1B0	=	0xe62a
                           00E62B   801 _ECC1B1	=	0xe62b
                           00E62C   802 _ECC1B2	=	0xe62c
                           00E62D   803 _ECC2B0	=	0xe62d
                           00E62E   804 _ECC2B1	=	0xe62e
                           00E62F   805 _ECC2B2	=	0xe62f
                           00E50D   806 _GPCR2	=	0xe50d
                                    807 ;--------------------------------------------------------
                                    808 ; absolute external ram data
                                    809 ;--------------------------------------------------------
                                    810 	.area XABS    (ABS,XDATA)
                                    811 ;--------------------------------------------------------
                                    812 ; external initialized ram data
                                    813 ;--------------------------------------------------------
                                    814 	.area XISEG   (XDATA)
                                    815 	.area HOME    (CODE)
                                    816 	.area GSINIT0 (CODE)
                                    817 	.area GSINIT1 (CODE)
                                    818 	.area GSINIT2 (CODE)
                                    819 	.area GSINIT3 (CODE)
                                    820 	.area GSINIT4 (CODE)
                                    821 	.area GSINIT5 (CODE)
                                    822 	.area GSINIT  (CODE)
                                    823 	.area GSFINAL (CODE)
                                    824 	.area CSEG    (CODE)
                                    825 ;--------------------------------------------------------
                                    826 ; global & static initialisations
                                    827 ;--------------------------------------------------------
                                    828 	.area HOME    (CODE)
                                    829 	.area GSINIT  (CODE)
                                    830 	.area GSFINAL (CODE)
                                    831 	.area GSINIT  (CODE)
                                    832 ;--------------------------------------------------------
                                    833 ; Home
                                    834 ;--------------------------------------------------------
                                    835 	.area HOME    (CODE)
                                    836 	.area HOME    (CODE)
                                    837 ;--------------------------------------------------------
                                    838 ; code
                                    839 ;--------------------------------------------------------
                                    840 	.area CSEG    (CODE)
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'TD_Init'
                                    843 ;------------------------------------------------------------
                                    844 ;	bulkloop.c:34: void TD_Init(void)             // Called once at startup
                                    845 ;	-----------------------------------------
                                    846 ;	 function TD_Init
                                    847 ;	-----------------------------------------
      000000                        848 _TD_Init:
                           000007   849 	ar7 = 0x07
                           000006   850 	ar6 = 0x06
                           000005   851 	ar5 = 0x05
                           000004   852 	ar4 = 0x04
                           000003   853 	ar3 = 0x03
                           000002   854 	ar2 = 0x02
                           000001   855 	ar1 = 0x01
                           000000   856 	ar0 = 0x00
                                    857 ;	bulkloop.c:37: CPUCS = ((CPUCS & ~bmCLKSPD) | bmCLKSPD1) ;
      000000 90 E6 00         [24]  858 	mov	dptr,#_CPUCS
      000003 E0               [24]  859 	movx	a,@dptr
      000004 54 E7            [12]  860 	anl	a,#0xe7
      000006 44 10            [12]  861 	orl	a,#0x10
      000008 F0               [24]  862 	movx	@dptr,a
                                    863 ;	bulkloop.c:40: IFCONFIG |= 0x40;
      000009 90 E6 01         [24]  864 	mov	dptr,#_IFCONFIG
      00000C E0               [24]  865 	movx	a,@dptr
      00000D 43 E0 40         [24]  866 	orl	acc,#0x40
      000010 F0               [24]  867 	movx	@dptr,a
                                    868 ;	bulkloop.c:66: EP1OUTCFG = 0xA0;
      000011 90 E6 10         [24]  869 	mov	dptr,#_EP1OUTCFG
      000014 74 A0            [12]  870 	mov	a,#0xa0
      000016 F0               [24]  871 	movx	@dptr,a
                                    872 ;	bulkloop.c:67: EP1INCFG = 0xA0;
      000017 90 E6 11         [24]  873 	mov	dptr,#_EP1INCFG
      00001A F0               [24]  874 	movx	@dptr,a
                                    875 ;	bulkloop.c:68: SYNCDELAY;                    // see TRM section 15.14
      00001B 00               [12]  876 	nop 
      00001C 00               [12]  877 	nop 
      00001D 00               [12]  878 	nop 
                                    879 ;	bulkloop.c:69: EP2CFG = 0xA2;
      00001E 90 E6 12         [24]  880 	mov	dptr,#_EP2CFG
      000021 74 A2            [12]  881 	mov	a,#0xa2
      000023 F0               [24]  882 	movx	@dptr,a
                                    883 ;	bulkloop.c:70: SYNCDELAY;                    
      000024 00               [12]  884 	nop 
      000025 00               [12]  885 	nop 
      000026 00               [12]  886 	nop 
                                    887 ;	bulkloop.c:71: EP4CFG = 0xA0;
      000027 90 E6 13         [24]  888 	mov	dptr,#_EP4CFG
      00002A 74 A0            [12]  889 	mov	a,#0xa0
      00002C F0               [24]  890 	movx	@dptr,a
                                    891 ;	bulkloop.c:72: SYNCDELAY;                    
      00002D 00               [12]  892 	nop 
      00002E 00               [12]  893 	nop 
      00002F 00               [12]  894 	nop 
                                    895 ;	bulkloop.c:73: EP6CFG = 0xE2;
      000030 90 E6 14         [24]  896 	mov	dptr,#_EP6CFG
      000033 74 E2            [12]  897 	mov	a,#0xe2
      000035 F0               [24]  898 	movx	@dptr,a
                                    899 ;	bulkloop.c:74: SYNCDELAY;                    
      000036 00               [12]  900 	nop 
      000037 00               [12]  901 	nop 
      000038 00               [12]  902 	nop 
                                    903 ;	bulkloop.c:75: EP8CFG = 0xE0;
      000039 90 E6 15         [24]  904 	mov	dptr,#_EP8CFG
      00003C 74 E0            [12]  905 	mov	a,#0xe0
      00003E F0               [24]  906 	movx	@dptr,a
                                    907 ;	bulkloop.c:80: SYNCDELAY;                    
      00003F 00               [12]  908 	nop 
      000040 00               [12]  909 	nop 
      000041 00               [12]  910 	nop 
                                    911 ;	bulkloop.c:81: EP2BCL = 0x80;                // arm EP2OUT by writing byte count w/skip.
      000042 90 E6 91         [24]  912 	mov	dptr,#_EP2BCL
      000045 74 80            [12]  913 	mov	a,#0x80
      000047 F0               [24]  914 	movx	@dptr,a
                                    915 ;	bulkloop.c:82: SYNCDELAY;                    
      000048 00               [12]  916 	nop 
      000049 00               [12]  917 	nop 
      00004A 00               [12]  918 	nop 
                                    919 ;	bulkloop.c:83: EP2BCL = 0x80;
      00004B 90 E6 91         [24]  920 	mov	dptr,#_EP2BCL
      00004E 74 80            [12]  921 	mov	a,#0x80
      000050 F0               [24]  922 	movx	@dptr,a
                                    923 ;	bulkloop.c:84: SYNCDELAY;                    
      000051 00               [12]  924 	nop 
      000052 00               [12]  925 	nop 
      000053 00               [12]  926 	nop 
                                    927 ;	bulkloop.c:85: EP4BCL = 0x80;                // arm EP4OUT by writing byte count w/skip.
      000054 90 E6 95         [24]  928 	mov	dptr,#_EP4BCL
      000057 74 80            [12]  929 	mov	a,#0x80
      000059 F0               [24]  930 	movx	@dptr,a
                                    931 ;	bulkloop.c:86: SYNCDELAY;                    
      00005A 00               [12]  932 	nop 
      00005B 00               [12]  933 	nop 
      00005C 00               [12]  934 	nop 
                                    935 ;	bulkloop.c:87: EP4BCL = 0x80;    
      00005D 90 E6 95         [24]  936 	mov	dptr,#_EP4BCL
      000060 74 80            [12]  937 	mov	a,#0x80
      000062 F0               [24]  938 	movx	@dptr,a
                                    939 ;	bulkloop.c:90: AUTOPTRSETUP |= 0x01;
      000063 43 AF 01         [24]  940 	orl	_AUTOPTRSETUP,#0x01
                                    941 ;	bulkloop.c:92: }
      000066 22               [24]  942 	ret
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function 'TD_Poll'
                                    945 ;------------------------------------------------------------
                                    946 ;i                         Allocated to registers r4 r5 
                                    947 ;count                     Allocated to registers r7 r6 
                                    948 ;------------------------------------------------------------
                                    949 ;	bulkloop.c:95: void TD_Poll(void)              // Called repeatedly while the device is idle
                                    950 ;	-----------------------------------------
                                    951 ;	 function TD_Poll
                                    952 ;	-----------------------------------------
      000067                        953 _TD_Poll:
                                    954 ;	bulkloop.c:100: if(!(EP2468STAT & bmEP2EMPTY))
      000067 E5 AA            [12]  955 	mov	a,_EP2468STAT
      000069 20 E0 5F         [24]  956 	jb	acc.0,00105$
                                    957 ;	bulkloop.c:102: if(!(EP2468STAT & bmEP6FULL))
      00006C E5 AA            [12]  958 	mov	a,_EP2468STAT
      00006E 20 E5 5A         [24]  959 	jb	acc.5,00105$
                                    960 ;	bulkloop.c:104: APTR1H = MSB( &EP2FIFOBUF );
      000071 7E 00            [12]  961 	mov	r6,#_EP2FIFOBUF
      000073 7F F0            [12]  962 	mov	r7,#(_EP2FIFOBUF >> 8)
      000075 8F 9A            [24]  963 	mov	_AUTOPTRH1,r7
                                    964 ;	bulkloop.c:105: APTR1L = LSB( &EP2FIFOBUF );
      000077 75 9B 00         [24]  965 	mov	_AUTOPTRL1,#_EP2FIFOBUF
                                    966 ;	bulkloop.c:107: AUTOPTRH2 = MSB( &EP6FIFOBUF );
      00007A 7E 00            [12]  967 	mov	r6,#_EP6FIFOBUF
      00007C 7F F8            [12]  968 	mov	r7,#(_EP6FIFOBUF >> 8)
      00007E 8F 9D            [24]  969 	mov	_AUTOPTRH2,r7
                                    970 ;	bulkloop.c:108: AUTOPTRL2 = LSB( &EP6FIFOBUF );
      000080 75 9E 00         [24]  971 	mov	_AUTOPTRL2,#_EP6FIFOBUF
                                    972 ;	bulkloop.c:110: count = (EP2BCH << 8) + EP2BCL;
      000083 90 E6 90         [24]  973 	mov	dptr,#_EP2BCH
      000086 E0               [24]  974 	movx	a,@dptr
      000087 FE               [12]  975 	mov	r6,a
      000088 7F 00            [12]  976 	mov	r7,#0x00
      00008A 90 E6 91         [24]  977 	mov	dptr,#_EP2BCL
      00008D E0               [24]  978 	movx	a,@dptr
      00008E 7C 00            [12]  979 	mov	r4,#0x00
      000090 2F               [12]  980 	add	a,r7
      000091 FF               [12]  981 	mov	r7,a
      000092 EC               [12]  982 	mov	a,r4
      000093 3E               [12]  983 	addc	a,r6
      000094 FE               [12]  984 	mov	r6,a
                                    985 ;	bulkloop.c:113: for( i = 0x0000; i < count; i++ )
      000095 7C 00            [12]  986 	mov	r4,#0x00
      000097 7D 00            [12]  987 	mov	r5,#0x00
      000099                        988 00112$:
      000099 C3               [12]  989 	clr	c
      00009A EC               [12]  990 	mov	a,r4
      00009B 9F               [12]  991 	subb	a,r7
      00009C ED               [12]  992 	mov	a,r5
      00009D 9E               [12]  993 	subb	a,r6
      00009E 50 0F            [24]  994 	jnc	00101$
                                    995 ;	bulkloop.c:116: EXTAUTODAT2 = EXTAUTODAT1;
      0000A0 90 E6 7B         [24]  996 	mov	dptr,#_XAUTODAT1
      0000A3 E0               [24]  997 	movx	a,@dptr
      0000A4 90 E6 7C         [24]  998 	mov	dptr,#_XAUTODAT2
      0000A7 F0               [24]  999 	movx	@dptr,a
                                   1000 ;	bulkloop.c:113: for( i = 0x0000; i < count; i++ )
      0000A8 0C               [12] 1001 	inc	r4
      0000A9 BC 00 ED         [24] 1002 	cjne	r4,#0x00,00112$
      0000AC 0D               [12] 1003 	inc	r5
      0000AD 80 EA            [24] 1004 	sjmp	00112$
      0000AF                       1005 00101$:
                                   1006 ;	bulkloop.c:118: EP6BCH = EP2BCH;  
      0000AF 90 E6 90         [24] 1007 	mov	dptr,#_EP2BCH
      0000B2 E0               [24] 1008 	movx	a,@dptr
      0000B3 90 E6 98         [24] 1009 	mov	dptr,#_EP6BCH
      0000B6 F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	bulkloop.c:119: SYNCDELAY;  
      0000B7 00               [12] 1012 	nop 
      0000B8 00               [12] 1013 	nop 
      0000B9 00               [12] 1014 	nop 
                                   1015 ;	bulkloop.c:120: EP6BCL = EP2BCL;        // arm EP6IN
      0000BA 90 E6 91         [24] 1016 	mov	dptr,#_EP2BCL
      0000BD E0               [24] 1017 	movx	a,@dptr
      0000BE 90 E6 99         [24] 1018 	mov	dptr,#_EP6BCL
      0000C1 F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	bulkloop.c:121: SYNCDELAY;                    
      0000C2 00               [12] 1021 	nop 
      0000C3 00               [12] 1022 	nop 
      0000C4 00               [12] 1023 	nop 
                                   1024 ;	bulkloop.c:122: EP2BCL = 0x80;          // re(arm) EP2OUT
      0000C5 90 E6 91         [24] 1025 	mov	dptr,#_EP2BCL
      0000C8 74 80            [12] 1026 	mov	a,#0x80
      0000CA F0               [24] 1027 	movx	@dptr,a
      0000CB                       1028 00105$:
                                   1029 ;	bulkloop.c:126: if(!(EP2468STAT & bmEP4EMPTY))
      0000CB E5 AA            [12] 1030 	mov	a,_EP2468STAT
      0000CD 20 E2 5F         [24] 1031 	jb	acc.2,00117$
                                   1032 ;	bulkloop.c:128: if(!(EP2468STAT & bmEP8FULL))
      0000D0 E5 AA            [12] 1033 	mov	a,_EP2468STAT
      0000D2 20 E7 5A         [24] 1034 	jb	acc.7,00117$
                                   1035 ;	bulkloop.c:130: APTR1H = MSB( &EP4FIFOBUF );
      0000D5 7E 00            [12] 1036 	mov	r6,#_EP4FIFOBUF
      0000D7 7F F4            [12] 1037 	mov	r7,#(_EP4FIFOBUF >> 8)
      0000D9 8F 9A            [24] 1038 	mov	_AUTOPTRH1,r7
                                   1039 ;	bulkloop.c:131: APTR1L = LSB( &EP4FIFOBUF );
      0000DB 75 9B 00         [24] 1040 	mov	_AUTOPTRL1,#_EP4FIFOBUF
                                   1041 ;	bulkloop.c:133: AUTOPTRH2 = MSB( &EP8FIFOBUF );
      0000DE 7E 00            [12] 1042 	mov	r6,#_EP8FIFOBUF
      0000E0 7F FC            [12] 1043 	mov	r7,#(_EP8FIFOBUF >> 8)
      0000E2 8F 9D            [24] 1044 	mov	_AUTOPTRH2,r7
                                   1045 ;	bulkloop.c:134: AUTOPTRL2 = LSB( &EP8FIFOBUF );
      0000E4 75 9E 00         [24] 1046 	mov	_AUTOPTRL2,#_EP8FIFOBUF
                                   1047 ;	bulkloop.c:136: count = (EP4BCH << 8) + EP4BCL;
      0000E7 90 E6 94         [24] 1048 	mov	dptr,#_EP4BCH
      0000EA E0               [24] 1049 	movx	a,@dptr
      0000EB FE               [12] 1050 	mov	r6,a
      0000EC 7F 00            [12] 1051 	mov	r7,#0x00
      0000EE 90 E6 95         [24] 1052 	mov	dptr,#_EP4BCL
      0000F1 E0               [24] 1053 	movx	a,@dptr
      0000F2 7C 00            [12] 1054 	mov	r4,#0x00
      0000F4 2F               [12] 1055 	add	a,r7
      0000F5 FF               [12] 1056 	mov	r7,a
      0000F6 EC               [12] 1057 	mov	a,r4
      0000F7 3E               [12] 1058 	addc	a,r6
      0000F8 FE               [12] 1059 	mov	r6,a
                                   1060 ;	bulkloop.c:139: for( i = 0x0000; i < count; i++ )
      0000F9 7C 00            [12] 1061 	mov	r4,#0x00
      0000FB 7D 00            [12] 1062 	mov	r5,#0x00
      0000FD                       1063 00115$:
      0000FD C3               [12] 1064 	clr	c
      0000FE EC               [12] 1065 	mov	a,r4
      0000FF 9F               [12] 1066 	subb	a,r7
      000100 ED               [12] 1067 	mov	a,r5
      000101 9E               [12] 1068 	subb	a,r6
      000102 50 0F            [24] 1069 	jnc	00106$
                                   1070 ;	bulkloop.c:142: EXTAUTODAT2 = EXTAUTODAT1;
      000104 90 E6 7B         [24] 1071 	mov	dptr,#_XAUTODAT1
      000107 E0               [24] 1072 	movx	a,@dptr
      000108 90 E6 7C         [24] 1073 	mov	dptr,#_XAUTODAT2
      00010B F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	bulkloop.c:139: for( i = 0x0000; i < count; i++ )
      00010C 0C               [12] 1076 	inc	r4
      00010D BC 00 ED         [24] 1077 	cjne	r4,#0x00,00115$
      000110 0D               [12] 1078 	inc	r5
      000111 80 EA            [24] 1079 	sjmp	00115$
      000113                       1080 00106$:
                                   1081 ;	bulkloop.c:144: EP8BCH = EP4BCH;  
      000113 90 E6 94         [24] 1082 	mov	dptr,#_EP4BCH
      000116 E0               [24] 1083 	movx	a,@dptr
      000117 90 E6 9C         [24] 1084 	mov	dptr,#_EP8BCH
      00011A F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	bulkloop.c:145: SYNCDELAY;  
      00011B 00               [12] 1087 	nop 
      00011C 00               [12] 1088 	nop 
      00011D 00               [12] 1089 	nop 
                                   1090 ;	bulkloop.c:146: EP8BCL = EP4BCL;        // arm EP8IN
      00011E 90 E6 95         [24] 1091 	mov	dptr,#_EP4BCL
      000121 E0               [24] 1092 	movx	a,@dptr
      000122 90 E6 9D         [24] 1093 	mov	dptr,#_EP8BCL
      000125 F0               [24] 1094 	movx	@dptr,a
                                   1095 ;	bulkloop.c:147: SYNCDELAY;                    
      000126 00               [12] 1096 	nop 
      000127 00               [12] 1097 	nop 
      000128 00               [12] 1098 	nop 
                                   1099 ;	bulkloop.c:148: EP4BCL = 0x80;          // re(arm) EP4OUT
      000129 90 E6 95         [24] 1100 	mov	dptr,#_EP4BCL
      00012C 74 80            [12] 1101 	mov	a,#0x80
      00012E F0               [24] 1102 	movx	@dptr,a
      00012F                       1103 00117$:
                                   1104 ;	bulkloop.c:151: }
      00012F 22               [24] 1105 	ret
                                   1106 ;------------------------------------------------------------
                                   1107 ;Allocation info for local variables in function 'TD_Suspend'
                                   1108 ;------------------------------------------------------------
                                   1109 ;	bulkloop.c:153: BOOL TD_Suspend(void)          // Called before the device goes into suspend mode
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function TD_Suspend
                                   1112 ;	-----------------------------------------
      000130                       1113 _TD_Suspend:
                                   1114 ;	bulkloop.c:155: return(TRUE);
      000130 D3               [12] 1115 	setb	c
                                   1116 ;	bulkloop.c:156: }
      000131 22               [24] 1117 	ret
                                   1118 ;------------------------------------------------------------
                                   1119 ;Allocation info for local variables in function 'TD_Resume'
                                   1120 ;------------------------------------------------------------
                                   1121 ;	bulkloop.c:158: BOOL TD_Resume(void)          // Called after the device resumes
                                   1122 ;	-----------------------------------------
                                   1123 ;	 function TD_Resume
                                   1124 ;	-----------------------------------------
      000132                       1125 _TD_Resume:
                                   1126 ;	bulkloop.c:160: return(TRUE);
      000132 D3               [12] 1127 	setb	c
                                   1128 ;	bulkloop.c:161: }
      000133 22               [24] 1129 	ret
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'DR_GetDescriptor'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	bulkloop.c:168: BOOL DR_GetDescriptor(void)
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function DR_GetDescriptor
                                   1136 ;	-----------------------------------------
      000134                       1137 _DR_GetDescriptor:
                                   1138 ;	bulkloop.c:170: return(TRUE);
      000134 D3               [12] 1139 	setb	c
                                   1140 ;	bulkloop.c:171: }
      000135 22               [24] 1141 	ret
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'DR_SetConfiguration'
                                   1144 ;------------------------------------------------------------
                                   1145 ;	bulkloop.c:173: BOOL DR_SetConfiguration(void)   // Called when a Set Configuration command is received
                                   1146 ;	-----------------------------------------
                                   1147 ;	 function DR_SetConfiguration
                                   1148 ;	-----------------------------------------
      000136                       1149 _DR_SetConfiguration:
                                   1150 ;	bulkloop.c:175: Configuration = SETUPDAT[2];
      000136 90 E6 BA         [24] 1151 	mov	dptr,#(_SETUPDAT + 0x0002)
      000139 E0               [24] 1152 	movx	a,@dptr
      00013A F5*00            [12] 1153 	mov	_Configuration,a
                                   1154 ;	bulkloop.c:176: return(TRUE);            // Handled by user code
      00013C D3               [12] 1155 	setb	c
                                   1156 ;	bulkloop.c:177: }
      00013D 22               [24] 1157 	ret
                                   1158 ;------------------------------------------------------------
                                   1159 ;Allocation info for local variables in function 'DR_GetConfiguration'
                                   1160 ;------------------------------------------------------------
                                   1161 ;	bulkloop.c:179: BOOL DR_GetConfiguration(void)   // Called when a Get Configuration command is received
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function DR_GetConfiguration
                                   1164 ;	-----------------------------------------
      00013E                       1165 _DR_GetConfiguration:
                                   1166 ;	bulkloop.c:181: EP0BUF[0] = Configuration;
      00013E 90 E7 40         [24] 1167 	mov	dptr,#_EP0BUF
      000141 E5*00            [12] 1168 	mov	a,_Configuration
      000143 F0               [24] 1169 	movx	@dptr,a
                                   1170 ;	bulkloop.c:182: EP0BCH = 0;
      000144 90 E6 8A         [24] 1171 	mov	dptr,#_EP0BCH
      000147 E4               [12] 1172 	clr	a
      000148 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	bulkloop.c:183: EP0BCL = 1;
      000149 90 E6 8B         [24] 1175 	mov	dptr,#_EP0BCL
      00014C 04               [12] 1176 	inc	a
      00014D F0               [24] 1177 	movx	@dptr,a
                                   1178 ;	bulkloop.c:184: return(TRUE);            // Handled by user code
      00014E D3               [12] 1179 	setb	c
                                   1180 ;	bulkloop.c:185: }
      00014F 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'DR_SetInterface'
                                   1184 ;------------------------------------------------------------
                                   1185 ;	bulkloop.c:187: BOOL DR_SetInterface(void)       // Called when a Set Interface command is received
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function DR_SetInterface
                                   1188 ;	-----------------------------------------
      000150                       1189 _DR_SetInterface:
                                   1190 ;	bulkloop.c:189: AlternateSetting = SETUPDAT[2];
      000150 90 E6 BA         [24] 1191 	mov	dptr,#(_SETUPDAT + 0x0002)
      000153 E0               [24] 1192 	movx	a,@dptr
      000154 F5*01            [12] 1193 	mov	_AlternateSetting,a
                                   1194 ;	bulkloop.c:190: return(TRUE);            // Handled by user code
      000156 D3               [12] 1195 	setb	c
                                   1196 ;	bulkloop.c:191: }
      000157 22               [24] 1197 	ret
                                   1198 ;------------------------------------------------------------
                                   1199 ;Allocation info for local variables in function 'DR_GetInterface'
                                   1200 ;------------------------------------------------------------
                                   1201 ;	bulkloop.c:193: BOOL DR_GetInterface(void)       // Called when a Set Interface command is received
                                   1202 ;	-----------------------------------------
                                   1203 ;	 function DR_GetInterface
                                   1204 ;	-----------------------------------------
      000158                       1205 _DR_GetInterface:
                                   1206 ;	bulkloop.c:195: EP0BUF[0] = AlternateSetting;
      000158 90 E7 40         [24] 1207 	mov	dptr,#_EP0BUF
      00015B E5*01            [12] 1208 	mov	a,_AlternateSetting
      00015D F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	bulkloop.c:196: EP0BCH = 0;
      00015E 90 E6 8A         [24] 1211 	mov	dptr,#_EP0BCH
      000161 E4               [12] 1212 	clr	a
      000162 F0               [24] 1213 	movx	@dptr,a
                                   1214 ;	bulkloop.c:197: EP0BCL = 1;
      000163 90 E6 8B         [24] 1215 	mov	dptr,#_EP0BCL
      000166 04               [12] 1216 	inc	a
      000167 F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	bulkloop.c:198: return(TRUE);            // Handled by user code
      000168 D3               [12] 1219 	setb	c
                                   1220 ;	bulkloop.c:199: }
      000169 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'DR_GetStatus'
                                   1224 ;------------------------------------------------------------
                                   1225 ;	bulkloop.c:201: BOOL DR_GetStatus(void)
                                   1226 ;	-----------------------------------------
                                   1227 ;	 function DR_GetStatus
                                   1228 ;	-----------------------------------------
      00016A                       1229 _DR_GetStatus:
                                   1230 ;	bulkloop.c:203: return(TRUE);
      00016A D3               [12] 1231 	setb	c
                                   1232 ;	bulkloop.c:204: }
      00016B 22               [24] 1233 	ret
                                   1234 ;------------------------------------------------------------
                                   1235 ;Allocation info for local variables in function 'DR_ClearFeature'
                                   1236 ;------------------------------------------------------------
                                   1237 ;	bulkloop.c:206: BOOL DR_ClearFeature(void)
                                   1238 ;	-----------------------------------------
                                   1239 ;	 function DR_ClearFeature
                                   1240 ;	-----------------------------------------
      00016C                       1241 _DR_ClearFeature:
                                   1242 ;	bulkloop.c:208: return(TRUE);
      00016C D3               [12] 1243 	setb	c
                                   1244 ;	bulkloop.c:209: }
      00016D 22               [24] 1245 	ret
                                   1246 ;------------------------------------------------------------
                                   1247 ;Allocation info for local variables in function 'DR_SetFeature'
                                   1248 ;------------------------------------------------------------
                                   1249 ;	bulkloop.c:211: BOOL DR_SetFeature(void)
                                   1250 ;	-----------------------------------------
                                   1251 ;	 function DR_SetFeature
                                   1252 ;	-----------------------------------------
      00016E                       1253 _DR_SetFeature:
                                   1254 ;	bulkloop.c:213: return(TRUE);
      00016E D3               [12] 1255 	setb	c
                                   1256 ;	bulkloop.c:214: }
      00016F 22               [24] 1257 	ret
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'DR_VendorCmnd'
                                   1260 ;------------------------------------------------------------
                                   1261 ;tmp                       Allocated to registers 
                                   1262 ;------------------------------------------------------------
                                   1263 ;	bulkloop.c:216: BOOL DR_VendorCmnd(void)
                                   1264 ;	-----------------------------------------
                                   1265 ;	 function DR_VendorCmnd
                                   1266 ;	-----------------------------------------
      000170                       1267 _DR_VendorCmnd:
                                   1268 ;	bulkloop.c:220: switch (SETUPDAT[1])
      000170 90 E6 B9         [24] 1269 	mov	dptr,#(_SETUPDAT + 0x0001)
      000173 E0               [24] 1270 	movx	a,@dptr
      000174 FF               [12] 1271 	mov	r7,a
      000175 BF D0 02         [24] 1272 	cjne	r7,#0xd0,00117$
      000178 80 05            [24] 1273 	sjmp	00101$
      00017A                       1274 00117$:
                                   1275 ;	bulkloop.c:222: case VR_NAKALL_ON:
      00017A BF D1 24         [24] 1276 	cjne	r7,#0xd1,00103$
      00017D 80 11            [24] 1277 	sjmp	00102$
      00017F                       1278 00101$:
                                   1279 ;	bulkloop.c:223: tmp = FIFORESET;
      00017F 90 E6 04         [24] 1280 	mov	dptr,#_FIFORESET
      000182 E0               [24] 1281 	movx	a,@dptr
                                   1282 ;	bulkloop.c:224: tmp |= bmNAKALL;      
      000183 44 80            [12] 1283 	orl	a,#0x80
      000185 FF               [12] 1284 	mov	r7,a
                                   1285 ;	bulkloop.c:225: SYNCDELAY;                    
      000186 00               [12] 1286 	nop 
      000187 00               [12] 1287 	nop 
      000188 00               [12] 1288 	nop 
                                   1289 ;	bulkloop.c:226: FIFORESET = tmp;
      000189 90 E6 04         [24] 1290 	mov	dptr,#_FIFORESET
      00018C EF               [12] 1291 	mov	a,r7
      00018D F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	bulkloop.c:227: break;
                                   1294 ;	bulkloop.c:228: case VR_NAKALL_OFF:
      00018E 80 13            [24] 1295 	sjmp	00104$
      000190                       1296 00102$:
                                   1297 ;	bulkloop.c:229: tmp = FIFORESET;
      000190 90 E6 04         [24] 1298 	mov	dptr,#_FIFORESET
      000193 E0               [24] 1299 	movx	a,@dptr
                                   1300 ;	bulkloop.c:230: tmp &= ~bmNAKALL;      
      000194 54 7F            [12] 1301 	anl	a,#0x7f
      000196 FF               [12] 1302 	mov	r7,a
                                   1303 ;	bulkloop.c:231: SYNCDELAY;                    
      000197 00               [12] 1304 	nop 
      000198 00               [12] 1305 	nop 
      000199 00               [12] 1306 	nop 
                                   1307 ;	bulkloop.c:232: FIFORESET = tmp;
      00019A 90 E6 04         [24] 1308 	mov	dptr,#_FIFORESET
      00019D EF               [12] 1309 	mov	a,r7
      00019E F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	bulkloop.c:233: break;
                                   1312 ;	bulkloop.c:234: default:
      00019F 80 02            [24] 1313 	sjmp	00104$
      0001A1                       1314 00103$:
                                   1315 ;	bulkloop.c:235: return(TRUE);
      0001A1 D3               [12] 1316 	setb	c
                                   1317 ;	bulkloop.c:236: }
      0001A2 22               [24] 1318 	ret
      0001A3                       1319 00104$:
                                   1320 ;	bulkloop.c:238: return(FALSE);
      0001A3 C3               [12] 1321 	clr	c
                                   1322 ;	bulkloop.c:239: }
      0001A4 22               [24] 1323 	ret
                                   1324 ;------------------------------------------------------------
                                   1325 ;Allocation info for local variables in function 'ISR_Sudav'
                                   1326 ;------------------------------------------------------------
                                   1327 ;	bulkloop.c:247: void ISR_Sudav(void) __interrupt 0
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function ISR_Sudav
                                   1330 ;	-----------------------------------------
      0001A5                       1331 _ISR_Sudav:
      0001A5 C0 E0            [24] 1332 	push	acc
      0001A7 C0 82            [24] 1333 	push	dpl
      0001A9 C0 83            [24] 1334 	push	dph
                                   1335 ;	bulkloop.c:249: GotSUD = TRUE;            // Set flag
                                   1336 ;	assignBit
      0001AB D2*00            [12] 1337 	setb	_GotSUD
                                   1338 ;	bulkloop.c:250: EZUSB_IRQ_CLEAR();
      0001AD 53 91 EF         [24] 1339 	anl	_EXIF,#0xef
                                   1340 ;	bulkloop.c:251: USBIRQ = bmSUDAV;         // Clear SUDAV IRQ
      0001B0 90 E6 5D         [24] 1341 	mov	dptr,#_USBIRQ
      0001B3 74 01            [12] 1342 	mov	a,#0x01
      0001B5 F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	bulkloop.c:252: }
      0001B6 D0 83            [24] 1345 	pop	dph
      0001B8 D0 82            [24] 1346 	pop	dpl
      0001BA D0 E0            [24] 1347 	pop	acc
      0001BC 32               [24] 1348 	reti
                                   1349 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1350 ;	eliminated unneeded push/pop psw
                                   1351 ;	eliminated unneeded push/pop b
                                   1352 ;------------------------------------------------------------
                                   1353 ;Allocation info for local variables in function 'ISR_Sutok'
                                   1354 ;------------------------------------------------------------
                                   1355 ;	bulkloop.c:255: void ISR_Sutok(void) __interrupt 0
                                   1356 ;	-----------------------------------------
                                   1357 ;	 function ISR_Sutok
                                   1358 ;	-----------------------------------------
      0001BD                       1359 _ISR_Sutok:
      0001BD C0 E0            [24] 1360 	push	acc
      0001BF C0 82            [24] 1361 	push	dpl
      0001C1 C0 83            [24] 1362 	push	dph
                                   1363 ;	bulkloop.c:257: EZUSB_IRQ_CLEAR();
      0001C3 53 91 EF         [24] 1364 	anl	_EXIF,#0xef
                                   1365 ;	bulkloop.c:258: USBIRQ = bmSUTOK;         // Clear SUTOK IRQ
      0001C6 90 E6 5D         [24] 1366 	mov	dptr,#_USBIRQ
      0001C9 74 04            [12] 1367 	mov	a,#0x04
      0001CB F0               [24] 1368 	movx	@dptr,a
                                   1369 ;	bulkloop.c:259: }
      0001CC D0 83            [24] 1370 	pop	dph
      0001CE D0 82            [24] 1371 	pop	dpl
      0001D0 D0 E0            [24] 1372 	pop	acc
      0001D2 32               [24] 1373 	reti
                                   1374 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1375 ;	eliminated unneeded push/pop psw
                                   1376 ;	eliminated unneeded push/pop b
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'ISR_Sof'
                                   1379 ;------------------------------------------------------------
                                   1380 ;	bulkloop.c:261: void ISR_Sof(void) __interrupt 0
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function ISR_Sof
                                   1383 ;	-----------------------------------------
      0001D3                       1384 _ISR_Sof:
      0001D3 C0 E0            [24] 1385 	push	acc
      0001D5 C0 82            [24] 1386 	push	dpl
      0001D7 C0 83            [24] 1387 	push	dph
                                   1388 ;	bulkloop.c:263: EZUSB_IRQ_CLEAR();
      0001D9 53 91 EF         [24] 1389 	anl	_EXIF,#0xef
                                   1390 ;	bulkloop.c:264: USBIRQ = bmSOF;            // Clear SOF IRQ
      0001DC 90 E6 5D         [24] 1391 	mov	dptr,#_USBIRQ
      0001DF 74 02            [12] 1392 	mov	a,#0x02
      0001E1 F0               [24] 1393 	movx	@dptr,a
                                   1394 ;	bulkloop.c:265: }
      0001E2 D0 83            [24] 1395 	pop	dph
      0001E4 D0 82            [24] 1396 	pop	dpl
      0001E6 D0 E0            [24] 1397 	pop	acc
      0001E8 32               [24] 1398 	reti
                                   1399 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1400 ;	eliminated unneeded push/pop psw
                                   1401 ;	eliminated unneeded push/pop b
                                   1402 ;------------------------------------------------------------
                                   1403 ;Allocation info for local variables in function 'ISR_Ures'
                                   1404 ;------------------------------------------------------------
                                   1405 ;	bulkloop.c:267: void ISR_Ures(void) __interrupt 0
                                   1406 ;	-----------------------------------------
                                   1407 ;	 function ISR_Ures
                                   1408 ;	-----------------------------------------
      0001E9                       1409 _ISR_Ures:
      0001E9 C0 E0            [24] 1410 	push	acc
      0001EB C0 82            [24] 1411 	push	dpl
      0001ED C0 83            [24] 1412 	push	dph
      0001EF C0 07            [24] 1413 	push	ar7
      0001F1 C0 06            [24] 1414 	push	ar6
      0001F3 C0 D0            [24] 1415 	push	psw
      0001F5 75 D0 00         [24] 1416 	mov	psw,#0x00
                                   1417 ;	bulkloop.c:270: pConfigDscr = pFullSpeedConfigDscr;
      0001F8 85*00*00         [24] 1418 	mov	_pConfigDscr,_pFullSpeedConfigDscr
      0001FB 85*01*01         [24] 1419 	mov	(_pConfigDscr + 1),(_pFullSpeedConfigDscr + 1)
                                   1420 ;	bulkloop.c:271: ((CONFIGDSCR __xdata *) pConfigDscr)->type = CONFIG_DSCR;
      0001FE AE*00            [24] 1421 	mov	r6,_pConfigDscr
      000200 AF*01            [24] 1422 	mov	r7,(_pConfigDscr + 1)
      000202 8E 82            [24] 1423 	mov	dpl,r6
      000204 8F 83            [24] 1424 	mov	dph,r7
      000206 A3               [24] 1425 	inc	dptr
      000207 74 02            [12] 1426 	mov	a,#0x02
      000209 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	bulkloop.c:272: pOtherConfigDscr = pHighSpeedConfigDscr;
      00020A 85*00*00         [24] 1429 	mov	_pOtherConfigDscr,_pHighSpeedConfigDscr
      00020D 85*01*01         [24] 1430 	mov	(_pOtherConfigDscr + 1),(_pHighSpeedConfigDscr + 1)
                                   1431 ;	bulkloop.c:273: ((CONFIGDSCR __xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
      000210 AE*00            [24] 1432 	mov	r6,_pOtherConfigDscr
      000212 AF*01            [24] 1433 	mov	r7,(_pOtherConfigDscr + 1)
      000214 8E 82            [24] 1434 	mov	dpl,r6
      000216 8F 83            [24] 1435 	mov	dph,r7
      000218 A3               [24] 1436 	inc	dptr
      000219 74 07            [12] 1437 	mov	a,#0x07
      00021B F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	bulkloop.c:275: EZUSB_IRQ_CLEAR();
      00021C 53 91 EF         [24] 1440 	anl	_EXIF,#0xef
                                   1441 ;	bulkloop.c:276: USBIRQ = bmURES;         // Clear URES IRQ
      00021F 90 E6 5D         [24] 1442 	mov	dptr,#_USBIRQ
      000222 74 10            [12] 1443 	mov	a,#0x10
      000224 F0               [24] 1444 	movx	@dptr,a
                                   1445 ;	bulkloop.c:277: }
      000225 D0 D0            [24] 1446 	pop	psw
      000227 D0 06            [24] 1447 	pop	ar6
      000229 D0 07            [24] 1448 	pop	ar7
      00022B D0 83            [24] 1449 	pop	dph
      00022D D0 82            [24] 1450 	pop	dpl
      00022F D0 E0            [24] 1451 	pop	acc
      000231 32               [24] 1452 	reti
                                   1453 ;	eliminated unneeded push/pop b
                                   1454 ;------------------------------------------------------------
                                   1455 ;Allocation info for local variables in function 'ISR_Susp'
                                   1456 ;------------------------------------------------------------
                                   1457 ;	bulkloop.c:279: void ISR_Susp(void) __interrupt 0
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function ISR_Susp
                                   1460 ;	-----------------------------------------
      000232                       1461 _ISR_Susp:
      000232 C0 E0            [24] 1462 	push	acc
      000234 C0 82            [24] 1463 	push	dpl
      000236 C0 83            [24] 1464 	push	dph
                                   1465 ;	bulkloop.c:281: Sleep = TRUE;
                                   1466 ;	assignBit
      000238 D2*00            [12] 1467 	setb	_Sleep
                                   1468 ;	bulkloop.c:282: EZUSB_IRQ_CLEAR();
      00023A 53 91 EF         [24] 1469 	anl	_EXIF,#0xef
                                   1470 ;	bulkloop.c:283: USBIRQ = bmSUSP;
      00023D 90 E6 5D         [24] 1471 	mov	dptr,#_USBIRQ
      000240 74 08            [12] 1472 	mov	a,#0x08
      000242 F0               [24] 1473 	movx	@dptr,a
                                   1474 ;	bulkloop.c:284: }
      000243 D0 83            [24] 1475 	pop	dph
      000245 D0 82            [24] 1476 	pop	dpl
      000247 D0 E0            [24] 1477 	pop	acc
      000249 32               [24] 1478 	reti
                                   1479 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1480 ;	eliminated unneeded push/pop psw
                                   1481 ;	eliminated unneeded push/pop b
                                   1482 ;------------------------------------------------------------
                                   1483 ;Allocation info for local variables in function 'ISR_Highspeed'
                                   1484 ;------------------------------------------------------------
                                   1485 ;	bulkloop.c:286: void ISR_Highspeed(void) __interrupt 0
                                   1486 ;	-----------------------------------------
                                   1487 ;	 function ISR_Highspeed
                                   1488 ;	-----------------------------------------
      00024A                       1489 _ISR_Highspeed:
      00024A C0 E0            [24] 1490 	push	acc
      00024C C0 82            [24] 1491 	push	dpl
      00024E C0 83            [24] 1492 	push	dph
      000250 C0 07            [24] 1493 	push	ar7
      000252 C0 06            [24] 1494 	push	ar6
      000254 C0 D0            [24] 1495 	push	psw
      000256 75 D0 00         [24] 1496 	mov	psw,#0x00
                                   1497 ;	bulkloop.c:288: if (EZUSB_HIGHSPEED())
      000259 90 E6 80         [24] 1498 	mov	dptr,#_USBCS
      00025C E0               [24] 1499 	movx	a,@dptr
      00025D 30 E7 24         [24] 1500 	jnb	acc.7,00102$
                                   1501 ;	bulkloop.c:290: pConfigDscr = pHighSpeedConfigDscr;
      000260 85*00*00         [24] 1502 	mov	_pConfigDscr,_pHighSpeedConfigDscr
      000263 85*01*01         [24] 1503 	mov	(_pConfigDscr + 1),(_pHighSpeedConfigDscr + 1)
                                   1504 ;	bulkloop.c:291: ((CONFIGDSCR __xdata *) pConfigDscr)->type = CONFIG_DSCR;
      000266 AE*00            [24] 1505 	mov	r6,_pConfigDscr
      000268 AF*01            [24] 1506 	mov	r7,(_pConfigDscr + 1)
      00026A 8E 82            [24] 1507 	mov	dpl,r6
      00026C 8F 83            [24] 1508 	mov	dph,r7
      00026E A3               [24] 1509 	inc	dptr
      00026F 74 02            [12] 1510 	mov	a,#0x02
      000271 F0               [24] 1511 	movx	@dptr,a
                                   1512 ;	bulkloop.c:292: pOtherConfigDscr = pFullSpeedConfigDscr;
      000272 85*00*00         [24] 1513 	mov	_pOtherConfigDscr,_pFullSpeedConfigDscr
      000275 85*01*01         [24] 1514 	mov	(_pOtherConfigDscr + 1),(_pFullSpeedConfigDscr + 1)
                                   1515 ;	bulkloop.c:293: ((CONFIGDSCR __xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
      000278 AE*00            [24] 1516 	mov	r6,_pOtherConfigDscr
      00027A AF*01            [24] 1517 	mov	r7,(_pOtherConfigDscr + 1)
      00027C 8E 82            [24] 1518 	mov	dpl,r6
      00027E 8F 83            [24] 1519 	mov	dph,r7
      000280 A3               [24] 1520 	inc	dptr
      000281 74 07            [12] 1521 	mov	a,#0x07
      000283 F0               [24] 1522 	movx	@dptr,a
      000284                       1523 00102$:
                                   1524 ;	bulkloop.c:296: EZUSB_IRQ_CLEAR();
      000284 53 91 EF         [24] 1525 	anl	_EXIF,#0xef
                                   1526 ;	bulkloop.c:297: USBIRQ = bmHSGRANT;
      000287 90 E6 5D         [24] 1527 	mov	dptr,#_USBIRQ
      00028A 74 20            [12] 1528 	mov	a,#0x20
      00028C F0               [24] 1529 	movx	@dptr,a
                                   1530 ;	bulkloop.c:298: }
      00028D D0 D0            [24] 1531 	pop	psw
      00028F D0 06            [24] 1532 	pop	ar6
      000291 D0 07            [24] 1533 	pop	ar7
      000293 D0 83            [24] 1534 	pop	dph
      000295 D0 82            [24] 1535 	pop	dpl
      000297 D0 E0            [24] 1536 	pop	acc
      000299 32               [24] 1537 	reti
                                   1538 ;	eliminated unneeded push/pop b
                                   1539 ;------------------------------------------------------------
                                   1540 ;Allocation info for local variables in function 'ISR_Ep0ack'
                                   1541 ;------------------------------------------------------------
                                   1542 ;	bulkloop.c:299: void ISR_Ep0ack(void) __interrupt 0
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function ISR_Ep0ack
                                   1545 ;	-----------------------------------------
      00029A                       1546 _ISR_Ep0ack:
                                   1547 ;	bulkloop.c:301: }
      00029A 32               [24] 1548 	reti
                                   1549 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1550 ;	eliminated unneeded push/pop psw
                                   1551 ;	eliminated unneeded push/pop dpl
                                   1552 ;	eliminated unneeded push/pop dph
                                   1553 ;	eliminated unneeded push/pop b
                                   1554 ;	eliminated unneeded push/pop acc
                                   1555 ;------------------------------------------------------------
                                   1556 ;Allocation info for local variables in function 'ISR_Stub'
                                   1557 ;------------------------------------------------------------
                                   1558 ;	bulkloop.c:302: void ISR_Stub(void) __interrupt 0
                                   1559 ;	-----------------------------------------
                                   1560 ;	 function ISR_Stub
                                   1561 ;	-----------------------------------------
      00029B                       1562 _ISR_Stub:
                                   1563 ;	bulkloop.c:304: }
      00029B 32               [24] 1564 	reti
                                   1565 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1566 ;	eliminated unneeded push/pop psw
                                   1567 ;	eliminated unneeded push/pop dpl
                                   1568 ;	eliminated unneeded push/pop dph
                                   1569 ;	eliminated unneeded push/pop b
                                   1570 ;	eliminated unneeded push/pop acc
                                   1571 ;------------------------------------------------------------
                                   1572 ;Allocation info for local variables in function 'ISR_Ep0in'
                                   1573 ;------------------------------------------------------------
                                   1574 ;	bulkloop.c:305: void ISR_Ep0in(void) __interrupt 0
                                   1575 ;	-----------------------------------------
                                   1576 ;	 function ISR_Ep0in
                                   1577 ;	-----------------------------------------
      00029C                       1578 _ISR_Ep0in:
                                   1579 ;	bulkloop.c:307: }
      00029C 32               [24] 1580 	reti
                                   1581 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1582 ;	eliminated unneeded push/pop psw
                                   1583 ;	eliminated unneeded push/pop dpl
                                   1584 ;	eliminated unneeded push/pop dph
                                   1585 ;	eliminated unneeded push/pop b
                                   1586 ;	eliminated unneeded push/pop acc
                                   1587 ;------------------------------------------------------------
                                   1588 ;Allocation info for local variables in function 'ISR_Ep0out'
                                   1589 ;------------------------------------------------------------
                                   1590 ;	bulkloop.c:308: void ISR_Ep0out(void) __interrupt 0
                                   1591 ;	-----------------------------------------
                                   1592 ;	 function ISR_Ep0out
                                   1593 ;	-----------------------------------------
      00029D                       1594 _ISR_Ep0out:
                                   1595 ;	bulkloop.c:310: }
      00029D 32               [24] 1596 	reti
                                   1597 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1598 ;	eliminated unneeded push/pop psw
                                   1599 ;	eliminated unneeded push/pop dpl
                                   1600 ;	eliminated unneeded push/pop dph
                                   1601 ;	eliminated unneeded push/pop b
                                   1602 ;	eliminated unneeded push/pop acc
                                   1603 ;------------------------------------------------------------
                                   1604 ;Allocation info for local variables in function 'ISR_Ep1in'
                                   1605 ;------------------------------------------------------------
                                   1606 ;	bulkloop.c:311: void ISR_Ep1in(void) __interrupt 0
                                   1607 ;	-----------------------------------------
                                   1608 ;	 function ISR_Ep1in
                                   1609 ;	-----------------------------------------
      00029E                       1610 _ISR_Ep1in:
                                   1611 ;	bulkloop.c:313: }
      00029E 32               [24] 1612 	reti
                                   1613 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1614 ;	eliminated unneeded push/pop psw
                                   1615 ;	eliminated unneeded push/pop dpl
                                   1616 ;	eliminated unneeded push/pop dph
                                   1617 ;	eliminated unneeded push/pop b
                                   1618 ;	eliminated unneeded push/pop acc
                                   1619 ;------------------------------------------------------------
                                   1620 ;Allocation info for local variables in function 'ISR_Ep1out'
                                   1621 ;------------------------------------------------------------
                                   1622 ;	bulkloop.c:314: void ISR_Ep1out(void) __interrupt 0
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function ISR_Ep1out
                                   1625 ;	-----------------------------------------
      00029F                       1626 _ISR_Ep1out:
                                   1627 ;	bulkloop.c:316: }
      00029F 32               [24] 1628 	reti
                                   1629 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1630 ;	eliminated unneeded push/pop psw
                                   1631 ;	eliminated unneeded push/pop dpl
                                   1632 ;	eliminated unneeded push/pop dph
                                   1633 ;	eliminated unneeded push/pop b
                                   1634 ;	eliminated unneeded push/pop acc
                                   1635 ;------------------------------------------------------------
                                   1636 ;Allocation info for local variables in function 'ISR_Ep2inout'
                                   1637 ;------------------------------------------------------------
                                   1638 ;	bulkloop.c:317: void ISR_Ep2inout(void) __interrupt 0
                                   1639 ;	-----------------------------------------
                                   1640 ;	 function ISR_Ep2inout
                                   1641 ;	-----------------------------------------
      0002A0                       1642 _ISR_Ep2inout:
                                   1643 ;	bulkloop.c:319: }
      0002A0 32               [24] 1644 	reti
                                   1645 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1646 ;	eliminated unneeded push/pop psw
                                   1647 ;	eliminated unneeded push/pop dpl
                                   1648 ;	eliminated unneeded push/pop dph
                                   1649 ;	eliminated unneeded push/pop b
                                   1650 ;	eliminated unneeded push/pop acc
                                   1651 ;------------------------------------------------------------
                                   1652 ;Allocation info for local variables in function 'ISR_Ep4inout'
                                   1653 ;------------------------------------------------------------
                                   1654 ;	bulkloop.c:320: void ISR_Ep4inout(void) __interrupt 0
                                   1655 ;	-----------------------------------------
                                   1656 ;	 function ISR_Ep4inout
                                   1657 ;	-----------------------------------------
      0002A1                       1658 _ISR_Ep4inout:
                                   1659 ;	bulkloop.c:322: }
      0002A1 32               [24] 1660 	reti
                                   1661 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1662 ;	eliminated unneeded push/pop psw
                                   1663 ;	eliminated unneeded push/pop dpl
                                   1664 ;	eliminated unneeded push/pop dph
                                   1665 ;	eliminated unneeded push/pop b
                                   1666 ;	eliminated unneeded push/pop acc
                                   1667 ;------------------------------------------------------------
                                   1668 ;Allocation info for local variables in function 'ISR_Ep6inout'
                                   1669 ;------------------------------------------------------------
                                   1670 ;	bulkloop.c:323: void ISR_Ep6inout(void) __interrupt 0
                                   1671 ;	-----------------------------------------
                                   1672 ;	 function ISR_Ep6inout
                                   1673 ;	-----------------------------------------
      0002A2                       1674 _ISR_Ep6inout:
                                   1675 ;	bulkloop.c:325: }
      0002A2 32               [24] 1676 	reti
                                   1677 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1678 ;	eliminated unneeded push/pop psw
                                   1679 ;	eliminated unneeded push/pop dpl
                                   1680 ;	eliminated unneeded push/pop dph
                                   1681 ;	eliminated unneeded push/pop b
                                   1682 ;	eliminated unneeded push/pop acc
                                   1683 ;------------------------------------------------------------
                                   1684 ;Allocation info for local variables in function 'ISR_Ep8inout'
                                   1685 ;------------------------------------------------------------
                                   1686 ;	bulkloop.c:326: void ISR_Ep8inout(void) __interrupt 0
                                   1687 ;	-----------------------------------------
                                   1688 ;	 function ISR_Ep8inout
                                   1689 ;	-----------------------------------------
      0002A3                       1690 _ISR_Ep8inout:
                                   1691 ;	bulkloop.c:328: }
      0002A3 32               [24] 1692 	reti
                                   1693 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1694 ;	eliminated unneeded push/pop psw
                                   1695 ;	eliminated unneeded push/pop dpl
                                   1696 ;	eliminated unneeded push/pop dph
                                   1697 ;	eliminated unneeded push/pop b
                                   1698 ;	eliminated unneeded push/pop acc
                                   1699 ;------------------------------------------------------------
                                   1700 ;Allocation info for local variables in function 'ISR_Ibn'
                                   1701 ;------------------------------------------------------------
                                   1702 ;	bulkloop.c:329: void ISR_Ibn(void) __interrupt 0
                                   1703 ;	-----------------------------------------
                                   1704 ;	 function ISR_Ibn
                                   1705 ;	-----------------------------------------
      0002A4                       1706 _ISR_Ibn:
                                   1707 ;	bulkloop.c:331: }
      0002A4 32               [24] 1708 	reti
                                   1709 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1710 ;	eliminated unneeded push/pop psw
                                   1711 ;	eliminated unneeded push/pop dpl
                                   1712 ;	eliminated unneeded push/pop dph
                                   1713 ;	eliminated unneeded push/pop b
                                   1714 ;	eliminated unneeded push/pop acc
                                   1715 ;------------------------------------------------------------
                                   1716 ;Allocation info for local variables in function 'ISR_Ep0pingnak'
                                   1717 ;------------------------------------------------------------
                                   1718 ;	bulkloop.c:332: void ISR_Ep0pingnak(void) __interrupt 0
                                   1719 ;	-----------------------------------------
                                   1720 ;	 function ISR_Ep0pingnak
                                   1721 ;	-----------------------------------------
      0002A5                       1722 _ISR_Ep0pingnak:
                                   1723 ;	bulkloop.c:334: }
      0002A5 32               [24] 1724 	reti
                                   1725 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1726 ;	eliminated unneeded push/pop psw
                                   1727 ;	eliminated unneeded push/pop dpl
                                   1728 ;	eliminated unneeded push/pop dph
                                   1729 ;	eliminated unneeded push/pop b
                                   1730 ;	eliminated unneeded push/pop acc
                                   1731 ;------------------------------------------------------------
                                   1732 ;Allocation info for local variables in function 'ISR_Ep1pingnak'
                                   1733 ;------------------------------------------------------------
                                   1734 ;	bulkloop.c:335: void ISR_Ep1pingnak(void) __interrupt 0
                                   1735 ;	-----------------------------------------
                                   1736 ;	 function ISR_Ep1pingnak
                                   1737 ;	-----------------------------------------
      0002A6                       1738 _ISR_Ep1pingnak:
                                   1739 ;	bulkloop.c:337: }
      0002A6 32               [24] 1740 	reti
                                   1741 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1742 ;	eliminated unneeded push/pop psw
                                   1743 ;	eliminated unneeded push/pop dpl
                                   1744 ;	eliminated unneeded push/pop dph
                                   1745 ;	eliminated unneeded push/pop b
                                   1746 ;	eliminated unneeded push/pop acc
                                   1747 ;------------------------------------------------------------
                                   1748 ;Allocation info for local variables in function 'ISR_Ep2pingnak'
                                   1749 ;------------------------------------------------------------
                                   1750 ;	bulkloop.c:338: void ISR_Ep2pingnak(void) __interrupt 0
                                   1751 ;	-----------------------------------------
                                   1752 ;	 function ISR_Ep2pingnak
                                   1753 ;	-----------------------------------------
      0002A7                       1754 _ISR_Ep2pingnak:
                                   1755 ;	bulkloop.c:340: }
      0002A7 32               [24] 1756 	reti
                                   1757 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1758 ;	eliminated unneeded push/pop psw
                                   1759 ;	eliminated unneeded push/pop dpl
                                   1760 ;	eliminated unneeded push/pop dph
                                   1761 ;	eliminated unneeded push/pop b
                                   1762 ;	eliminated unneeded push/pop acc
                                   1763 ;------------------------------------------------------------
                                   1764 ;Allocation info for local variables in function 'ISR_Ep4pingnak'
                                   1765 ;------------------------------------------------------------
                                   1766 ;	bulkloop.c:341: void ISR_Ep4pingnak(void) __interrupt 0
                                   1767 ;	-----------------------------------------
                                   1768 ;	 function ISR_Ep4pingnak
                                   1769 ;	-----------------------------------------
      0002A8                       1770 _ISR_Ep4pingnak:
                                   1771 ;	bulkloop.c:343: }
      0002A8 32               [24] 1772 	reti
                                   1773 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1774 ;	eliminated unneeded push/pop psw
                                   1775 ;	eliminated unneeded push/pop dpl
                                   1776 ;	eliminated unneeded push/pop dph
                                   1777 ;	eliminated unneeded push/pop b
                                   1778 ;	eliminated unneeded push/pop acc
                                   1779 ;------------------------------------------------------------
                                   1780 ;Allocation info for local variables in function 'ISR_Ep6pingnak'
                                   1781 ;------------------------------------------------------------
                                   1782 ;	bulkloop.c:344: void ISR_Ep6pingnak(void) __interrupt 0
                                   1783 ;	-----------------------------------------
                                   1784 ;	 function ISR_Ep6pingnak
                                   1785 ;	-----------------------------------------
      0002A9                       1786 _ISR_Ep6pingnak:
                                   1787 ;	bulkloop.c:346: }
      0002A9 32               [24] 1788 	reti
                                   1789 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1790 ;	eliminated unneeded push/pop psw
                                   1791 ;	eliminated unneeded push/pop dpl
                                   1792 ;	eliminated unneeded push/pop dph
                                   1793 ;	eliminated unneeded push/pop b
                                   1794 ;	eliminated unneeded push/pop acc
                                   1795 ;------------------------------------------------------------
                                   1796 ;Allocation info for local variables in function 'ISR_Ep8pingnak'
                                   1797 ;------------------------------------------------------------
                                   1798 ;	bulkloop.c:347: void ISR_Ep8pingnak(void) __interrupt 0
                                   1799 ;	-----------------------------------------
                                   1800 ;	 function ISR_Ep8pingnak
                                   1801 ;	-----------------------------------------
      0002AA                       1802 _ISR_Ep8pingnak:
                                   1803 ;	bulkloop.c:349: }
      0002AA 32               [24] 1804 	reti
                                   1805 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1806 ;	eliminated unneeded push/pop psw
                                   1807 ;	eliminated unneeded push/pop dpl
                                   1808 ;	eliminated unneeded push/pop dph
                                   1809 ;	eliminated unneeded push/pop b
                                   1810 ;	eliminated unneeded push/pop acc
                                   1811 ;------------------------------------------------------------
                                   1812 ;Allocation info for local variables in function 'ISR_Errorlimit'
                                   1813 ;------------------------------------------------------------
                                   1814 ;	bulkloop.c:350: void ISR_Errorlimit(void) __interrupt 0
                                   1815 ;	-----------------------------------------
                                   1816 ;	 function ISR_Errorlimit
                                   1817 ;	-----------------------------------------
      0002AB                       1818 _ISR_Errorlimit:
                                   1819 ;	bulkloop.c:352: }
      0002AB 32               [24] 1820 	reti
                                   1821 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1822 ;	eliminated unneeded push/pop psw
                                   1823 ;	eliminated unneeded push/pop dpl
                                   1824 ;	eliminated unneeded push/pop dph
                                   1825 ;	eliminated unneeded push/pop b
                                   1826 ;	eliminated unneeded push/pop acc
                                   1827 ;------------------------------------------------------------
                                   1828 ;Allocation info for local variables in function 'ISR_Ep2piderror'
                                   1829 ;------------------------------------------------------------
                                   1830 ;	bulkloop.c:353: void ISR_Ep2piderror(void) __interrupt 0
                                   1831 ;	-----------------------------------------
                                   1832 ;	 function ISR_Ep2piderror
                                   1833 ;	-----------------------------------------
      0002AC                       1834 _ISR_Ep2piderror:
                                   1835 ;	bulkloop.c:355: }
      0002AC 32               [24] 1836 	reti
                                   1837 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1838 ;	eliminated unneeded push/pop psw
                                   1839 ;	eliminated unneeded push/pop dpl
                                   1840 ;	eliminated unneeded push/pop dph
                                   1841 ;	eliminated unneeded push/pop b
                                   1842 ;	eliminated unneeded push/pop acc
                                   1843 ;------------------------------------------------------------
                                   1844 ;Allocation info for local variables in function 'ISR_Ep4piderror'
                                   1845 ;------------------------------------------------------------
                                   1846 ;	bulkloop.c:356: void ISR_Ep4piderror(void) __interrupt 0
                                   1847 ;	-----------------------------------------
                                   1848 ;	 function ISR_Ep4piderror
                                   1849 ;	-----------------------------------------
      0002AD                       1850 _ISR_Ep4piderror:
                                   1851 ;	bulkloop.c:358: }
      0002AD 32               [24] 1852 	reti
                                   1853 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1854 ;	eliminated unneeded push/pop psw
                                   1855 ;	eliminated unneeded push/pop dpl
                                   1856 ;	eliminated unneeded push/pop dph
                                   1857 ;	eliminated unneeded push/pop b
                                   1858 ;	eliminated unneeded push/pop acc
                                   1859 ;------------------------------------------------------------
                                   1860 ;Allocation info for local variables in function 'ISR_Ep6piderror'
                                   1861 ;------------------------------------------------------------
                                   1862 ;	bulkloop.c:359: void ISR_Ep6piderror(void) __interrupt 0
                                   1863 ;	-----------------------------------------
                                   1864 ;	 function ISR_Ep6piderror
                                   1865 ;	-----------------------------------------
      0002AE                       1866 _ISR_Ep6piderror:
                                   1867 ;	bulkloop.c:361: }
      0002AE 32               [24] 1868 	reti
                                   1869 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1870 ;	eliminated unneeded push/pop psw
                                   1871 ;	eliminated unneeded push/pop dpl
                                   1872 ;	eliminated unneeded push/pop dph
                                   1873 ;	eliminated unneeded push/pop b
                                   1874 ;	eliminated unneeded push/pop acc
                                   1875 ;------------------------------------------------------------
                                   1876 ;Allocation info for local variables in function 'ISR_Ep8piderror'
                                   1877 ;------------------------------------------------------------
                                   1878 ;	bulkloop.c:362: void ISR_Ep8piderror(void) __interrupt 0
                                   1879 ;	-----------------------------------------
                                   1880 ;	 function ISR_Ep8piderror
                                   1881 ;	-----------------------------------------
      0002AF                       1882 _ISR_Ep8piderror:
                                   1883 ;	bulkloop.c:364: }
      0002AF 32               [24] 1884 	reti
                                   1885 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1886 ;	eliminated unneeded push/pop psw
                                   1887 ;	eliminated unneeded push/pop dpl
                                   1888 ;	eliminated unneeded push/pop dph
                                   1889 ;	eliminated unneeded push/pop b
                                   1890 ;	eliminated unneeded push/pop acc
                                   1891 ;------------------------------------------------------------
                                   1892 ;Allocation info for local variables in function 'ISR_Ep2pflag'
                                   1893 ;------------------------------------------------------------
                                   1894 ;	bulkloop.c:365: void ISR_Ep2pflag(void) __interrupt 0
                                   1895 ;	-----------------------------------------
                                   1896 ;	 function ISR_Ep2pflag
                                   1897 ;	-----------------------------------------
      0002B0                       1898 _ISR_Ep2pflag:
                                   1899 ;	bulkloop.c:367: }
      0002B0 32               [24] 1900 	reti
                                   1901 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1902 ;	eliminated unneeded push/pop psw
                                   1903 ;	eliminated unneeded push/pop dpl
                                   1904 ;	eliminated unneeded push/pop dph
                                   1905 ;	eliminated unneeded push/pop b
                                   1906 ;	eliminated unneeded push/pop acc
                                   1907 ;------------------------------------------------------------
                                   1908 ;Allocation info for local variables in function 'ISR_Ep4pflag'
                                   1909 ;------------------------------------------------------------
                                   1910 ;	bulkloop.c:368: void ISR_Ep4pflag(void) __interrupt 0
                                   1911 ;	-----------------------------------------
                                   1912 ;	 function ISR_Ep4pflag
                                   1913 ;	-----------------------------------------
      0002B1                       1914 _ISR_Ep4pflag:
                                   1915 ;	bulkloop.c:370: }
      0002B1 32               [24] 1916 	reti
                                   1917 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1918 ;	eliminated unneeded push/pop psw
                                   1919 ;	eliminated unneeded push/pop dpl
                                   1920 ;	eliminated unneeded push/pop dph
                                   1921 ;	eliminated unneeded push/pop b
                                   1922 ;	eliminated unneeded push/pop acc
                                   1923 ;------------------------------------------------------------
                                   1924 ;Allocation info for local variables in function 'ISR_Ep6pflag'
                                   1925 ;------------------------------------------------------------
                                   1926 ;	bulkloop.c:371: void ISR_Ep6pflag(void) __interrupt 0
                                   1927 ;	-----------------------------------------
                                   1928 ;	 function ISR_Ep6pflag
                                   1929 ;	-----------------------------------------
      0002B2                       1930 _ISR_Ep6pflag:
                                   1931 ;	bulkloop.c:373: }
      0002B2 32               [24] 1932 	reti
                                   1933 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1934 ;	eliminated unneeded push/pop psw
                                   1935 ;	eliminated unneeded push/pop dpl
                                   1936 ;	eliminated unneeded push/pop dph
                                   1937 ;	eliminated unneeded push/pop b
                                   1938 ;	eliminated unneeded push/pop acc
                                   1939 ;------------------------------------------------------------
                                   1940 ;Allocation info for local variables in function 'ISR_Ep8pflag'
                                   1941 ;------------------------------------------------------------
                                   1942 ;	bulkloop.c:374: void ISR_Ep8pflag(void) __interrupt 0
                                   1943 ;	-----------------------------------------
                                   1944 ;	 function ISR_Ep8pflag
                                   1945 ;	-----------------------------------------
      0002B3                       1946 _ISR_Ep8pflag:
                                   1947 ;	bulkloop.c:376: }
      0002B3 32               [24] 1948 	reti
                                   1949 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1950 ;	eliminated unneeded push/pop psw
                                   1951 ;	eliminated unneeded push/pop dpl
                                   1952 ;	eliminated unneeded push/pop dph
                                   1953 ;	eliminated unneeded push/pop b
                                   1954 ;	eliminated unneeded push/pop acc
                                   1955 ;------------------------------------------------------------
                                   1956 ;Allocation info for local variables in function 'ISR_Ep2eflag'
                                   1957 ;------------------------------------------------------------
                                   1958 ;	bulkloop.c:377: void ISR_Ep2eflag(void) __interrupt 0
                                   1959 ;	-----------------------------------------
                                   1960 ;	 function ISR_Ep2eflag
                                   1961 ;	-----------------------------------------
      0002B4                       1962 _ISR_Ep2eflag:
                                   1963 ;	bulkloop.c:379: }
      0002B4 32               [24] 1964 	reti
                                   1965 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1966 ;	eliminated unneeded push/pop psw
                                   1967 ;	eliminated unneeded push/pop dpl
                                   1968 ;	eliminated unneeded push/pop dph
                                   1969 ;	eliminated unneeded push/pop b
                                   1970 ;	eliminated unneeded push/pop acc
                                   1971 ;------------------------------------------------------------
                                   1972 ;Allocation info for local variables in function 'ISR_Ep4eflag'
                                   1973 ;------------------------------------------------------------
                                   1974 ;	bulkloop.c:380: void ISR_Ep4eflag(void) __interrupt 0
                                   1975 ;	-----------------------------------------
                                   1976 ;	 function ISR_Ep4eflag
                                   1977 ;	-----------------------------------------
      0002B5                       1978 _ISR_Ep4eflag:
                                   1979 ;	bulkloop.c:382: }
      0002B5 32               [24] 1980 	reti
                                   1981 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1982 ;	eliminated unneeded push/pop psw
                                   1983 ;	eliminated unneeded push/pop dpl
                                   1984 ;	eliminated unneeded push/pop dph
                                   1985 ;	eliminated unneeded push/pop b
                                   1986 ;	eliminated unneeded push/pop acc
                                   1987 ;------------------------------------------------------------
                                   1988 ;Allocation info for local variables in function 'ISR_Ep6eflag'
                                   1989 ;------------------------------------------------------------
                                   1990 ;	bulkloop.c:383: void ISR_Ep6eflag(void) __interrupt 0
                                   1991 ;	-----------------------------------------
                                   1992 ;	 function ISR_Ep6eflag
                                   1993 ;	-----------------------------------------
      0002B6                       1994 _ISR_Ep6eflag:
                                   1995 ;	bulkloop.c:385: }
      0002B6 32               [24] 1996 	reti
                                   1997 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1998 ;	eliminated unneeded push/pop psw
                                   1999 ;	eliminated unneeded push/pop dpl
                                   2000 ;	eliminated unneeded push/pop dph
                                   2001 ;	eliminated unneeded push/pop b
                                   2002 ;	eliminated unneeded push/pop acc
                                   2003 ;------------------------------------------------------------
                                   2004 ;Allocation info for local variables in function 'ISR_Ep8eflag'
                                   2005 ;------------------------------------------------------------
                                   2006 ;	bulkloop.c:386: void ISR_Ep8eflag(void) __interrupt 0
                                   2007 ;	-----------------------------------------
                                   2008 ;	 function ISR_Ep8eflag
                                   2009 ;	-----------------------------------------
      0002B7                       2010 _ISR_Ep8eflag:
                                   2011 ;	bulkloop.c:388: }
      0002B7 32               [24] 2012 	reti
                                   2013 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2014 ;	eliminated unneeded push/pop psw
                                   2015 ;	eliminated unneeded push/pop dpl
                                   2016 ;	eliminated unneeded push/pop dph
                                   2017 ;	eliminated unneeded push/pop b
                                   2018 ;	eliminated unneeded push/pop acc
                                   2019 ;------------------------------------------------------------
                                   2020 ;Allocation info for local variables in function 'ISR_Ep2fflag'
                                   2021 ;------------------------------------------------------------
                                   2022 ;	bulkloop.c:389: void ISR_Ep2fflag(void) __interrupt 0
                                   2023 ;	-----------------------------------------
                                   2024 ;	 function ISR_Ep2fflag
                                   2025 ;	-----------------------------------------
      0002B8                       2026 _ISR_Ep2fflag:
                                   2027 ;	bulkloop.c:391: }
      0002B8 32               [24] 2028 	reti
                                   2029 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2030 ;	eliminated unneeded push/pop psw
                                   2031 ;	eliminated unneeded push/pop dpl
                                   2032 ;	eliminated unneeded push/pop dph
                                   2033 ;	eliminated unneeded push/pop b
                                   2034 ;	eliminated unneeded push/pop acc
                                   2035 ;------------------------------------------------------------
                                   2036 ;Allocation info for local variables in function 'ISR_Ep4fflag'
                                   2037 ;------------------------------------------------------------
                                   2038 ;	bulkloop.c:392: void ISR_Ep4fflag(void) __interrupt 0
                                   2039 ;	-----------------------------------------
                                   2040 ;	 function ISR_Ep4fflag
                                   2041 ;	-----------------------------------------
      0002B9                       2042 _ISR_Ep4fflag:
                                   2043 ;	bulkloop.c:394: }
      0002B9 32               [24] 2044 	reti
                                   2045 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2046 ;	eliminated unneeded push/pop psw
                                   2047 ;	eliminated unneeded push/pop dpl
                                   2048 ;	eliminated unneeded push/pop dph
                                   2049 ;	eliminated unneeded push/pop b
                                   2050 ;	eliminated unneeded push/pop acc
                                   2051 ;------------------------------------------------------------
                                   2052 ;Allocation info for local variables in function 'ISR_Ep6fflag'
                                   2053 ;------------------------------------------------------------
                                   2054 ;	bulkloop.c:395: void ISR_Ep6fflag(void) __interrupt 0
                                   2055 ;	-----------------------------------------
                                   2056 ;	 function ISR_Ep6fflag
                                   2057 ;	-----------------------------------------
      0002BA                       2058 _ISR_Ep6fflag:
                                   2059 ;	bulkloop.c:397: }
      0002BA 32               [24] 2060 	reti
                                   2061 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2062 ;	eliminated unneeded push/pop psw
                                   2063 ;	eliminated unneeded push/pop dpl
                                   2064 ;	eliminated unneeded push/pop dph
                                   2065 ;	eliminated unneeded push/pop b
                                   2066 ;	eliminated unneeded push/pop acc
                                   2067 ;------------------------------------------------------------
                                   2068 ;Allocation info for local variables in function 'ISR_Ep8fflag'
                                   2069 ;------------------------------------------------------------
                                   2070 ;	bulkloop.c:398: void ISR_Ep8fflag(void) __interrupt 0
                                   2071 ;	-----------------------------------------
                                   2072 ;	 function ISR_Ep8fflag
                                   2073 ;	-----------------------------------------
      0002BB                       2074 _ISR_Ep8fflag:
                                   2075 ;	bulkloop.c:400: }
      0002BB 32               [24] 2076 	reti
                                   2077 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2078 ;	eliminated unneeded push/pop psw
                                   2079 ;	eliminated unneeded push/pop dpl
                                   2080 ;	eliminated unneeded push/pop dph
                                   2081 ;	eliminated unneeded push/pop b
                                   2082 ;	eliminated unneeded push/pop acc
                                   2083 ;------------------------------------------------------------
                                   2084 ;Allocation info for local variables in function 'ISR_GpifComplete'
                                   2085 ;------------------------------------------------------------
                                   2086 ;	bulkloop.c:401: void ISR_GpifComplete(void) __interrupt 0
                                   2087 ;	-----------------------------------------
                                   2088 ;	 function ISR_GpifComplete
                                   2089 ;	-----------------------------------------
      0002BC                       2090 _ISR_GpifComplete:
                                   2091 ;	bulkloop.c:403: }
      0002BC 32               [24] 2092 	reti
                                   2093 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2094 ;	eliminated unneeded push/pop psw
                                   2095 ;	eliminated unneeded push/pop dpl
                                   2096 ;	eliminated unneeded push/pop dph
                                   2097 ;	eliminated unneeded push/pop b
                                   2098 ;	eliminated unneeded push/pop acc
                                   2099 ;------------------------------------------------------------
                                   2100 ;Allocation info for local variables in function 'ISR_GpifWaveform'
                                   2101 ;------------------------------------------------------------
                                   2102 ;	bulkloop.c:404: void ISR_GpifWaveform(void) __interrupt 0
                                   2103 ;	-----------------------------------------
                                   2104 ;	 function ISR_GpifWaveform
                                   2105 ;	-----------------------------------------
      0002BD                       2106 _ISR_GpifWaveform:
                                   2107 ;	bulkloop.c:406: }
      0002BD 32               [24] 2108 	reti
                                   2109 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2110 ;	eliminated unneeded push/pop psw
                                   2111 ;	eliminated unneeded push/pop dpl
                                   2112 ;	eliminated unneeded push/pop dph
                                   2113 ;	eliminated unneeded push/pop b
                                   2114 ;	eliminated unneeded push/pop acc
                                   2115 	.area CSEG    (CODE)
                                   2116 	.area CONST   (CODE)
                                   2117 	.area XINIT   (CODE)
                                   2118 	.area CABS    (ABS,CODE)

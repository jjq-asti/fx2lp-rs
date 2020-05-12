                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fw
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EPCS_Offset_Lookup_Table
                                     12 	.globl _resume_isr
                                     13 	.globl _HighSpeedCapable
                                     14 	.globl _main
                                     15 	.globl _DR_VendorCmnd
                                     16 	.globl _DR_SetFeature
                                     17 	.globl _DR_ClearFeature
                                     18 	.globl _DR_GetStatus
                                     19 	.globl _DR_GetInterface
                                     20 	.globl _DR_SetInterface
                                     21 	.globl _DR_GetConfiguration
                                     22 	.globl _DR_SetConfiguration
                                     23 	.globl _DR_GetDescriptor
                                     24 	.globl _TD_Resume
                                     25 	.globl _TD_Suspend
                                     26 	.globl _TD_Poll
                                     27 	.globl _TD_Init
                                     28 	.globl _EZUSB_GetStringDscr
                                     29 	.globl _EZUSB_Resume
                                     30 	.globl _EZUSB_Susp
                                     31 	.globl _EZUSB_Discon
                                     32 	.globl _EIPX6
                                     33 	.globl _EIPX5
                                     34 	.globl _EIPX4
                                     35 	.globl _PI2C
                                     36 	.globl _PUSB
                                     37 	.globl _EIEX6
                                     38 	.globl _EIEX5
                                     39 	.globl _EIEX4
                                     40 	.globl _EI2C
                                     41 	.globl _EUSB
                                     42 	.globl _SMOD1
                                     43 	.globl _ERESI
                                     44 	.globl _RESI
                                     45 	.globl _INT6
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _FL
                                     53 	.globl _P
                                     54 	.globl _TF2
                                     55 	.globl _EXF2
                                     56 	.globl _RCLK
                                     57 	.globl _TCLK
                                     58 	.globl _EXEN2
                                     59 	.globl _TR2
                                     60 	.globl _C_T2
                                     61 	.globl _CP_RL2
                                     62 	.globl _SM01
                                     63 	.globl _SM11
                                     64 	.globl _SM21
                                     65 	.globl _REN1
                                     66 	.globl _TB81
                                     67 	.globl _RB81
                                     68 	.globl _TI1
                                     69 	.globl _RI1
                                     70 	.globl _PS1
                                     71 	.globl _PT2
                                     72 	.globl _PS0
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _PD7
                                     78 	.globl _PD6
                                     79 	.globl _PD5
                                     80 	.globl _PD4
                                     81 	.globl _PD3
                                     82 	.globl _PD2
                                     83 	.globl _PD1
                                     84 	.globl _PD0
                                     85 	.globl _EA
                                     86 	.globl _ES1
                                     87 	.globl _ET2
                                     88 	.globl _ES0
                                     89 	.globl _ET1
                                     90 	.globl _EX1
                                     91 	.globl _ET0
                                     92 	.globl _EX0
                                     93 	.globl _PC7
                                     94 	.globl _PC6
                                     95 	.globl _PC5
                                     96 	.globl _PC4
                                     97 	.globl _PC3
                                     98 	.globl _PC2
                                     99 	.globl _PC1
                                    100 	.globl _PC0
                                    101 	.globl _SM0
                                    102 	.globl _SM1
                                    103 	.globl _SM2
                                    104 	.globl _REN
                                    105 	.globl _TB8
                                    106 	.globl _RB8
                                    107 	.globl _TI
                                    108 	.globl _RI
                                    109 	.globl _PB7
                                    110 	.globl _PB6
                                    111 	.globl _PB5
                                    112 	.globl _PB4
                                    113 	.globl _PB3
                                    114 	.globl _PB2
                                    115 	.globl _PB1
                                    116 	.globl _PB0
                                    117 	.globl _TF1
                                    118 	.globl _TR1
                                    119 	.globl _TF0
                                    120 	.globl _TR0
                                    121 	.globl _IE1
                                    122 	.globl _IT1
                                    123 	.globl _IE0
                                    124 	.globl _IT0
                                    125 	.globl _PA7
                                    126 	.globl _PA6
                                    127 	.globl _PA5
                                    128 	.globl _PA4
                                    129 	.globl _PA3
                                    130 	.globl _PA2
                                    131 	.globl _PA1
                                    132 	.globl _PA0
                                    133 	.globl _EIP
                                    134 	.globl _B
                                    135 	.globl _EIE
                                    136 	.globl _ACC
                                    137 	.globl _EICON
                                    138 	.globl _PSW
                                    139 	.globl _TH2
                                    140 	.globl _TL2
                                    141 	.globl _RCAP2H
                                    142 	.globl _RCAP2L
                                    143 	.globl _T2CON
                                    144 	.globl _SBUF1
                                    145 	.globl _SCON1
                                    146 	.globl _GPIFSGLDATLNOX
                                    147 	.globl _GPIFSGLDATLX
                                    148 	.globl _GPIFSGLDATH
                                    149 	.globl _GPIFTRIG
                                    150 	.globl _EP01STAT
                                    151 	.globl _IP
                                    152 	.globl _OEE
                                    153 	.globl _OED
                                    154 	.globl _OEC
                                    155 	.globl _OEB
                                    156 	.globl _OEA
                                    157 	.globl _IOE
                                    158 	.globl _IOD
                                    159 	.globl _AUTOPTRSETUP
                                    160 	.globl _EP68FIFOFLGS
                                    161 	.globl _EP24FIFOFLGS
                                    162 	.globl _EP2468STAT
                                    163 	.globl _IE
                                    164 	.globl _INT4CLR
                                    165 	.globl _INT2CLR
                                    166 	.globl _IOC
                                    167 	.globl _AUTOPTRL2
                                    168 	.globl _AUTOPTRH2
                                    169 	.globl _AUTOPTRL1
                                    170 	.globl _AUTOPTRH1
                                    171 	.globl _SBUF0
                                    172 	.globl _SCON0
                                    173 	.globl _MPAGE
                                    174 	.globl _EXIF
                                    175 	.globl _IOB
                                    176 	.globl _SPC_FNC
                                    177 	.globl _CKCON
                                    178 	.globl _TH1
                                    179 	.globl _TH0
                                    180 	.globl _TL1
                                    181 	.globl _TL0
                                    182 	.globl _TMOD
                                    183 	.globl _TCON
                                    184 	.globl _PCON
                                    185 	.globl _DPS
                                    186 	.globl _DPH1
                                    187 	.globl _DPL1
                                    188 	.globl _DPH
                                    189 	.globl _DPL
                                    190 	.globl _SP
                                    191 	.globl _IOA
                                    192 	.globl _GPCR2
                                    193 	.globl _ECC2B2
                                    194 	.globl _ECC2B1
                                    195 	.globl _ECC2B0
                                    196 	.globl _ECC1B2
                                    197 	.globl _ECC1B1
                                    198 	.globl _ECC1B0
                                    199 	.globl _ECCRESET
                                    200 	.globl _ECCCFG
                                    201 	.globl _EP8FIFOBUF
                                    202 	.globl _EP6FIFOBUF
                                    203 	.globl _EP4FIFOBUF
                                    204 	.globl _EP2FIFOBUF
                                    205 	.globl _EP1INBUF
                                    206 	.globl _EP1OUTBUF
                                    207 	.globl _EP0BUF
                                    208 	.globl _CT4
                                    209 	.globl _CT3
                                    210 	.globl _CT2
                                    211 	.globl _CT1
                                    212 	.globl _USBTEST
                                    213 	.globl _TESTCFG
                                    214 	.globl _DBUG
                                    215 	.globl _UDMACRCQUAL
                                    216 	.globl _UDMACRCL
                                    217 	.globl _UDMACRCH
                                    218 	.globl _GPIFHOLDAMOUNT
                                    219 	.globl _FLOWSTBHPERIOD
                                    220 	.globl _FLOWSTBEDGE
                                    221 	.globl _FLOWSTB
                                    222 	.globl _FLOWHOLDOFF
                                    223 	.globl _FLOWEQ1CTL
                                    224 	.globl _FLOWEQ0CTL
                                    225 	.globl _FLOWLOGIC
                                    226 	.globl _FLOWSTATE
                                    227 	.globl _GPIFABORT
                                    228 	.globl _GPIFREADYSTAT
                                    229 	.globl _GPIFREADYCFG
                                    230 	.globl _XGPIFSGLDATLNOX
                                    231 	.globl _XGPIFSGLDATLX
                                    232 	.globl _XGPIFSGLDATH
                                    233 	.globl _EP8GPIFTRIG
                                    234 	.globl _EP8GPIFPFSTOP
                                    235 	.globl _EP8GPIFFLGSEL
                                    236 	.globl _EP6GPIFTRIG
                                    237 	.globl _EP6GPIFPFSTOP
                                    238 	.globl _EP6GPIFFLGSEL
                                    239 	.globl _EP4GPIFTRIG
                                    240 	.globl _EP4GPIFPFSTOP
                                    241 	.globl _EP4GPIFFLGSEL
                                    242 	.globl _EP2GPIFTRIG
                                    243 	.globl _EP2GPIFPFSTOP
                                    244 	.globl _EP2GPIFFLGSEL
                                    245 	.globl _GPIFTCB0
                                    246 	.globl _GPIFTCB1
                                    247 	.globl _GPIFTCB2
                                    248 	.globl _GPIFTCB3
                                    249 	.globl _GPIFADRL
                                    250 	.globl _GPIFADRH
                                    251 	.globl _GPIFCTLCFG
                                    252 	.globl _GPIFIDLECTL
                                    253 	.globl _GPIFIDLECS
                                    254 	.globl _GPIFWFSELECT
                                    255 	.globl _SETUPDAT
                                    256 	.globl _SUDPTRCTL
                                    257 	.globl _SUDPTRL
                                    258 	.globl _SUDPTRH
                                    259 	.globl _EP8FIFOBCL
                                    260 	.globl _EP8FIFOBCH
                                    261 	.globl _EP6FIFOBCL
                                    262 	.globl _EP6FIFOBCH
                                    263 	.globl _EP4FIFOBCL
                                    264 	.globl _EP4FIFOBCH
                                    265 	.globl _EP2FIFOBCL
                                    266 	.globl _EP2FIFOBCH
                                    267 	.globl _EP8FIFOFLGS
                                    268 	.globl _EP6FIFOFLGS
                                    269 	.globl _EP4FIFOFLGS
                                    270 	.globl _EP2FIFOFLGS
                                    271 	.globl _EP8CS
                                    272 	.globl _EP6CS
                                    273 	.globl _EP4CS
                                    274 	.globl _EP2CS
                                    275 	.globl _EP1INCS
                                    276 	.globl _EP1OUTCS
                                    277 	.globl _EP0CS
                                    278 	.globl _EP8BCL
                                    279 	.globl _EP8BCH
                                    280 	.globl _EP6BCL
                                    281 	.globl _EP6BCH
                                    282 	.globl _EP4BCL
                                    283 	.globl _EP4BCH
                                    284 	.globl _EP2BCL
                                    285 	.globl _EP2BCH
                                    286 	.globl _EP1INBC
                                    287 	.globl _EP1OUTBC
                                    288 	.globl _EP0BCL
                                    289 	.globl _EP0BCH
                                    290 	.globl _FNADDR
                                    291 	.globl _MICROFRAME
                                    292 	.globl _USBFRAMEL
                                    293 	.globl _USBFRAMEH
                                    294 	.globl _TOGCTL
                                    295 	.globl _WAKEUPCS
                                    296 	.globl _SUSPEND
                                    297 	.globl _USBCS
                                    298 	.globl _XAUTODAT2
                                    299 	.globl _XAUTODAT1
                                    300 	.globl _I2CTL
                                    301 	.globl _I2DAT
                                    302 	.globl _I2CS
                                    303 	.globl _PORTECFG
                                    304 	.globl _PORTCCFG
                                    305 	.globl _PORTACFG
                                    306 	.globl _INTSETUP
                                    307 	.globl _INT4IVEC
                                    308 	.globl _INT2IVEC
                                    309 	.globl _CLRERRCNT
                                    310 	.globl _ERRCNTLIM
                                    311 	.globl _USBERRIRQ
                                    312 	.globl _USBERRIE
                                    313 	.globl _GPIFIRQ
                                    314 	.globl _GPIFIE
                                    315 	.globl _EPIRQ
                                    316 	.globl _EPIE
                                    317 	.globl _USBIRQ
                                    318 	.globl _USBIE
                                    319 	.globl _NAKIRQ
                                    320 	.globl _NAKIE
                                    321 	.globl _IBNIRQ
                                    322 	.globl _IBNIE
                                    323 	.globl _EP8FIFOIRQ
                                    324 	.globl _EP8FIFOIE
                                    325 	.globl _EP6FIFOIRQ
                                    326 	.globl _EP6FIFOIE
                                    327 	.globl _EP4FIFOIRQ
                                    328 	.globl _EP4FIFOIE
                                    329 	.globl _EP2FIFOIRQ
                                    330 	.globl _EP2FIFOIE
                                    331 	.globl _OUTPKTEND
                                    332 	.globl _INPKTEND
                                    333 	.globl _EP8ISOINPKTS
                                    334 	.globl _EP6ISOINPKTS
                                    335 	.globl _EP4ISOINPKTS
                                    336 	.globl _EP2ISOINPKTS
                                    337 	.globl _EP8FIFOPFL
                                    338 	.globl _EP8FIFOPFH
                                    339 	.globl _EP6FIFOPFL
                                    340 	.globl _EP6FIFOPFH
                                    341 	.globl _EP4FIFOPFL
                                    342 	.globl _EP4FIFOPFH
                                    343 	.globl _EP2FIFOPFL
                                    344 	.globl _EP2FIFOPFH
                                    345 	.globl _EP8AUTOINLENL
                                    346 	.globl _EP8AUTOINLENH
                                    347 	.globl _EP6AUTOINLENL
                                    348 	.globl _EP6AUTOINLENH
                                    349 	.globl _EP4AUTOINLENL
                                    350 	.globl _EP4AUTOINLENH
                                    351 	.globl _EP2AUTOINLENL
                                    352 	.globl _EP2AUTOINLENH
                                    353 	.globl _EP8FIFOCFG
                                    354 	.globl _EP6FIFOCFG
                                    355 	.globl _EP4FIFOCFG
                                    356 	.globl _EP2FIFOCFG
                                    357 	.globl _EP8CFG
                                    358 	.globl _EP6CFG
                                    359 	.globl _EP4CFG
                                    360 	.globl _EP2CFG
                                    361 	.globl _EP1INCFG
                                    362 	.globl _EP1OUTCFG
                                    363 	.globl _REVCTL
                                    364 	.globl _REVID
                                    365 	.globl _FIFOPINPOLAR
                                    366 	.globl _UART230
                                    367 	.globl _BPADDRL
                                    368 	.globl _BPADDRH
                                    369 	.globl _BREAKPT
                                    370 	.globl _FIFORESET
                                    371 	.globl _PINFLAGSCD
                                    372 	.globl _PINFLAGSAB
                                    373 	.globl _IFCONFIG
                                    374 	.globl _CPUCS
                                    375 	.globl _RES_WAVEDATA_END
                                    376 	.globl _GPIF_WAVE_DATA
                                    377 	.globl _Sleep
                                    378 	.globl _Selfpwr
                                    379 	.globl _Rwuen
                                    380 	.globl _pStringDscr
                                    381 	.globl _pOtherConfigDscr
                                    382 	.globl _pConfigDscr
                                    383 	.globl _pFullSpeedConfigDscr
                                    384 	.globl _pHighSpeedConfigDscr
                                    385 	.globl _pDeviceQualDscr
                                    386 	.globl _pDeviceDscr
                                    387 	.globl _GotSUD
                                    388 	.globl _SetupCommand
                                    389 ;--------------------------------------------------------
                                    390 ; special function registers
                                    391 ;--------------------------------------------------------
                                    392 	.area RSEG    (ABS,DATA)
      000000                        393 	.org 0x0000
                           000080   394 _IOA	=	0x0080
                           000081   395 _SP	=	0x0081
                           000082   396 _DPL	=	0x0082
                           000083   397 _DPH	=	0x0083
                           000084   398 _DPL1	=	0x0084
                           000085   399 _DPH1	=	0x0085
                           000086   400 _DPS	=	0x0086
                           000087   401 _PCON	=	0x0087
                           000088   402 _TCON	=	0x0088
                           000089   403 _TMOD	=	0x0089
                           00008A   404 _TL0	=	0x008a
                           00008B   405 _TL1	=	0x008b
                           00008C   406 _TH0	=	0x008c
                           00008D   407 _TH1	=	0x008d
                           00008E   408 _CKCON	=	0x008e
                           00008F   409 _SPC_FNC	=	0x008f
                           000090   410 _IOB	=	0x0090
                           000091   411 _EXIF	=	0x0091
                           000092   412 _MPAGE	=	0x0092
                           000098   413 _SCON0	=	0x0098
                           000099   414 _SBUF0	=	0x0099
                           00009A   415 _AUTOPTRH1	=	0x009a
                           00009B   416 _AUTOPTRL1	=	0x009b
                           00009D   417 _AUTOPTRH2	=	0x009d
                           00009E   418 _AUTOPTRL2	=	0x009e
                           0000A0   419 _IOC	=	0x00a0
                           0000A1   420 _INT2CLR	=	0x00a1
                           0000A2   421 _INT4CLR	=	0x00a2
                           0000A8   422 _IE	=	0x00a8
                           0000AA   423 _EP2468STAT	=	0x00aa
                           0000AB   424 _EP24FIFOFLGS	=	0x00ab
                           0000AC   425 _EP68FIFOFLGS	=	0x00ac
                           0000AF   426 _AUTOPTRSETUP	=	0x00af
                           0000B0   427 _IOD	=	0x00b0
                           0000B1   428 _IOE	=	0x00b1
                           0000B2   429 _OEA	=	0x00b2
                           0000B3   430 _OEB	=	0x00b3
                           0000B4   431 _OEC	=	0x00b4
                           0000B5   432 _OED	=	0x00b5
                           0000B6   433 _OEE	=	0x00b6
                           0000B8   434 _IP	=	0x00b8
                           0000BA   435 _EP01STAT	=	0x00ba
                           0000BB   436 _GPIFTRIG	=	0x00bb
                           0000BD   437 _GPIFSGLDATH	=	0x00bd
                           0000BE   438 _GPIFSGLDATLX	=	0x00be
                           0000BF   439 _GPIFSGLDATLNOX	=	0x00bf
                           0000C0   440 _SCON1	=	0x00c0
                           0000C1   441 _SBUF1	=	0x00c1
                           0000C8   442 _T2CON	=	0x00c8
                           0000CA   443 _RCAP2L	=	0x00ca
                           0000CB   444 _RCAP2H	=	0x00cb
                           0000CC   445 _TL2	=	0x00cc
                           0000CD   446 _TH2	=	0x00cd
                           0000D0   447 _PSW	=	0x00d0
                           0000D8   448 _EICON	=	0x00d8
                           0000E0   449 _ACC	=	0x00e0
                           0000E8   450 _EIE	=	0x00e8
                           0000F0   451 _B	=	0x00f0
                           0000F8   452 _EIP	=	0x00f8
                                    453 ;--------------------------------------------------------
                                    454 ; special function bits
                                    455 ;--------------------------------------------------------
                                    456 	.area RSEG    (ABS,DATA)
      000000                        457 	.org 0x0000
                           000080   458 _PA0	=	0x0080
                           000081   459 _PA1	=	0x0081
                           000082   460 _PA2	=	0x0082
                           000083   461 _PA3	=	0x0083
                           000084   462 _PA4	=	0x0084
                           000085   463 _PA5	=	0x0085
                           000086   464 _PA6	=	0x0086
                           000087   465 _PA7	=	0x0087
                           000088   466 _IT0	=	0x0088
                           000089   467 _IE0	=	0x0089
                           00008A   468 _IT1	=	0x008a
                           00008B   469 _IE1	=	0x008b
                           00008C   470 _TR0	=	0x008c
                           00008D   471 _TF0	=	0x008d
                           00008E   472 _TR1	=	0x008e
                           00008F   473 _TF1	=	0x008f
                           000090   474 _PB0	=	0x0090
                           000091   475 _PB1	=	0x0091
                           000092   476 _PB2	=	0x0092
                           000093   477 _PB3	=	0x0093
                           000094   478 _PB4	=	0x0094
                           000095   479 _PB5	=	0x0095
                           000096   480 _PB6	=	0x0096
                           000097   481 _PB7	=	0x0097
                           000098   482 _RI	=	0x0098
                           000099   483 _TI	=	0x0099
                           00009A   484 _RB8	=	0x009a
                           00009B   485 _TB8	=	0x009b
                           00009C   486 _REN	=	0x009c
                           00009D   487 _SM2	=	0x009d
                           00009E   488 _SM1	=	0x009e
                           00009F   489 _SM0	=	0x009f
                           0000A0   490 _PC0	=	0x00a0
                           0000A1   491 _PC1	=	0x00a1
                           0000A2   492 _PC2	=	0x00a2
                           0000A3   493 _PC3	=	0x00a3
                           0000A4   494 _PC4	=	0x00a4
                           0000A5   495 _PC5	=	0x00a5
                           0000A6   496 _PC6	=	0x00a6
                           0000A7   497 _PC7	=	0x00a7
                           0000A8   498 _EX0	=	0x00a8
                           0000A9   499 _ET0	=	0x00a9
                           0000AA   500 _EX1	=	0x00aa
                           0000AB   501 _ET1	=	0x00ab
                           0000AC   502 _ES0	=	0x00ac
                           0000AD   503 _ET2	=	0x00ad
                           0000AE   504 _ES1	=	0x00ae
                           0000AF   505 _EA	=	0x00af
                           0000B0   506 _PD0	=	0x00b0
                           0000B1   507 _PD1	=	0x00b1
                           0000B2   508 _PD2	=	0x00b2
                           0000B3   509 _PD3	=	0x00b3
                           0000B4   510 _PD4	=	0x00b4
                           0000B5   511 _PD5	=	0x00b5
                           0000B6   512 _PD6	=	0x00b6
                           0000B7   513 _PD7	=	0x00b7
                           0000B8   514 _PX0	=	0x00b8
                           0000B9   515 _PT0	=	0x00b9
                           0000BA   516 _PX1	=	0x00ba
                           0000BB   517 _PT1	=	0x00bb
                           0000BC   518 _PS0	=	0x00bc
                           0000BD   519 _PT2	=	0x00bd
                           0000BE   520 _PS1	=	0x00be
                           0000C0   521 _RI1	=	0x00c0
                           0000C1   522 _TI1	=	0x00c1
                           0000C2   523 _RB81	=	0x00c2
                           0000C3   524 _TB81	=	0x00c3
                           0000C4   525 _REN1	=	0x00c4
                           0000C5   526 _SM21	=	0x00c5
                           0000C6   527 _SM11	=	0x00c6
                           0000C7   528 _SM01	=	0x00c7
                           0000C8   529 _CP_RL2	=	0x00c8
                           0000C9   530 _C_T2	=	0x00c9
                           0000CA   531 _TR2	=	0x00ca
                           0000CB   532 _EXEN2	=	0x00cb
                           0000CC   533 _TCLK	=	0x00cc
                           0000CD   534 _RCLK	=	0x00cd
                           0000CE   535 _EXF2	=	0x00ce
                           0000CF   536 _TF2	=	0x00cf
                           0000D0   537 _P	=	0x00d0
                           0000D1   538 _FL	=	0x00d1
                           0000D2   539 _OV	=	0x00d2
                           0000D3   540 _RS0	=	0x00d3
                           0000D4   541 _RS1	=	0x00d4
                           0000D5   542 _F0	=	0x00d5
                           0000D6   543 _AC	=	0x00d6
                           0000D7   544 _CY	=	0x00d7
                           0000DB   545 _INT6	=	0x00db
                           0000DC   546 _RESI	=	0x00dc
                           0000DD   547 _ERESI	=	0x00dd
                           0000DF   548 _SMOD1	=	0x00df
                           0000E8   549 _EUSB	=	0x00e8
                           0000E9   550 _EI2C	=	0x00e9
                           0000EA   551 _EIEX4	=	0x00ea
                           0000EB   552 _EIEX5	=	0x00eb
                           0000EC   553 _EIEX6	=	0x00ec
                           0000F8   554 _PUSB	=	0x00f8
                           0000F9   555 _PI2C	=	0x00f9
                           0000FA   556 _EIPX4	=	0x00fa
                           0000FB   557 _EIPX5	=	0x00fb
                           0000FC   558 _EIPX6	=	0x00fc
                                    559 ;--------------------------------------------------------
                                    560 ; overlayable register banks
                                    561 ;--------------------------------------------------------
                                    562 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        563 	.ds 8
                                    564 ;--------------------------------------------------------
                                    565 ; internal ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area DSEG    (DATA)
      000008                        568 _GotSUD::
      000008                        569 	.ds 1
      000009                        570 _pDeviceDscr::
      000009                        571 	.ds 2
      00000B                        572 _pDeviceQualDscr::
      00000B                        573 	.ds 2
      00000D                        574 _pHighSpeedConfigDscr::
      00000D                        575 	.ds 2
      00000F                        576 _pFullSpeedConfigDscr::
      00000F                        577 	.ds 2
      000011                        578 _pConfigDscr::
      000011                        579 	.ds 2
      000013                        580 _pOtherConfigDscr::
      000013                        581 	.ds 2
      000015                        582 _pStringDscr::
      000015                        583 	.ds 2
      000017                        584 _main_i_65536_33:
      000017                        585 	.ds 4
      00001B                        586 _main_ExtDescrAddr_65536_33:
      00001B                        587 	.ds 2
                                    588 ;--------------------------------------------------------
                                    589 ; overlayable items in internal ram 
                                    590 ;--------------------------------------------------------
                                    591 ;--------------------------------------------------------
                                    592 ; Stack segment in internal ram 
                                    593 ;--------------------------------------------------------
                                    594 	.area	SSEG
      000021                        595 __start__stack:
      000021                        596 	.ds	1
                                    597 
                                    598 ;--------------------------------------------------------
                                    599 ; indirectly addressable internal ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area ISEG    (DATA)
                                    602 ;--------------------------------------------------------
                                    603 ; absolute internal ram data
                                    604 ;--------------------------------------------------------
                                    605 	.area IABS    (ABS,DATA)
                                    606 	.area IABS    (ABS,DATA)
                                    607 ;--------------------------------------------------------
                                    608 ; bit data
                                    609 ;--------------------------------------------------------
                                    610 	.area BSEG    (BIT)
      000000                        611 _Rwuen::
      000000                        612 	.ds 1
      000001                        613 _Selfpwr::
      000001                        614 	.ds 1
      000002                        615 _Sleep::
      000002                        616 	.ds 1
                                    617 ;--------------------------------------------------------
                                    618 ; paged external ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area PSEG    (PAG,XDATA)
                                    621 ;--------------------------------------------------------
                                    622 ; external ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area XSEG    (XDATA)
                           00E400   625 _GPIF_WAVE_DATA	=	0xe400
                           00E480   626 _RES_WAVEDATA_END	=	0xe480
                           00E600   627 _CPUCS	=	0xe600
                           00E601   628 _IFCONFIG	=	0xe601
                           00E602   629 _PINFLAGSAB	=	0xe602
                           00E603   630 _PINFLAGSCD	=	0xe603
                           00E604   631 _FIFORESET	=	0xe604
                           00E605   632 _BREAKPT	=	0xe605
                           00E606   633 _BPADDRH	=	0xe606
                           00E607   634 _BPADDRL	=	0xe607
                           00E608   635 _UART230	=	0xe608
                           00E609   636 _FIFOPINPOLAR	=	0xe609
                           00E60A   637 _REVID	=	0xe60a
                           00E60B   638 _REVCTL	=	0xe60b
                           00E610   639 _EP1OUTCFG	=	0xe610
                           00E611   640 _EP1INCFG	=	0xe611
                           00E612   641 _EP2CFG	=	0xe612
                           00E613   642 _EP4CFG	=	0xe613
                           00E614   643 _EP6CFG	=	0xe614
                           00E615   644 _EP8CFG	=	0xe615
                           00E618   645 _EP2FIFOCFG	=	0xe618
                           00E619   646 _EP4FIFOCFG	=	0xe619
                           00E61A   647 _EP6FIFOCFG	=	0xe61a
                           00E61B   648 _EP8FIFOCFG	=	0xe61b
                           00E620   649 _EP2AUTOINLENH	=	0xe620
                           00E621   650 _EP2AUTOINLENL	=	0xe621
                           00E622   651 _EP4AUTOINLENH	=	0xe622
                           00E623   652 _EP4AUTOINLENL	=	0xe623
                           00E624   653 _EP6AUTOINLENH	=	0xe624
                           00E625   654 _EP6AUTOINLENL	=	0xe625
                           00E626   655 _EP8AUTOINLENH	=	0xe626
                           00E627   656 _EP8AUTOINLENL	=	0xe627
                           00E630   657 _EP2FIFOPFH	=	0xe630
                           00E631   658 _EP2FIFOPFL	=	0xe631
                           00E632   659 _EP4FIFOPFH	=	0xe632
                           00E633   660 _EP4FIFOPFL	=	0xe633
                           00E634   661 _EP6FIFOPFH	=	0xe634
                           00E635   662 _EP6FIFOPFL	=	0xe635
                           00E636   663 _EP8FIFOPFH	=	0xe636
                           00E637   664 _EP8FIFOPFL	=	0xe637
                           00E640   665 _EP2ISOINPKTS	=	0xe640
                           00E641   666 _EP4ISOINPKTS	=	0xe641
                           00E642   667 _EP6ISOINPKTS	=	0xe642
                           00E643   668 _EP8ISOINPKTS	=	0xe643
                           00E648   669 _INPKTEND	=	0xe648
                           00E649   670 _OUTPKTEND	=	0xe649
                           00E650   671 _EP2FIFOIE	=	0xe650
                           00E651   672 _EP2FIFOIRQ	=	0xe651
                           00E652   673 _EP4FIFOIE	=	0xe652
                           00E653   674 _EP4FIFOIRQ	=	0xe653
                           00E654   675 _EP6FIFOIE	=	0xe654
                           00E655   676 _EP6FIFOIRQ	=	0xe655
                           00E656   677 _EP8FIFOIE	=	0xe656
                           00E657   678 _EP8FIFOIRQ	=	0xe657
                           00E658   679 _IBNIE	=	0xe658
                           00E659   680 _IBNIRQ	=	0xe659
                           00E65A   681 _NAKIE	=	0xe65a
                           00E65B   682 _NAKIRQ	=	0xe65b
                           00E65C   683 _USBIE	=	0xe65c
                           00E65D   684 _USBIRQ	=	0xe65d
                           00E65E   685 _EPIE	=	0xe65e
                           00E65F   686 _EPIRQ	=	0xe65f
                           00E660   687 _GPIFIE	=	0xe660
                           00E661   688 _GPIFIRQ	=	0xe661
                           00E662   689 _USBERRIE	=	0xe662
                           00E663   690 _USBERRIRQ	=	0xe663
                           00E664   691 _ERRCNTLIM	=	0xe664
                           00E665   692 _CLRERRCNT	=	0xe665
                           00E666   693 _INT2IVEC	=	0xe666
                           00E667   694 _INT4IVEC	=	0xe667
                           00E668   695 _INTSETUP	=	0xe668
                           00E670   696 _PORTACFG	=	0xe670
                           00E671   697 _PORTCCFG	=	0xe671
                           00E672   698 _PORTECFG	=	0xe672
                           00E678   699 _I2CS	=	0xe678
                           00E679   700 _I2DAT	=	0xe679
                           00E67A   701 _I2CTL	=	0xe67a
                           00E67B   702 _XAUTODAT1	=	0xe67b
                           00E67C   703 _XAUTODAT2	=	0xe67c
                           00E680   704 _USBCS	=	0xe680
                           00E681   705 _SUSPEND	=	0xe681
                           00E682   706 _WAKEUPCS	=	0xe682
                           00E683   707 _TOGCTL	=	0xe683
                           00E684   708 _USBFRAMEH	=	0xe684
                           00E685   709 _USBFRAMEL	=	0xe685
                           00E686   710 _MICROFRAME	=	0xe686
                           00E687   711 _FNADDR	=	0xe687
                           00E68A   712 _EP0BCH	=	0xe68a
                           00E68B   713 _EP0BCL	=	0xe68b
                           00E68D   714 _EP1OUTBC	=	0xe68d
                           00E68F   715 _EP1INBC	=	0xe68f
                           00E690   716 _EP2BCH	=	0xe690
                           00E691   717 _EP2BCL	=	0xe691
                           00E694   718 _EP4BCH	=	0xe694
                           00E695   719 _EP4BCL	=	0xe695
                           00E698   720 _EP6BCH	=	0xe698
                           00E699   721 _EP6BCL	=	0xe699
                           00E69C   722 _EP8BCH	=	0xe69c
                           00E69D   723 _EP8BCL	=	0xe69d
                           00E6A0   724 _EP0CS	=	0xe6a0
                           00E6A1   725 _EP1OUTCS	=	0xe6a1
                           00E6A2   726 _EP1INCS	=	0xe6a2
                           00E6A3   727 _EP2CS	=	0xe6a3
                           00E6A4   728 _EP4CS	=	0xe6a4
                           00E6A5   729 _EP6CS	=	0xe6a5
                           00E6A6   730 _EP8CS	=	0xe6a6
                           00E6A7   731 _EP2FIFOFLGS	=	0xe6a7
                           00E6A8   732 _EP4FIFOFLGS	=	0xe6a8
                           00E6A9   733 _EP6FIFOFLGS	=	0xe6a9
                           00E6AA   734 _EP8FIFOFLGS	=	0xe6aa
                           00E6AB   735 _EP2FIFOBCH	=	0xe6ab
                           00E6AC   736 _EP2FIFOBCL	=	0xe6ac
                           00E6AD   737 _EP4FIFOBCH	=	0xe6ad
                           00E6AE   738 _EP4FIFOBCL	=	0xe6ae
                           00E6AF   739 _EP6FIFOBCH	=	0xe6af
                           00E6B0   740 _EP6FIFOBCL	=	0xe6b0
                           00E6B1   741 _EP8FIFOBCH	=	0xe6b1
                           00E6B2   742 _EP8FIFOBCL	=	0xe6b2
                           00E6B3   743 _SUDPTRH	=	0xe6b3
                           00E6B4   744 _SUDPTRL	=	0xe6b4
                           00E6B5   745 _SUDPTRCTL	=	0xe6b5
                           00E6B8   746 _SETUPDAT	=	0xe6b8
                           00E6C0   747 _GPIFWFSELECT	=	0xe6c0
                           00E6C1   748 _GPIFIDLECS	=	0xe6c1
                           00E6C2   749 _GPIFIDLECTL	=	0xe6c2
                           00E6C3   750 _GPIFCTLCFG	=	0xe6c3
                           00E6C4   751 _GPIFADRH	=	0xe6c4
                           00E6C5   752 _GPIFADRL	=	0xe6c5
                           00E6CE   753 _GPIFTCB3	=	0xe6ce
                           00E6CF   754 _GPIFTCB2	=	0xe6cf
                           00E6D0   755 _GPIFTCB1	=	0xe6d0
                           00E6D1   756 _GPIFTCB0	=	0xe6d1
                           00E6D2   757 _EP2GPIFFLGSEL	=	0xe6d2
                           00E6D3   758 _EP2GPIFPFSTOP	=	0xe6d3
                           00E6D4   759 _EP2GPIFTRIG	=	0xe6d4
                           00E6DA   760 _EP4GPIFFLGSEL	=	0xe6da
                           00E6DB   761 _EP4GPIFPFSTOP	=	0xe6db
                           00E6DC   762 _EP4GPIFTRIG	=	0xe6dc
                           00E6E2   763 _EP6GPIFFLGSEL	=	0xe6e2
                           00E6E3   764 _EP6GPIFPFSTOP	=	0xe6e3
                           00E6E4   765 _EP6GPIFTRIG	=	0xe6e4
                           00E6EA   766 _EP8GPIFFLGSEL	=	0xe6ea
                           00E6EB   767 _EP8GPIFPFSTOP	=	0xe6eb
                           00E6EC   768 _EP8GPIFTRIG	=	0xe6ec
                           00E6F0   769 _XGPIFSGLDATH	=	0xe6f0
                           00E6F1   770 _XGPIFSGLDATLX	=	0xe6f1
                           00E6F2   771 _XGPIFSGLDATLNOX	=	0xe6f2
                           00E6F3   772 _GPIFREADYCFG	=	0xe6f3
                           00E6F4   773 _GPIFREADYSTAT	=	0xe6f4
                           00E6F5   774 _GPIFABORT	=	0xe6f5
                           00E6C6   775 _FLOWSTATE	=	0xe6c6
                           00E6C7   776 _FLOWLOGIC	=	0xe6c7
                           00E6C8   777 _FLOWEQ0CTL	=	0xe6c8
                           00E6C9   778 _FLOWEQ1CTL	=	0xe6c9
                           00E6CA   779 _FLOWHOLDOFF	=	0xe6ca
                           00E6CB   780 _FLOWSTB	=	0xe6cb
                           00E6CC   781 _FLOWSTBEDGE	=	0xe6cc
                           00E6CD   782 _FLOWSTBHPERIOD	=	0xe6cd
                           00E60C   783 _GPIFHOLDAMOUNT	=	0xe60c
                           00E67D   784 _UDMACRCH	=	0xe67d
                           00E67E   785 _UDMACRCL	=	0xe67e
                           00E67F   786 _UDMACRCQUAL	=	0xe67f
                           00E6F8   787 _DBUG	=	0xe6f8
                           00E6F9   788 _TESTCFG	=	0xe6f9
                           00E6FA   789 _USBTEST	=	0xe6fa
                           00E6FB   790 _CT1	=	0xe6fb
                           00E6FC   791 _CT2	=	0xe6fc
                           00E6FD   792 _CT3	=	0xe6fd
                           00E6FE   793 _CT4	=	0xe6fe
                           00E740   794 _EP0BUF	=	0xe740
                           00E780   795 _EP1OUTBUF	=	0xe780
                           00E7C0   796 _EP1INBUF	=	0xe7c0
                           00F000   797 _EP2FIFOBUF	=	0xf000
                           00F400   798 _EP4FIFOBUF	=	0xf400
                           00F800   799 _EP6FIFOBUF	=	0xf800
                           00FC00   800 _EP8FIFOBUF	=	0xfc00
                           00E628   801 _ECCCFG	=	0xe628
                           00E629   802 _ECCRESET	=	0xe629
                           00E62A   803 _ECC1B0	=	0xe62a
                           00E62B   804 _ECC1B1	=	0xe62b
                           00E62C   805 _ECC1B2	=	0xe62c
                           00E62D   806 _ECC2B0	=	0xe62d
                           00E62E   807 _ECC2B1	=	0xe62e
                           00E62F   808 _ECC2B2	=	0xe62f
                           00E50D   809 _GPCR2	=	0xe50d
                                    810 ;--------------------------------------------------------
                                    811 ; absolute external ram data
                                    812 ;--------------------------------------------------------
                                    813 	.area XABS    (ABS,XDATA)
                                    814 ;--------------------------------------------------------
                                    815 ; external initialized ram data
                                    816 ;--------------------------------------------------------
                                    817 	.area XISEG   (XDATA)
                                    818 	.area HOME    (CODE)
                                    819 	.area GSINIT0 (CODE)
                                    820 	.area GSINIT1 (CODE)
                                    821 	.area GSINIT2 (CODE)
                                    822 	.area GSINIT3 (CODE)
                                    823 	.area GSINIT4 (CODE)
                                    824 	.area GSINIT5 (CODE)
                                    825 	.area GSINIT  (CODE)
                                    826 	.area GSFINAL (CODE)
                                    827 	.area CSEG    (CODE)
                                    828 ;--------------------------------------------------------
                                    829 ; interrupt vector 
                                    830 ;--------------------------------------------------------
                                    831 	.area HOME    (CODE)
      000000                        832 __interrupt_vect:
      000000 02 00 39         [24]  833 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  834 	reti
      000004                        835 	.ds	7
      00000B 32               [24]  836 	reti
      00000C                        837 	.ds	7
      000013 32               [24]  838 	reti
      000014                        839 	.ds	7
      00001B 32               [24]  840 	reti
      00001C                        841 	.ds	7
      000023 32               [24]  842 	reti
      000024                        843 	.ds	7
      00002B 32               [24]  844 	reti
      00002C                        845 	.ds	7
      000033 02 05 6B         [24]  846 	ljmp	_resume_isr
                                    847 ;--------------------------------------------------------
                                    848 ; global & static initialisations
                                    849 ;--------------------------------------------------------
                                    850 	.area HOME    (CODE)
                                    851 	.area GSINIT  (CODE)
                                    852 	.area GSFINAL (CODE)
                                    853 	.area GSINIT  (CODE)
                                    854 	.globl __sdcc_gsinit_startup
                                    855 	.globl __sdcc_program_startup
                                    856 	.globl __start__stack
                                    857 	.globl __mcs51_genXINIT
                                    858 	.globl __mcs51_genXRAMCLEAR
                                    859 	.globl __mcs51_genRAMCLEAR
                                    860 	.area GSFINAL (CODE)
      000092 02 00 36         [24]  861 	ljmp	__sdcc_program_startup
                                    862 ;--------------------------------------------------------
                                    863 ; Home
                                    864 ;--------------------------------------------------------
                                    865 	.area HOME    (CODE)
                                    866 	.area HOME    (CODE)
      000036                        867 __sdcc_program_startup:
      000036 02 00 95         [24]  868 	ljmp	_main
                                    869 ;	return from main will return to caller
                                    870 ;--------------------------------------------------------
                                    871 ; code
                                    872 ;--------------------------------------------------------
                                    873 	.area CSEG    (CODE)
                                    874 ;------------------------------------------------------------
                                    875 ;Allocation info for local variables in function 'main'
                                    876 ;------------------------------------------------------------
                                    877 ;i                         Allocated with name '_main_i_65536_33'
                                    878 ;offset                    Allocated to registers r6 r7 
                                    879 ;DevDescrLen               Allocated to registers 
                                    880 ;j                         Allocated to registers 
                                    881 ;IntDescrAddr              Allocated to registers 
                                    882 ;ExtDescrAddr              Allocated with name '_main_ExtDescrAddr_65536_33'
                                    883 ;------------------------------------------------------------
                                    884 ;	fw.c:76: void main(void)
                                    885 ;	-----------------------------------------
                                    886 ;	 function main
                                    887 ;	-----------------------------------------
      000095                        888 _main:
                           000007   889 	ar7 = 0x07
                           000006   890 	ar6 = 0x06
                           000005   891 	ar5 = 0x05
                           000004   892 	ar4 = 0x04
                           000003   893 	ar3 = 0x03
                           000002   894 	ar2 = 0x02
                           000001   895 	ar1 = 0x01
                           000000   896 	ar0 = 0x00
                                    897 ;	fw.c:86: Sleep = FALSE;               // Disable sleep mode
                                    898 ;	assignBit
      000095 C2 02            [12]  899 	clr	_Sleep
                                    900 ;	fw.c:87: Rwuen = FALSE;               // Disable remote wakeup
                                    901 ;	assignBit
      000097 C2 00            [12]  902 	clr	_Rwuen
                                    903 ;	fw.c:88: Selfpwr = FALSE;            // Disable self powered
                                    904 ;	assignBit
      000099 C2 01            [12]  905 	clr	_Selfpwr
                                    906 ;	fw.c:89: GotSUD = FALSE;               // Clear "Got setup data" flag
      00009B 75 08 00         [24]  907 	mov	_GotSUD,#0x00
                                    908 ;	fw.c:92: TD_Init();
      00009E 12 00 00         [24]  909 	lcall	_TD_Init
                                    910 ;	fw.c:101: pDeviceDscr = (WORD)&DeviceDscr;
      0000A1 75 09 00         [24]  911 	mov	_pDeviceDscr,#_DeviceDscr
      0000A4 75 0A 00         [24]  912 	mov	(_pDeviceDscr + 1),#(_DeviceDscr >> 8)
                                    913 ;	fw.c:102: pDeviceQualDscr = (WORD)&DeviceQualDscr;
      0000A7 75 0B 00         [24]  914 	mov	_pDeviceQualDscr,#_DeviceQualDscr
      0000AA 75 0C 00         [24]  915 	mov	(_pDeviceQualDscr + 1),#(_DeviceQualDscr >> 8)
                                    916 ;	fw.c:103: pHighSpeedConfigDscr = (WORD)&HighSpeedConfigDscr;
      0000AD 75 0D 00         [24]  917 	mov	_pHighSpeedConfigDscr,#_HighSpeedConfigDscr
      0000B0 75 0E 00         [24]  918 	mov	(_pHighSpeedConfigDscr + 1),#(_HighSpeedConfigDscr >> 8)
                                    919 ;	fw.c:104: pFullSpeedConfigDscr = (WORD)&FullSpeedConfigDscr;
      0000B3 75 0F 00         [24]  920 	mov	_pFullSpeedConfigDscr,#_FullSpeedConfigDscr
      0000B6 75 10 00         [24]  921 	mov	(_pFullSpeedConfigDscr + 1),#(_FullSpeedConfigDscr >> 8)
                                    922 ;	fw.c:105: pStringDscr = (WORD)&StringDscr;
      0000B9 75 15 00         [24]  923 	mov	_pStringDscr,#_StringDscr
      0000BC 75 16 00         [24]  924 	mov	(_pStringDscr + 1),#(_StringDscr >> 8)
                                    925 ;	fw.c:112: if ((WORD)&DeviceDscr & 0xC000)
      0000BF 7E 00            [12]  926 	mov	r6,#_DeviceDscr
      0000C1 74 00            [12]  927 	mov	a,#(_DeviceDscr >> 8)
      0000C3 FF               [12]  928 	mov	r7,a
      0000C4 54 C0            [12]  929 	anl	a,#0xc0
      0000C6 70 03            [24]  930 	jnz	00176$
      0000C8 02 01 7B         [24]  931 	ljmp	00103$
      0000CB                        932 00176$:
                                    933 ;	fw.c:116: ExtDescrAddr = (WORD)&DeviceDscr;
      0000CB 75 1B 00         [24]  934 	mov	_main_ExtDescrAddr_65536_33,#_DeviceDscr
      0000CE 75 1C 00         [24]  935 	mov	(_main_ExtDescrAddr_65536_33 + 1),#(_DeviceDscr >> 8)
                                    936 ;	fw.c:117: DevDescrLen = (WORD)&UserDscr - (WORD)&DeviceDscr + 2;
      0000D1 7C 00            [12]  937 	mov	r4,#_UserDscr
      0000D3 7D 00            [12]  938 	mov	r5,#(_UserDscr >> 8)
      0000D5 7A 00            [12]  939 	mov	r2,#_DeviceDscr
      0000D7 7B 00            [12]  940 	mov	r3,#(_DeviceDscr >> 8)
      0000D9 EC               [12]  941 	mov	a,r4
      0000DA C3               [12]  942 	clr	c
      0000DB 9A               [12]  943 	subb	a,r2
      0000DC FC               [12]  944 	mov	r4,a
      0000DD ED               [12]  945 	mov	a,r5
      0000DE 9B               [12]  946 	subb	a,r3
      0000DF FD               [12]  947 	mov	r5,a
      0000E0 74 02            [12]  948 	mov	a,#0x02
      0000E2 2C               [12]  949 	add	a,r4
      0000E3 FC               [12]  950 	mov	r4,a
      0000E4 E4               [12]  951 	clr	a
      0000E5 3D               [12]  952 	addc	a,r5
      0000E6 FD               [12]  953 	mov	r5,a
                                    954 ;	fw.c:118: for (i = 0; i < DevDescrLen; i++)
      0000E7 E4               [12]  955 	clr	a
      0000E8 F5 17            [12]  956 	mov	_main_i_65536_33,a
      0000EA F5 18            [12]  957 	mov	(_main_i_65536_33 + 1),a
      0000EC                        958 00123$:
      0000EC C3               [12]  959 	clr	c
      0000ED E5 17            [12]  960 	mov	a,_main_i_65536_33
      0000EF 9C               [12]  961 	subb	a,r4
      0000F0 E5 18            [12]  962 	mov	a,(_main_i_65536_33 + 1)
      0000F2 9D               [12]  963 	subb	a,r5
      0000F3 50 32            [24]  964 	jnc	00101$
                                    965 ;	fw.c:119: *((BYTE __xdata *)IntDescrAddr+i) = *((BYTE __xdata *)ExtDescrAddr+i);
      0000F5 C0 04            [24]  966 	push	ar4
      0000F7 C0 05            [24]  967 	push	ar5
      0000F9 A8 17            [24]  968 	mov	r0,_main_i_65536_33
      0000FB A9 18            [24]  969 	mov	r1,(_main_i_65536_33 + 1)
      0000FD E4               [12]  970 	clr	a
      0000FE FE               [12]  971 	mov	r6,a
      0000FF 74 80            [12]  972 	mov	a,#0x80
      000101 28               [12]  973 	add	a,r0
      000102 FA               [12]  974 	mov	r2,a
      000103 E4               [12]  975 	clr	a
      000104 39               [12]  976 	addc	a,r1
      000105 FB               [12]  977 	mov	r3,a
      000106 AC 1B            [24]  978 	mov	r4,_main_ExtDescrAddr_65536_33
      000108 AD 1C            [24]  979 	mov	r5,(_main_ExtDescrAddr_65536_33 + 1)
      00010A E8               [12]  980 	mov	a,r0
      00010B 2C               [12]  981 	add	a,r4
      00010C F5 82            [12]  982 	mov	dpl,a
      00010E E9               [12]  983 	mov	a,r1
      00010F 3D               [12]  984 	addc	a,r5
      000110 F5 83            [12]  985 	mov	dph,a
      000112 E0               [24]  986 	movx	a,@dptr
      000113 FF               [12]  987 	mov	r7,a
      000114 8A 82            [24]  988 	mov	dpl,r2
      000116 8B 83            [24]  989 	mov	dph,r3
      000118 F0               [24]  990 	movx	@dptr,a
                                    991 ;	fw.c:118: for (i = 0; i < DevDescrLen; i++)
      000119 05 17            [12]  992 	inc	_main_i_65536_33
      00011B E4               [12]  993 	clr	a
      00011C B5 17 02         [24]  994 	cjne	a,_main_i_65536_33,00178$
      00011F 05 18            [12]  995 	inc	(_main_i_65536_33 + 1)
      000121                        996 00178$:
      000121 D0 05            [24]  997 	pop	ar5
      000123 D0 04            [24]  998 	pop	ar4
      000125 80 C5            [24]  999 	sjmp	00123$
      000127                       1000 00101$:
                                   1001 ;	fw.c:122: pDeviceDscr = IntDescrAddr;
      000127 75 09 80         [24] 1002 	mov	_pDeviceDscr,#0x80
      00012A 75 0A 00         [24] 1003 	mov	(_pDeviceDscr + 1),#0x00
                                   1004 ;	fw.c:123: offset = (WORD)&DeviceDscr - INTERNAL_DSCR_ADDR;
      00012D 7E 00            [12] 1005 	mov	r6,#_DeviceDscr
      00012F 7F 00            [12] 1006 	mov	r7,#(_DeviceDscr >> 8)
      000131 EE               [12] 1007 	mov	a,r6
      000132 24 80            [12] 1008 	add	a,#0x80
      000134 FE               [12] 1009 	mov	r6,a
      000135 EF               [12] 1010 	mov	a,r7
      000136 34 FF            [12] 1011 	addc	a,#0xff
      000138 FF               [12] 1012 	mov	r7,a
                                   1013 ;	fw.c:124: pDeviceQualDscr -= offset;
      000139 E5 0B            [12] 1014 	mov	a,_pDeviceQualDscr
      00013B C3               [12] 1015 	clr	c
      00013C 9E               [12] 1016 	subb	a,r6
      00013D F5 0B            [12] 1017 	mov	_pDeviceQualDscr,a
      00013F E5 0C            [12] 1018 	mov	a,(_pDeviceQualDscr + 1)
      000141 9F               [12] 1019 	subb	a,r7
      000142 F5 0C            [12] 1020 	mov	(_pDeviceQualDscr + 1),a
                                   1021 ;	fw.c:125: pConfigDscr -= offset;
      000144 E5 11            [12] 1022 	mov	a,_pConfigDscr
      000146 C3               [12] 1023 	clr	c
      000147 9E               [12] 1024 	subb	a,r6
      000148 F5 11            [12] 1025 	mov	_pConfigDscr,a
      00014A E5 12            [12] 1026 	mov	a,(_pConfigDscr + 1)
      00014C 9F               [12] 1027 	subb	a,r7
      00014D F5 12            [12] 1028 	mov	(_pConfigDscr + 1),a
                                   1029 ;	fw.c:126: pOtherConfigDscr -= offset;
      00014F E5 13            [12] 1030 	mov	a,_pOtherConfigDscr
      000151 C3               [12] 1031 	clr	c
      000152 9E               [12] 1032 	subb	a,r6
      000153 F5 13            [12] 1033 	mov	_pOtherConfigDscr,a
      000155 E5 14            [12] 1034 	mov	a,(_pOtherConfigDscr + 1)
      000157 9F               [12] 1035 	subb	a,r7
      000158 F5 14            [12] 1036 	mov	(_pOtherConfigDscr + 1),a
                                   1037 ;	fw.c:127: pHighSpeedConfigDscr -= offset;
      00015A E5 0D            [12] 1038 	mov	a,_pHighSpeedConfigDscr
      00015C C3               [12] 1039 	clr	c
      00015D 9E               [12] 1040 	subb	a,r6
      00015E F5 0D            [12] 1041 	mov	_pHighSpeedConfigDscr,a
      000160 E5 0E            [12] 1042 	mov	a,(_pHighSpeedConfigDscr + 1)
      000162 9F               [12] 1043 	subb	a,r7
      000163 F5 0E            [12] 1044 	mov	(_pHighSpeedConfigDscr + 1),a
                                   1045 ;	fw.c:128: pFullSpeedConfigDscr -= offset;
      000165 E5 0F            [12] 1046 	mov	a,_pFullSpeedConfigDscr
      000167 C3               [12] 1047 	clr	c
      000168 9E               [12] 1048 	subb	a,r6
      000169 F5 0F            [12] 1049 	mov	_pFullSpeedConfigDscr,a
      00016B E5 10            [12] 1050 	mov	a,(_pFullSpeedConfigDscr + 1)
      00016D 9F               [12] 1051 	subb	a,r7
      00016E F5 10            [12] 1052 	mov	(_pFullSpeedConfigDscr + 1),a
                                   1053 ;	fw.c:129: pStringDscr -= offset;
      000170 E5 15            [12] 1054 	mov	a,_pStringDscr
      000172 C3               [12] 1055 	clr	c
      000173 9E               [12] 1056 	subb	a,r6
      000174 F5 15            [12] 1057 	mov	_pStringDscr,a
      000176 E5 16            [12] 1058 	mov	a,(_pStringDscr + 1)
      000178 9F               [12] 1059 	subb	a,r7
      000179 F5 16            [12] 1060 	mov	(_pStringDscr + 1),a
      00017B                       1061 00103$:
                                   1062 ;	fw.c:132: EZUSB_IRQ_ENABLE();            // Enable USB interrupt (INT2)
                                   1063 ;	assignBit
      00017B D2 E8            [12] 1064 	setb	_EUSB
                                   1065 ;	fw.c:133: EZUSB_ENABLE_RSMIRQ();            // Wake-up interrupt
      00017D 43 D8 20         [24] 1066 	orl	_EICON,#0x20
                                   1067 ;	fw.c:135: INTSETUP |= (bmAV2EN | bmAV4EN);     // Enable INT 2 & 4 autovectoring
      000180 90 E6 68         [24] 1068 	mov	dptr,#_INTSETUP
      000183 E0               [24] 1069 	movx	a,@dptr
      000184 43 E0 09         [24] 1070 	orl	acc,#0x09
      000187 F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	fw.c:137: USBIE |= bmSUDAV | bmSUTOK | bmSUSP | bmURES | bmHSGRANT;   // Enable selected interrupts
      000188 90 E6 5C         [24] 1073 	mov	dptr,#_USBIE
      00018B E0               [24] 1074 	movx	a,@dptr
      00018C 43 E0 3D         [24] 1075 	orl	acc,#0x3d
      00018F F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	fw.c:138: EA = 1;                  // Enable 8051 interrupts
                                   1078 ;	assignBit
      000190 D2 AF            [12] 1079 	setb	_EA
                                   1080 ;	fw.c:144: if(!(USBCS & bmRENUM))
      000192 90 E6 80         [24] 1081 	mov	dptr,#_USBCS
      000195 E0               [24] 1082 	movx	a,@dptr
      000196 20 E1 05         [24] 1083 	jb	acc.1,00105$
                                   1084 ;	fw.c:146: EZUSB_Discon(TRUE);   // renumerate
                                   1085 ;	assignBit
      000199 D2 00            [12] 1086 	setb	_EZUSB_Discon_PARM_1
      00019B 12 00 00         [24] 1087 	lcall	_EZUSB_Discon
      00019E                       1088 00105$:
                                   1089 ;	fw.c:153: USBCS &=~bmDISCON;
      00019E 90 E6 80         [24] 1090 	mov	dptr,#_USBCS
      0001A1 E0               [24] 1091 	movx	a,@dptr
      0001A2 53 E0 F7         [24] 1092 	anl	acc,#0xf7
      0001A5 F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	fw.c:155: CKCON = (CKCON&(~bmSTRETCH)) | FW_STRETCH_VALUE; // Set stretch
      0001A6 53 8E F8         [24] 1095 	anl	_CKCON,#0xf8
                                   1096 ;	fw.c:158: Sleep = FALSE;
                                   1097 ;	assignBit
      0001A9 C2 02            [12] 1098 	clr	_Sleep
                                   1099 ;	fw.c:161: while(TRUE)               // Main Loop
      0001AB                       1100 00120$:
                                   1101 ;	fw.c:164: TD_Poll();
      0001AB 12 00 00         [24] 1102 	lcall	_TD_Poll
                                   1103 ;	fw.c:167: if(GotSUD)
      0001AE E5 08            [12] 1104 	mov	a,_GotSUD
      0001B0 60 06            [24] 1105 	jz	00107$
                                   1106 ;	fw.c:169: SetupCommand();          // Implement setup command
      0001B2 12 01 F7         [24] 1107 	lcall	_SetupCommand
                                   1108 ;	fw.c:170: GotSUD = FALSE;          // Clear SETUP flag
      0001B5 75 08 00         [24] 1109 	mov	_GotSUD,#0x00
      0001B8                       1110 00107$:
                                   1111 ;	fw.c:178: if (Sleep)
      0001B8 30 02 F0         [24] 1112 	jnb	_Sleep,00120$
                                   1113 ;	fw.c:180: if(TD_Suspend())
      0001BB 12 00 00         [24] 1114 	lcall	_TD_Suspend
      0001BE 50 EB            [24] 1115 	jnc	00120$
                                   1116 ;	fw.c:182: Sleep = FALSE;     // Clear the "go to sleep" flag.  Do it here to prevent any race condition between wakeup and the next sleep.
                                   1117 ;	assignBit
      0001C0 C2 02            [12] 1118 	clr	_Sleep
                                   1119 ;	fw.c:183: do
      0001C2                       1120 00112$:
                                   1121 ;	fw.c:185: EZUSB_Susp();         // Place processor in idle mode.
      0001C2 12 00 00         [24] 1122 	lcall	_EZUSB_Susp
                                   1123 ;	fw.c:187: while(!Rwuen && EZUSB_EXTWAKEUP());
      0001C5 20 00 1C         [24] 1124 	jb	_Rwuen,00114$
      0001C8 90 E6 82         [24] 1125 	mov	dptr,#_WAKEUPCS
      0001CB E0               [24] 1126 	movx	a,@dptr
      0001CC 30 E7 07         [24] 1127 	jnb	acc.7,00110$
      0001CF 90 E6 82         [24] 1128 	mov	dptr,#_WAKEUPCS
      0001D2 E0               [24] 1129 	movx	a,@dptr
      0001D3 20 E1 EC         [24] 1130 	jb	acc.1,00112$
      0001D6                       1131 00110$:
      0001D6 90 E6 82         [24] 1132 	mov	dptr,#_WAKEUPCS
      0001D9 E0               [24] 1133 	movx	a,@dptr
      0001DA 30 E6 07         [24] 1134 	jnb	acc.6,00114$
      0001DD 90 E6 82         [24] 1135 	mov	dptr,#_WAKEUPCS
      0001E0 E0               [24] 1136 	movx	a,@dptr
      0001E1 20 E0 DE         [24] 1137 	jb	acc.0,00112$
      0001E4                       1138 00114$:
                                   1139 ;	fw.c:192: EZUSB_Resume();   // If source is the Wakeup# pin, signal the host to Resume.      
      0001E4 12 00 00         [24] 1140 	lcall	_EZUSB_Resume
                                   1141 ;	fw.c:193: TD_Resume();
      0001E7 12 00 00         [24] 1142 	lcall	_TD_Resume
                                   1143 ;	fw.c:198: }
      0001EA 80 BF            [24] 1144 	sjmp	00120$
                                   1145 ;------------------------------------------------------------
                                   1146 ;Allocation info for local variables in function 'HighSpeedCapable'
                                   1147 ;------------------------------------------------------------
                                   1148 ;	fw.c:200: BOOL HighSpeedCapable()
                                   1149 ;	-----------------------------------------
                                   1150 ;	 function HighSpeedCapable
                                   1151 ;	-----------------------------------------
      0001EC                       1152 _HighSpeedCapable:
                                   1153 ;	fw.c:206: if (GPCR2 & bmFULLSPEEDONLY)
      0001EC 90 E5 0D         [24] 1154 	mov	dptr,#_GPCR2
      0001EF E0               [24] 1155 	movx	a,@dptr
      0001F0 30 E4 02         [24] 1156 	jnb	acc.4,00102$
                                   1157 ;	fw.c:207: return FALSE;
      0001F3 C3               [12] 1158 	clr	c
      0001F4 22               [24] 1159 	ret
      0001F5                       1160 00102$:
                                   1161 ;	fw.c:209: return TRUE;
      0001F5 D3               [12] 1162 	setb	c
                                   1163 ;	fw.c:210: }   
      0001F6 22               [24] 1164 	ret
                                   1165 ;------------------------------------------------------------
                                   1166 ;Allocation info for local variables in function 'SetupCommand'
                                   1167 ;------------------------------------------------------------
                                   1168 ;dscr_ptr                  Allocated to registers r2 r3 r4 
                                   1169 ;------------------------------------------------------------
                                   1170 ;	fw.c:213: void SetupCommand(void)
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function SetupCommand
                                   1173 ;	-----------------------------------------
      0001F7                       1174 _SetupCommand:
                                   1175 ;	fw.c:217: switch(SETUPDAT[1])
      0001F7 90 E6 B9         [24] 1176 	mov	dptr,#(_SETUPDAT + 0x0001)
      0001FA E0               [24] 1177 	movx	a,@dptr
      0001FB FF               [12] 1178 	mov  r7,a
      0001FC 24 F4            [12] 1179 	add	a,#0xff - 0x0b
      0001FE 50 03            [24] 1180 	jnc	00256$
      000200 02 05 55         [24] 1181 	ljmp	00154$
      000203                       1182 00256$:
      000203 EF               [12] 1183 	mov	a,r7
      000204 24 0A            [12] 1184 	add	a,#(00257$-3-.)
      000206 83               [24] 1185 	movc	a,@a+pc
      000207 F5 82            [12] 1186 	mov	dpl,a
      000209 EF               [12] 1187 	mov	a,r7
      00020A 24 10            [12] 1188 	add	a,#(00258$-3-.)
      00020C 83               [24] 1189 	movc	a,@a+pc
      00020D F5 83            [12] 1190 	mov	dph,a
      00020F E4               [12] 1191 	clr	a
      000210 73               [24] 1192 	jmp	@a+dptr
      000211                       1193 00257$:
      000211 F6                    1194 	.db	00121$
      000212 B0                    1195 	.db	00129$
      000213 55                    1196 	.db	00154$
      000214 99                    1197 	.db	00141$
      000215 55                    1198 	.db	00154$
      000216 55                    1199 	.db	00154$
      000217 29                    1200 	.db	00101$
      000218 55                    1201 	.db	00154$
      000219 F0                    1202 	.db	00120$
      00021A EA                    1203 	.db	00119$
      00021B DE                    1204 	.db	00117$
      00021C E4                    1205 	.db	00118$
      00021D                       1206 00258$:
      00021D 02                    1207 	.db	00121$>>8
      00021E 03                    1208 	.db	00129$>>8
      00021F 05                    1209 	.db	00154$>>8
      000220 04                    1210 	.db	00141$>>8
      000221 05                    1211 	.db	00154$>>8
      000222 05                    1212 	.db	00154$>>8
      000223 02                    1213 	.db	00101$>>8
      000224 05                    1214 	.db	00154$>>8
      000225 02                    1215 	.db	00120$>>8
      000226 02                    1216 	.db	00119$>>8
      000227 02                    1217 	.db	00117$>>8
      000228 02                    1218 	.db	00118$>>8
                                   1219 ;	fw.c:219: case SC_GET_DESCRIPTOR:                  // *** Get Descriptor
      000229                       1220 00101$:
                                   1221 ;	fw.c:220: if(DR_GetDescriptor())
      000229 12 00 00         [24] 1222 	lcall	_DR_GetDescriptor
      00022C 40 03            [24] 1223 	jc	00259$
      00022E 02 05 62         [24] 1224 	ljmp	00157$
      000231                       1225 00259$:
                                   1226 ;	fw.c:221: switch(SETUPDAT[3])         
      000231 90 E6 BB         [24] 1227 	mov	dptr,#(_SETUPDAT + 0x0003)
      000234 E0               [24] 1228 	movx	a,@dptr
      000235 FF               [12] 1229 	mov	r7,a
      000236 BF 01 02         [24] 1230 	cjne	r7,#0x01,00260$
      000239 80 17            [24] 1231 	sjmp	00102$
      00023B                       1232 00260$:
      00023B BF 02 02         [24] 1233 	cjne	r7,#0x02,00261$
      00023E 80 40            [24] 1234 	sjmp	00107$
      000240                       1235 00261$:
      000240 BF 03 02         [24] 1236 	cjne	r7,#0x03,00262$
      000243 80 59            [24] 1237 	sjmp	00109$
      000245                       1238 00262$:
      000245 BF 06 02         [24] 1239 	cjne	r7,#0x06,00263$
      000248 80 17            [24] 1240 	sjmp	00103$
      00024A                       1241 00263$:
      00024A BF 07 02         [24] 1242 	cjne	r7,#0x07,00264$
      00024D 80 40            [24] 1243 	sjmp	00108$
      00024F                       1244 00264$:
      00024F 02 02 D3         [24] 1245 	ljmp	00113$
                                   1246 ;	fw.c:223: case GD_DEVICE:            // Device
      000252                       1247 00102$:
                                   1248 ;	fw.c:224: SUDPTRH = MSB(pDeviceDscr);
      000252 90 E6 B3         [24] 1249 	mov	dptr,#_SUDPTRH
      000255 E5 0A            [12] 1250 	mov	a,(_pDeviceDscr + 1)
      000257 F0               [24] 1251 	movx	@dptr,a
                                   1252 ;	fw.c:225: SUDPTRL = LSB(pDeviceDscr);
      000258 90 E6 B4         [24] 1253 	mov	dptr,#_SUDPTRL
      00025B E5 09            [12] 1254 	mov	a,_pDeviceDscr
      00025D F0               [24] 1255 	movx	@dptr,a
                                   1256 ;	fw.c:226: break;
      00025E 02 05 62         [24] 1257 	ljmp	00157$
                                   1258 ;	fw.c:227: case GD_DEVICE_QUALIFIER:            // Device Qualifier
      000261                       1259 00103$:
                                   1260 ;	fw.c:230: if (HighSpeedCapable())
      000261 12 01 EC         [24] 1261 	lcall	_HighSpeedCapable
      000264 50 0F            [24] 1262 	jnc	00105$
                                   1263 ;	fw.c:232: SUDPTRH = MSB(pDeviceQualDscr);
      000266 90 E6 B3         [24] 1264 	mov	dptr,#_SUDPTRH
      000269 E5 0C            [12] 1265 	mov	a,(_pDeviceQualDscr + 1)
      00026B F0               [24] 1266 	movx	@dptr,a
                                   1267 ;	fw.c:233: SUDPTRL = LSB(pDeviceQualDscr);
      00026C 90 E6 B4         [24] 1268 	mov	dptr,#_SUDPTRL
      00026F E5 0B            [12] 1269 	mov	a,_pDeviceQualDscr
      000271 F0               [24] 1270 	movx	@dptr,a
      000272 02 05 62         [24] 1271 	ljmp	00157$
      000275                       1272 00105$:
                                   1273 ;	fw.c:237: EZUSB_STALL_EP0();
      000275 90 E6 A0         [24] 1274 	mov	dptr,#_EP0CS
      000278 E0               [24] 1275 	movx	a,@dptr
      000279 43 E0 01         [24] 1276 	orl	acc,#0x01
      00027C F0               [24] 1277 	movx	@dptr,a
                                   1278 ;	fw.c:239: break;
      00027D 02 05 62         [24] 1279 	ljmp	00157$
                                   1280 ;	fw.c:240: case GD_CONFIGURATION:         // Configuration
      000280                       1281 00107$:
                                   1282 ;	fw.c:241: SUDPTRH = MSB(pConfigDscr);
      000280 90 E6 B3         [24] 1283 	mov	dptr,#_SUDPTRH
      000283 E5 12            [12] 1284 	mov	a,(_pConfigDscr + 1)
      000285 F0               [24] 1285 	movx	@dptr,a
                                   1286 ;	fw.c:242: SUDPTRL = LSB(pConfigDscr);
      000286 90 E6 B4         [24] 1287 	mov	dptr,#_SUDPTRL
      000289 E5 11            [12] 1288 	mov	a,_pConfigDscr
      00028B F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	fw.c:243: break;
      00028C 02 05 62         [24] 1291 	ljmp	00157$
                                   1292 ;	fw.c:244: case GD_OTHER_SPEED_CONFIGURATION:  // Other Speed Configuration
      00028F                       1293 00108$:
                                   1294 ;	fw.c:245: SUDPTRH = MSB(pOtherConfigDscr);
      00028F 90 E6 B3         [24] 1295 	mov	dptr,#_SUDPTRH
      000292 E5 14            [12] 1296 	mov	a,(_pOtherConfigDscr + 1)
      000294 F0               [24] 1297 	movx	@dptr,a
                                   1298 ;	fw.c:246: SUDPTRL = LSB(pOtherConfigDscr);
      000295 90 E6 B4         [24] 1299 	mov	dptr,#_SUDPTRL
      000298 E5 13            [12] 1300 	mov	a,_pOtherConfigDscr
      00029A F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	fw.c:247: break;
      00029B 02 05 62         [24] 1303 	ljmp	00157$
                                   1304 ;	fw.c:248: case GD_STRING:            // String
      00029E                       1305 00109$:
                                   1306 ;	fw.c:249: if(dscr_ptr = (void *)EZUSB_GetStringDscr(SETUPDAT[2]))
      00029E 90 E6 BA         [24] 1307 	mov	dptr,#(_SETUPDAT + 0x0002)
      0002A1 E0               [24] 1308 	movx	a,@dptr
      0002A2 F5 82            [12] 1309 	mov	dpl,a
      0002A4 12 00 00         [24] 1310 	lcall	_EZUSB_GetStringDscr
      0002A7 AE 82            [24] 1311 	mov	r6,dpl
      0002A9 AF 83            [24] 1312 	mov	r7,dph
      0002AB 7D 00            [12] 1313 	mov	r5,#0x00
      0002AD 8E 02            [24] 1314 	mov	ar2,r6
      0002AF 8F 03            [24] 1315 	mov	ar3,r7
      0002B1 8D 04            [24] 1316 	mov	ar4,r5
      0002B3 EE               [12] 1317 	mov	a,r6
      0002B4 4F               [12] 1318 	orl	a,r7
      0002B5 60 11            [24] 1319 	jz	00111$
                                   1320 ;	fw.c:251: SUDPTRH = MSB(dscr_ptr);
      0002B7 8A 06            [24] 1321 	mov	ar6,r2
      0002B9 8B 07            [24] 1322 	mov	ar7,r3
      0002BB 90 E6 B3         [24] 1323 	mov	dptr,#_SUDPTRH
      0002BE EF               [12] 1324 	mov	a,r7
      0002BF F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	fw.c:252: SUDPTRL = LSB(dscr_ptr);
      0002C0 90 E6 B4         [24] 1327 	mov	dptr,#_SUDPTRL
      0002C3 EA               [12] 1328 	mov	a,r2
      0002C4 F0               [24] 1329 	movx	@dptr,a
      0002C5 02 05 62         [24] 1330 	ljmp	00157$
      0002C8                       1331 00111$:
                                   1332 ;	fw.c:255: EZUSB_STALL_EP0();   // Stall End Point 0
      0002C8 90 E6 A0         [24] 1333 	mov	dptr,#_EP0CS
      0002CB E0               [24] 1334 	movx	a,@dptr
      0002CC 43 E0 01         [24] 1335 	orl	acc,#0x01
      0002CF F0               [24] 1336 	movx	@dptr,a
                                   1337 ;	fw.c:256: break;
      0002D0 02 05 62         [24] 1338 	ljmp	00157$
                                   1339 ;	fw.c:257: default:            // Invalid request
      0002D3                       1340 00113$:
                                   1341 ;	fw.c:258: EZUSB_STALL_EP0();      // Stall End Point 0
      0002D3 90 E6 A0         [24] 1342 	mov	dptr,#_EP0CS
      0002D6 E0               [24] 1343 	movx	a,@dptr
      0002D7 43 E0 01         [24] 1344 	orl	acc,#0x01
      0002DA F0               [24] 1345 	movx	@dptr,a
                                   1346 ;	fw.c:260: break;
      0002DB 02 05 62         [24] 1347 	ljmp	00157$
                                   1348 ;	fw.c:261: case SC_GET_INTERFACE:                  // *** Get Interface
      0002DE                       1349 00117$:
                                   1350 ;	fw.c:262: DR_GetInterface();
      0002DE 12 00 00         [24] 1351 	lcall	_DR_GetInterface
                                   1352 ;	fw.c:263: break;
      0002E1 02 05 62         [24] 1353 	ljmp	00157$
                                   1354 ;	fw.c:264: case SC_SET_INTERFACE:                  // *** Set Interface
      0002E4                       1355 00118$:
                                   1356 ;	fw.c:265: DR_SetInterface();
      0002E4 12 00 00         [24] 1357 	lcall	_DR_SetInterface
                                   1358 ;	fw.c:266: break;
      0002E7 02 05 62         [24] 1359 	ljmp	00157$
                                   1360 ;	fw.c:267: case SC_SET_CONFIGURATION:               // *** Set Configuration
      0002EA                       1361 00119$:
                                   1362 ;	fw.c:268: DR_SetConfiguration();
      0002EA 12 00 00         [24] 1363 	lcall	_DR_SetConfiguration
                                   1364 ;	fw.c:269: break;
      0002ED 02 05 62         [24] 1365 	ljmp	00157$
                                   1366 ;	fw.c:270: case SC_GET_CONFIGURATION:               // *** Get Configuration
      0002F0                       1367 00120$:
                                   1368 ;	fw.c:271: DR_GetConfiguration();
      0002F0 12 00 00         [24] 1369 	lcall	_DR_GetConfiguration
                                   1370 ;	fw.c:272: break;
      0002F3 02 05 62         [24] 1371 	ljmp	00157$
                                   1372 ;	fw.c:273: case SC_GET_STATUS:                  // *** Get Status
      0002F6                       1373 00121$:
                                   1374 ;	fw.c:274: if(DR_GetStatus())
      0002F6 12 00 00         [24] 1375 	lcall	_DR_GetStatus
      0002F9 40 03            [24] 1376 	jc	00267$
      0002FB 02 05 62         [24] 1377 	ljmp	00157$
      0002FE                       1378 00267$:
                                   1379 ;	fw.c:275: switch(SETUPDAT[0])
      0002FE 90 E6 B8         [24] 1380 	mov	dptr,#_SETUPDAT
      000301 E0               [24] 1381 	movx	a,@dptr
      000302 FF               [12] 1382 	mov	r7,a
      000303 BF 80 02         [24] 1383 	cjne	r7,#0x80,00268$
      000306 80 0D            [24] 1384 	sjmp	00122$
      000308                       1385 00268$:
      000308 BF 81 02         [24] 1386 	cjne	r7,#0x81,00269$
      00030B 80 2E            [24] 1387 	sjmp	00123$
      00030D                       1388 00269$:
      00030D BF 82 02         [24] 1389 	cjne	r7,#0x82,00270$
      000310 80 3F            [24] 1390 	sjmp	00124$
      000312                       1391 00270$:
      000312 02 03 A5         [24] 1392 	ljmp	00125$
                                   1393 ;	fw.c:277: case GS_DEVICE:            // Device
      000315                       1394 00122$:
                                   1395 ;	fw.c:278: EP0BUF[0] = ((BYTE)Rwuen << 1) | (BYTE)Selfpwr;
      000315 A2 00            [12] 1396 	mov	c,_Rwuen
      000317 E4               [12] 1397 	clr	a
      000318 33               [12] 1398 	rlc	a
      000319 25 E0            [12] 1399 	add	a,acc
      00031B FF               [12] 1400 	mov	r7,a
      00031C A2 01            [12] 1401 	mov	c,_Selfpwr
      00031E E4               [12] 1402 	clr	a
      00031F 33               [12] 1403 	rlc	a
      000320 FE               [12] 1404 	mov	r6,a
      000321 EF               [12] 1405 	mov	a,r7
      000322 42 06            [12] 1406 	orl	ar6,a
      000324 90 E7 40         [24] 1407 	mov	dptr,#_EP0BUF
      000327 EE               [12] 1408 	mov	a,r6
      000328 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	fw.c:279: EP0BUF[1] = 0;
      000329 90 E7 41         [24] 1411 	mov	dptr,#(_EP0BUF + 0x0001)
      00032C E4               [12] 1412 	clr	a
      00032D F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	fw.c:280: EP0BCH = 0;
      00032E 90 E6 8A         [24] 1415 	mov	dptr,#_EP0BCH
      000331 F0               [24] 1416 	movx	@dptr,a
                                   1417 ;	fw.c:281: EP0BCL = 2;
      000332 90 E6 8B         [24] 1418 	mov	dptr,#_EP0BCL
      000335 74 02            [12] 1419 	mov	a,#0x02
      000337 F0               [24] 1420 	movx	@dptr,a
                                   1421 ;	fw.c:282: break;
      000338 02 05 62         [24] 1422 	ljmp	00157$
                                   1423 ;	fw.c:283: case GS_INTERFACE:         // Interface
      00033B                       1424 00123$:
                                   1425 ;	fw.c:284: EP0BUF[0] = 0;
      00033B 90 E7 40         [24] 1426 	mov	dptr,#_EP0BUF
      00033E E4               [12] 1427 	clr	a
      00033F F0               [24] 1428 	movx	@dptr,a
                                   1429 ;	fw.c:285: EP0BUF[1] = 0;
      000340 90 E7 41         [24] 1430 	mov	dptr,#(_EP0BUF + 0x0001)
      000343 F0               [24] 1431 	movx	@dptr,a
                                   1432 ;	fw.c:286: EP0BCH = 0;
      000344 90 E6 8A         [24] 1433 	mov	dptr,#_EP0BCH
      000347 F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	fw.c:287: EP0BCL = 2;
      000348 90 E6 8B         [24] 1436 	mov	dptr,#_EP0BCL
      00034B 74 02            [12] 1437 	mov	a,#0x02
      00034D F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	fw.c:288: break;
      00034E 02 05 62         [24] 1440 	ljmp	00157$
                                   1441 ;	fw.c:289: case GS_ENDPOINT:         // End Point
      000351                       1442 00124$:
                                   1443 ;	fw.c:290: EP0BUF[0] = *(BYTE __xdata *) epcs(SETUPDAT[4]) & bmEPSTALL;
      000351 90 E6 BC         [24] 1444 	mov	dptr,#(_SETUPDAT + 0x0004)
      000354 E0               [24] 1445 	movx	a,@dptr
      000355 FF               [12] 1446 	mov	r7,a
      000356 53 07 7E         [24] 1447 	anl	ar7,#0x7e
      000359 7E 00            [12] 1448 	mov	r6,#0x00
      00035B 90 E6 BC         [24] 1449 	mov	dptr,#(_SETUPDAT + 0x0004)
      00035E E0               [24] 1450 	movx	a,@dptr
      00035F FD               [12] 1451 	mov	r5,a
      000360 C3               [12] 1452 	clr	c
      000361 74 80            [12] 1453 	mov	a,#0x80
      000363 9D               [12] 1454 	subb	a,r5
      000364 E4               [12] 1455 	clr	a
      000365 33               [12] 1456 	rlc	a
      000366 FD               [12] 1457 	mov	r5,a
      000367 7C 00            [12] 1458 	mov	r4,#0x00
      000369 42 07            [12] 1459 	orl	ar7,a
      00036B EC               [12] 1460 	mov	a,r4
      00036C 42 06            [12] 1461 	orl	ar6,a
      00036E EF               [12] 1462 	mov	a,r7
      00036F 24 73            [12] 1463 	add	a,#_EPCS_Offset_Lookup_Table
      000371 F5 82            [12] 1464 	mov	dpl,a
      000373 EE               [12] 1465 	mov	a,r6
      000374 34 05            [12] 1466 	addc	a,#(_EPCS_Offset_Lookup_Table >> 8)
      000376 F5 83            [12] 1467 	mov	dph,a
      000378 E4               [12] 1468 	clr	a
      000379 93               [24] 1469 	movc	a,@a+dptr
      00037A FF               [12] 1470 	mov	r7,a
      00037B 7E 00            [12] 1471 	mov	r6,#0x00
      00037D 74 A1            [12] 1472 	mov	a,#0xa1
      00037F 2F               [12] 1473 	add	a,r7
      000380 FF               [12] 1474 	mov	r7,a
      000381 74 E6            [12] 1475 	mov	a,#0xe6
      000383 3E               [12] 1476 	addc	a,r6
      000384 FE               [12] 1477 	mov	r6,a
      000385 8F 82            [24] 1478 	mov	dpl,r7
      000387 8E 83            [24] 1479 	mov	dph,r6
      000389 E0               [24] 1480 	movx	a,@dptr
      00038A FF               [12] 1481 	mov	r7,a
      00038B 53 07 01         [24] 1482 	anl	ar7,#0x01
      00038E 90 E7 40         [24] 1483 	mov	dptr,#_EP0BUF
      000391 EF               [12] 1484 	mov	a,r7
      000392 F0               [24] 1485 	movx	@dptr,a
                                   1486 ;	fw.c:291: EP0BUF[1] = 0;
      000393 90 E7 41         [24] 1487 	mov	dptr,#(_EP0BUF + 0x0001)
      000396 E4               [12] 1488 	clr	a
      000397 F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	fw.c:292: EP0BCH = 0;
      000398 90 E6 8A         [24] 1491 	mov	dptr,#_EP0BCH
      00039B F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	fw.c:293: EP0BCL = 2;
      00039C 90 E6 8B         [24] 1494 	mov	dptr,#_EP0BCL
      00039F 74 02            [12] 1495 	mov	a,#0x02
      0003A1 F0               [24] 1496 	movx	@dptr,a
                                   1497 ;	fw.c:294: break;
      0003A2 02 05 62         [24] 1498 	ljmp	00157$
                                   1499 ;	fw.c:295: default:            // Invalid Command
      0003A5                       1500 00125$:
                                   1501 ;	fw.c:296: EZUSB_STALL_EP0();      // Stall End Point 0
      0003A5 90 E6 A0         [24] 1502 	mov	dptr,#_EP0CS
      0003A8 E0               [24] 1503 	movx	a,@dptr
      0003A9 43 E0 01         [24] 1504 	orl	acc,#0x01
      0003AC F0               [24] 1505 	movx	@dptr,a
                                   1506 ;	fw.c:298: break;
      0003AD 02 05 62         [24] 1507 	ljmp	00157$
                                   1508 ;	fw.c:299: case SC_CLEAR_FEATURE:                  // *** Clear Feature
      0003B0                       1509 00129$:
                                   1510 ;	fw.c:300: if(DR_ClearFeature())
      0003B0 12 00 00         [24] 1511 	lcall	_DR_ClearFeature
      0003B3 40 03            [24] 1512 	jc	00271$
      0003B5 02 05 62         [24] 1513 	ljmp	00157$
      0003B8                       1514 00271$:
                                   1515 ;	fw.c:301: switch(SETUPDAT[0])
      0003B8 90 E6 B8         [24] 1516 	mov	dptr,#_SETUPDAT
      0003BB E0               [24] 1517 	movx	a,@dptr
      0003BC FF               [12] 1518 	mov	r7,a
      0003BD 60 08            [24] 1519 	jz	00130$
      0003BF BF 02 02         [24] 1520 	cjne	r7,#0x02,00273$
      0003C2 80 1B            [24] 1521 	sjmp	00134$
      0003C4                       1522 00273$:
      0003C4 02 05 62         [24] 1523 	ljmp	00157$
                                   1524 ;	fw.c:303: case FT_DEVICE:            // Device
      0003C7                       1525 00130$:
                                   1526 ;	fw.c:304: if(SETUPDAT[2] == 1)
      0003C7 90 E6 BA         [24] 1527 	mov	dptr,#(_SETUPDAT + 0x0002)
      0003CA E0               [24] 1528 	movx	a,@dptr
      0003CB FF               [12] 1529 	mov	r7,a
      0003CC BF 01 05         [24] 1530 	cjne	r7,#0x01,00132$
                                   1531 ;	fw.c:305: Rwuen = FALSE;       // Disable Remote Wakeup
                                   1532 ;	assignBit
      0003CF C2 00            [12] 1533 	clr	_Rwuen
      0003D1 02 05 62         [24] 1534 	ljmp	00157$
      0003D4                       1535 00132$:
                                   1536 ;	fw.c:307: EZUSB_STALL_EP0();   // Stall End Point 0
      0003D4 90 E6 A0         [24] 1537 	mov	dptr,#_EP0CS
      0003D7 E0               [24] 1538 	movx	a,@dptr
      0003D8 43 E0 01         [24] 1539 	orl	acc,#0x01
      0003DB F0               [24] 1540 	movx	@dptr,a
                                   1541 ;	fw.c:308: break;
      0003DC 02 05 62         [24] 1542 	ljmp	00157$
                                   1543 ;	fw.c:309: case FT_ENDPOINT:         // End Point
      0003DF                       1544 00134$:
                                   1545 ;	fw.c:310: if(SETUPDAT[2] == 0)
      0003DF 90 E6 BA         [24] 1546 	mov	dptr,#(_SETUPDAT + 0x0002)
      0003E2 E0               [24] 1547 	movx	a,@dptr
      0003E3 60 03            [24] 1548 	jz	00276$
      0003E5 02 04 8E         [24] 1549 	ljmp	00136$
      0003E8                       1550 00276$:
                                   1551 ;	fw.c:312: *(BYTE __xdata *) epcs(SETUPDAT[4]) &= ~bmEPSTALL;
      0003E8 90 E6 BC         [24] 1552 	mov	dptr,#(_SETUPDAT + 0x0004)
      0003EB E0               [24] 1553 	movx	a,@dptr
      0003EC FF               [12] 1554 	mov	r7,a
      0003ED 53 07 7E         [24] 1555 	anl	ar7,#0x7e
      0003F0 7E 00            [12] 1556 	mov	r6,#0x00
      0003F2 90 E6 BC         [24] 1557 	mov	dptr,#(_SETUPDAT + 0x0004)
      0003F5 E0               [24] 1558 	movx	a,@dptr
      0003F6 FD               [12] 1559 	mov	r5,a
      0003F7 C3               [12] 1560 	clr	c
      0003F8 74 80            [12] 1561 	mov	a,#0x80
      0003FA 9D               [12] 1562 	subb	a,r5
      0003FB E4               [12] 1563 	clr	a
      0003FC 33               [12] 1564 	rlc	a
      0003FD 7C 00            [12] 1565 	mov	r4,#0x00
      0003FF 42 07            [12] 1566 	orl	ar7,a
      000401 EC               [12] 1567 	mov	a,r4
      000402 42 06            [12] 1568 	orl	ar6,a
      000404 EF               [12] 1569 	mov	a,r7
      000405 24 73            [12] 1570 	add	a,#_EPCS_Offset_Lookup_Table
      000407 F5 82            [12] 1571 	mov	dpl,a
      000409 EE               [12] 1572 	mov	a,r6
      00040A 34 05            [12] 1573 	addc	a,#(_EPCS_Offset_Lookup_Table >> 8)
      00040C F5 83            [12] 1574 	mov	dph,a
      00040E E4               [12] 1575 	clr	a
      00040F 93               [24] 1576 	movc	a,@a+dptr
      000410 FF               [12] 1577 	mov	r7,a
      000411 7E 00            [12] 1578 	mov	r6,#0x00
      000413 74 A1            [12] 1579 	mov	a,#0xa1
      000415 2F               [12] 1580 	add	a,r7
      000416 FF               [12] 1581 	mov	r7,a
      000417 74 E6            [12] 1582 	mov	a,#0xe6
      000419 3E               [12] 1583 	addc	a,r6
      00041A FE               [12] 1584 	mov	r6,a
      00041B 90 E6 BC         [24] 1585 	mov	dptr,#(_SETUPDAT + 0x0004)
      00041E E0               [24] 1586 	movx	a,@dptr
      00041F FD               [12] 1587 	mov	r5,a
      000420 53 05 7E         [24] 1588 	anl	ar5,#0x7e
      000423 7C 00            [12] 1589 	mov	r4,#0x00
      000425 90 E6 BC         [24] 1590 	mov	dptr,#(_SETUPDAT + 0x0004)
      000428 E0               [24] 1591 	movx	a,@dptr
      000429 FB               [12] 1592 	mov	r3,a
      00042A C3               [12] 1593 	clr	c
      00042B 74 80            [12] 1594 	mov	a,#0x80
      00042D 9B               [12] 1595 	subb	a,r3
      00042E E4               [12] 1596 	clr	a
      00042F 33               [12] 1597 	rlc	a
      000430 FB               [12] 1598 	mov	r3,a
      000431 7A 00            [12] 1599 	mov	r2,#0x00
      000433 42 05            [12] 1600 	orl	ar5,a
      000435 EA               [12] 1601 	mov	a,r2
      000436 42 04            [12] 1602 	orl	ar4,a
      000438 ED               [12] 1603 	mov	a,r5
      000439 24 73            [12] 1604 	add	a,#_EPCS_Offset_Lookup_Table
      00043B F5 82            [12] 1605 	mov	dpl,a
      00043D EC               [12] 1606 	mov	a,r4
      00043E 34 05            [12] 1607 	addc	a,#(_EPCS_Offset_Lookup_Table >> 8)
      000440 F5 83            [12] 1608 	mov	dph,a
      000442 E4               [12] 1609 	clr	a
      000443 93               [24] 1610 	movc	a,@a+dptr
      000444 FD               [12] 1611 	mov	r5,a
      000445 7C 00            [12] 1612 	mov	r4,#0x00
      000447 74 A1            [12] 1613 	mov	a,#0xa1
      000449 2D               [12] 1614 	add	a,r5
      00044A FD               [12] 1615 	mov	r5,a
      00044B 74 E6            [12] 1616 	mov	a,#0xe6
      00044D 3C               [12] 1617 	addc	a,r4
      00044E FC               [12] 1618 	mov	r4,a
      00044F 8D 82            [24] 1619 	mov	dpl,r5
      000451 8C 83            [24] 1620 	mov	dph,r4
      000453 E0               [24] 1621 	movx	a,@dptr
      000454 FD               [12] 1622 	mov	r5,a
      000455 53 05 FE         [24] 1623 	anl	ar5,#0xfe
      000458 8F 82            [24] 1624 	mov	dpl,r7
      00045A 8E 83            [24] 1625 	mov	dph,r6
      00045C ED               [12] 1626 	mov	a,r5
      00045D F0               [24] 1627 	movx	@dptr,a
                                   1628 ;	fw.c:313: EZUSB_RESET_DATA_TOGGLE( SETUPDAT[4] );
      00045E 90 E6 BC         [24] 1629 	mov	dptr,#(_SETUPDAT + 0x0004)
      000461 E0               [24] 1630 	movx	a,@dptr
      000462 FF               [12] 1631 	mov	r7,a
      000463 53 07 80         [24] 1632 	anl	ar7,#0x80
      000466 E4               [12] 1633 	clr	a
      000467 23               [12] 1634 	rl	a
      000468 CF               [12] 1635 	xch	a,r7
      000469 C4               [12] 1636 	swap	a
      00046A 23               [12] 1637 	rl	a
      00046B 54 1F            [12] 1638 	anl	a,#0x1f
      00046D 6F               [12] 1639 	xrl	a,r7
      00046E CF               [12] 1640 	xch	a,r7
      00046F 54 1F            [12] 1641 	anl	a,#0x1f
      000471 CF               [12] 1642 	xch	a,r7
      000472 6F               [12] 1643 	xrl	a,r7
      000473 CF               [12] 1644 	xch	a,r7
      000474 30 E4 02         [24] 1645 	jnb	acc.4,00277$
      000477 44 E0            [12] 1646 	orl	a,#0xe0
      000479                       1647 00277$:
      000479 90 E6 BC         [24] 1648 	mov	dptr,#(_SETUPDAT + 0x0004)
      00047C E0               [24] 1649 	movx	a,@dptr
      00047D FE               [12] 1650 	mov	r6,a
      00047E 74 0F            [12] 1651 	mov	a,#0x0f
      000480 5E               [12] 1652 	anl	a,r6
      000481 90 E6 83         [24] 1653 	mov	dptr,#_TOGCTL
      000484 2F               [12] 1654 	add	a,r7
      000485 F0               [24] 1655 	movx	@dptr,a
      000486 E0               [24] 1656 	movx	a,@dptr
      000487 43 E0 20         [24] 1657 	orl	acc,#0x20
      00048A F0               [24] 1658 	movx	@dptr,a
      00048B 02 05 62         [24] 1659 	ljmp	00157$
      00048E                       1660 00136$:
                                   1661 ;	fw.c:316: EZUSB_STALL_EP0();   // Stall End Point 0
      00048E 90 E6 A0         [24] 1662 	mov	dptr,#_EP0CS
      000491 E0               [24] 1663 	movx	a,@dptr
      000492 43 E0 01         [24] 1664 	orl	acc,#0x01
      000495 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	fw.c:319: break;
      000496 02 05 62         [24] 1667 	ljmp	00157$
                                   1668 ;	fw.c:320: case SC_SET_FEATURE:                  // *** Set Feature
      000499                       1669 00141$:
                                   1670 ;	fw.c:321: if(DR_SetFeature())
      000499 12 00 00         [24] 1671 	lcall	_DR_SetFeature
      00049C 40 03            [24] 1672 	jc	00278$
      00049E 02 05 62         [24] 1673 	ljmp	00157$
      0004A1                       1674 00278$:
                                   1675 ;	fw.c:322: switch(SETUPDAT[0])
      0004A1 90 E6 B8         [24] 1676 	mov	dptr,#_SETUPDAT
      0004A4 E0               [24] 1677 	movx	a,@dptr
      0004A5 FF               [12] 1678 	mov	r7,a
      0004A6 60 08            [24] 1679 	jz	00142$
      0004A8 BF 02 02         [24] 1680 	cjne	r7,#0x02,00280$
      0004AB 80 26            [24] 1681 	sjmp	00149$
      0004AD                       1682 00280$:
      0004AD 02 05 4B         [24] 1683 	ljmp	00150$
                                   1684 ;	fw.c:324: case FT_DEVICE:            // Device
      0004B0                       1685 00142$:
                                   1686 ;	fw.c:325: if(SETUPDAT[2] == 1)
      0004B0 90 E6 BA         [24] 1687 	mov	dptr,#(_SETUPDAT + 0x0002)
      0004B3 E0               [24] 1688 	movx	a,@dptr
      0004B4 FF               [12] 1689 	mov	r7,a
      0004B5 BF 01 05         [24] 1690 	cjne	r7,#0x01,00147$
                                   1691 ;	fw.c:326: Rwuen = TRUE;      // Enable Remote Wakeup
                                   1692 ;	assignBit
      0004B8 D2 00            [12] 1693 	setb	_Rwuen
      0004BA 02 05 62         [24] 1694 	ljmp	00157$
      0004BD                       1695 00147$:
                                   1696 ;	fw.c:327: else if(SETUPDAT[2] == 2)
      0004BD 90 E6 BA         [24] 1697 	mov	dptr,#(_SETUPDAT + 0x0002)
      0004C0 E0               [24] 1698 	movx	a,@dptr
      0004C1 FF               [12] 1699 	mov	r7,a
      0004C2 BF 02 03         [24] 1700 	cjne	r7,#0x02,00283$
      0004C5 02 05 62         [24] 1701 	ljmp	00157$
      0004C8                       1702 00283$:
                                   1703 ;	fw.c:335: EZUSB_STALL_EP0();   // Stall End Point 0
      0004C8 90 E6 A0         [24] 1704 	mov	dptr,#_EP0CS
      0004CB E0               [24] 1705 	movx	a,@dptr
      0004CC 43 E0 01         [24] 1706 	orl	acc,#0x01
      0004CF F0               [24] 1707 	movx	@dptr,a
                                   1708 ;	fw.c:336: break;
      0004D0 02 05 62         [24] 1709 	ljmp	00157$
                                   1710 ;	fw.c:337: case FT_ENDPOINT:         // End Point
      0004D3                       1711 00149$:
                                   1712 ;	fw.c:338: *(BYTE __xdata *) epcs(SETUPDAT[4]) |= bmEPSTALL;
      0004D3 90 E6 BC         [24] 1713 	mov	dptr,#(_SETUPDAT + 0x0004)
      0004D6 E0               [24] 1714 	movx	a,@dptr
      0004D7 FF               [12] 1715 	mov	r7,a
      0004D8 53 07 7E         [24] 1716 	anl	ar7,#0x7e
      0004DB 7E 00            [12] 1717 	mov	r6,#0x00
      0004DD 90 E6 BC         [24] 1718 	mov	dptr,#(_SETUPDAT + 0x0004)
      0004E0 E0               [24] 1719 	movx	a,@dptr
      0004E1 FD               [12] 1720 	mov	r5,a
      0004E2 C3               [12] 1721 	clr	c
      0004E3 74 80            [12] 1722 	mov	a,#0x80
      0004E5 9D               [12] 1723 	subb	a,r5
      0004E6 E4               [12] 1724 	clr	a
      0004E7 33               [12] 1725 	rlc	a
      0004E8 7C 00            [12] 1726 	mov	r4,#0x00
      0004EA 42 07            [12] 1727 	orl	ar7,a
      0004EC EC               [12] 1728 	mov	a,r4
      0004ED 42 06            [12] 1729 	orl	ar6,a
      0004EF EF               [12] 1730 	mov	a,r7
      0004F0 24 73            [12] 1731 	add	a,#_EPCS_Offset_Lookup_Table
      0004F2 F5 82            [12] 1732 	mov	dpl,a
      0004F4 EE               [12] 1733 	mov	a,r6
      0004F5 34 05            [12] 1734 	addc	a,#(_EPCS_Offset_Lookup_Table >> 8)
      0004F7 F5 83            [12] 1735 	mov	dph,a
      0004F9 E4               [12] 1736 	clr	a
      0004FA 93               [24] 1737 	movc	a,@a+dptr
      0004FB FF               [12] 1738 	mov	r7,a
      0004FC 7E 00            [12] 1739 	mov	r6,#0x00
      0004FE 74 A1            [12] 1740 	mov	a,#0xa1
      000500 2F               [12] 1741 	add	a,r7
      000501 FF               [12] 1742 	mov	r7,a
      000502 74 E6            [12] 1743 	mov	a,#0xe6
      000504 3E               [12] 1744 	addc	a,r6
      000505 FE               [12] 1745 	mov	r6,a
      000506 90 E6 BC         [24] 1746 	mov	dptr,#(_SETUPDAT + 0x0004)
      000509 E0               [24] 1747 	movx	a,@dptr
      00050A FD               [12] 1748 	mov	r5,a
      00050B 53 05 7E         [24] 1749 	anl	ar5,#0x7e
      00050E 7C 00            [12] 1750 	mov	r4,#0x00
      000510 90 E6 BC         [24] 1751 	mov	dptr,#(_SETUPDAT + 0x0004)
      000513 E0               [24] 1752 	movx	a,@dptr
      000514 FB               [12] 1753 	mov	r3,a
      000515 C3               [12] 1754 	clr	c
      000516 74 80            [12] 1755 	mov	a,#0x80
      000518 9B               [12] 1756 	subb	a,r3
      000519 E4               [12] 1757 	clr	a
      00051A 33               [12] 1758 	rlc	a
      00051B FB               [12] 1759 	mov	r3,a
      00051C 7A 00            [12] 1760 	mov	r2,#0x00
      00051E 42 05            [12] 1761 	orl	ar5,a
      000520 EA               [12] 1762 	mov	a,r2
      000521 42 04            [12] 1763 	orl	ar4,a
      000523 ED               [12] 1764 	mov	a,r5
      000524 24 73            [12] 1765 	add	a,#_EPCS_Offset_Lookup_Table
      000526 F5 82            [12] 1766 	mov	dpl,a
      000528 EC               [12] 1767 	mov	a,r4
      000529 34 05            [12] 1768 	addc	a,#(_EPCS_Offset_Lookup_Table >> 8)
      00052B F5 83            [12] 1769 	mov	dph,a
      00052D E4               [12] 1770 	clr	a
      00052E 93               [24] 1771 	movc	a,@a+dptr
      00052F FD               [12] 1772 	mov	r5,a
      000530 7C 00            [12] 1773 	mov	r4,#0x00
      000532 74 A1            [12] 1774 	mov	a,#0xa1
      000534 2D               [12] 1775 	add	a,r5
      000535 FD               [12] 1776 	mov	r5,a
      000536 74 E6            [12] 1777 	mov	a,#0xe6
      000538 3C               [12] 1778 	addc	a,r4
      000539 FC               [12] 1779 	mov	r4,a
      00053A 8D 82            [24] 1780 	mov	dpl,r5
      00053C 8C 83            [24] 1781 	mov	dph,r4
      00053E E0               [24] 1782 	movx	a,@dptr
      00053F FD               [12] 1783 	mov	r5,a
      000540 43 05 01         [24] 1784 	orl	ar5,#0x01
      000543 8F 82            [24] 1785 	mov	dpl,r7
      000545 8E 83            [24] 1786 	mov	dph,r6
      000547 ED               [12] 1787 	mov	a,r5
      000548 F0               [24] 1788 	movx	@dptr,a
                                   1789 ;	fw.c:339: break;
                                   1790 ;	fw.c:340: default:
      000549 80 17            [24] 1791 	sjmp	00157$
      00054B                       1792 00150$:
                                   1793 ;	fw.c:341: EZUSB_STALL_EP0();      // Stall End Point 0
      00054B 90 E6 A0         [24] 1794 	mov	dptr,#_EP0CS
      00054E E0               [24] 1795 	movx	a,@dptr
      00054F 43 E0 01         [24] 1796 	orl	acc,#0x01
      000552 F0               [24] 1797 	movx	@dptr,a
                                   1798 ;	fw.c:343: break;
                                   1799 ;	fw.c:344: default:                     // *** Invalid Command
      000553 80 0D            [24] 1800 	sjmp	00157$
      000555                       1801 00154$:
                                   1802 ;	fw.c:345: if(DR_VendorCmnd())
      000555 12 00 00         [24] 1803 	lcall	_DR_VendorCmnd
      000558 50 08            [24] 1804 	jnc	00157$
                                   1805 ;	fw.c:346: EZUSB_STALL_EP0();            // Stall End Point 0
      00055A 90 E6 A0         [24] 1806 	mov	dptr,#_EP0CS
      00055D E0               [24] 1807 	movx	a,@dptr
      00055E 43 E0 01         [24] 1808 	orl	acc,#0x01
      000561 F0               [24] 1809 	movx	@dptr,a
                                   1810 ;	fw.c:347: }
      000562                       1811 00157$:
                                   1812 ;	fw.c:350: EP0CS |= bmHSNAK;
      000562 90 E6 A0         [24] 1813 	mov	dptr,#_EP0CS
      000565 E0               [24] 1814 	movx	a,@dptr
      000566 43 E0 80         [24] 1815 	orl	acc,#0x80
      000569 F0               [24] 1816 	movx	@dptr,a
                                   1817 ;	fw.c:351: }
      00056A 22               [24] 1818 	ret
                                   1819 ;------------------------------------------------------------
                                   1820 ;Allocation info for local variables in function 'resume_isr'
                                   1821 ;------------------------------------------------------------
                                   1822 ;	fw.c:354: void resume_isr(void) __interrupt WKUP_VECT
                                   1823 ;	-----------------------------------------
                                   1824 ;	 function resume_isr
                                   1825 ;	-----------------------------------------
      00056B                       1826 _resume_isr:
                                   1827 ;	fw.c:356: EZUSB_CLEAR_RSMIRQ();
      00056B 53 D8 EF         [24] 1828 	anl	_EICON,#0xef
                                   1829 ;	fw.c:357: }
      00056E 32               [24] 1830 	reti
                                   1831 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1832 ;	eliminated unneeded push/pop psw
                                   1833 ;	eliminated unneeded push/pop dpl
                                   1834 ;	eliminated unneeded push/pop dph
                                   1835 ;	eliminated unneeded push/pop b
                                   1836 ;	eliminated unneeded push/pop acc
                                   1837 	.area CSEG    (CODE)
                                   1838 	.area CONST   (CODE)
      000573                       1839 _EPCS_Offset_Lookup_Table:
      000573 00                    1840 	.db #0x00	; 0
      000574 01                    1841 	.db #0x01	; 1
      000575 02                    1842 	.db #0x02	; 2
      000576 02                    1843 	.db #0x02	; 2
      000577 03                    1844 	.db #0x03	; 3
      000578 03                    1845 	.db #0x03	; 3
      000579 04                    1846 	.db #0x04	; 4
      00057A 04                    1847 	.db #0x04	; 4
      00057B 05                    1848 	.db #0x05	; 5
      00057C 05                    1849 	.db #0x05	; 5
                                   1850 	.area XINIT   (CODE)
                                   1851 	.area CABS    (ABS,CODE)

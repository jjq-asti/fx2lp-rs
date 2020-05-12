;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module bulkloop
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ISR_GpifWaveform
	.globl _ISR_GpifComplete
	.globl _ISR_Ep8fflag
	.globl _ISR_Ep6fflag
	.globl _ISR_Ep4fflag
	.globl _ISR_Ep2fflag
	.globl _ISR_Ep8eflag
	.globl _ISR_Ep6eflag
	.globl _ISR_Ep4eflag
	.globl _ISR_Ep2eflag
	.globl _ISR_Ep8pflag
	.globl _ISR_Ep6pflag
	.globl _ISR_Ep4pflag
	.globl _ISR_Ep2pflag
	.globl _ISR_Ep8piderror
	.globl _ISR_Ep6piderror
	.globl _ISR_Ep4piderror
	.globl _ISR_Ep2piderror
	.globl _ISR_Errorlimit
	.globl _ISR_Ep8pingnak
	.globl _ISR_Ep6pingnak
	.globl _ISR_Ep4pingnak
	.globl _ISR_Ep2pingnak
	.globl _ISR_Ep1pingnak
	.globl _ISR_Ep0pingnak
	.globl _ISR_Ibn
	.globl _ISR_Ep8inout
	.globl _ISR_Ep6inout
	.globl _ISR_Ep4inout
	.globl _ISR_Ep2inout
	.globl _ISR_Ep1out
	.globl _ISR_Ep1in
	.globl _ISR_Ep0out
	.globl _ISR_Ep0in
	.globl _ISR_Stub
	.globl _ISR_Ep0ack
	.globl _ISR_Highspeed
	.globl _ISR_Susp
	.globl _ISR_Ures
	.globl _ISR_Sof
	.globl _ISR_Sutok
	.globl _ISR_Sudav
	.globl _DR_VendorCmnd
	.globl _DR_SetFeature
	.globl _DR_ClearFeature
	.globl _DR_GetStatus
	.globl _DR_GetInterface
	.globl _DR_SetInterface
	.globl _DR_GetConfiguration
	.globl _DR_SetConfiguration
	.globl _DR_GetDescriptor
	.globl _TD_Resume
	.globl _TD_Suspend
	.globl _TD_Poll
	.globl _TD_Init
	.globl _EIPX6
	.globl _EIPX5
	.globl _EIPX4
	.globl _PI2C
	.globl _PUSB
	.globl _EIEX6
	.globl _EIEX5
	.globl _EIEX4
	.globl _EI2C
	.globl _EUSB
	.globl _SMOD1
	.globl _ERESI
	.globl _RESI
	.globl _INT6
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _SM01
	.globl _SM11
	.globl _SM21
	.globl _REN1
	.globl _TB81
	.globl _RB81
	.globl _TI1
	.globl _RI1
	.globl _PS1
	.globl _PT2
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _PD7
	.globl _PD6
	.globl _PD5
	.globl _PD4
	.globl _PD3
	.globl _PD2
	.globl _PD1
	.globl _PD0
	.globl _EA
	.globl _ES1
	.globl _ET2
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _PC7
	.globl _PC6
	.globl _PC5
	.globl _PC4
	.globl _PC3
	.globl _PC2
	.globl _PC1
	.globl _PC0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _PB7
	.globl _PB6
	.globl _PB5
	.globl _PB4
	.globl _PB3
	.globl _PB2
	.globl _PB1
	.globl _PB0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _PA7
	.globl _PA6
	.globl _PA5
	.globl _PA4
	.globl _PA3
	.globl _PA2
	.globl _PA1
	.globl _PA0
	.globl _EIP
	.globl _B
	.globl _EIE
	.globl _ACC
	.globl _EICON
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _SBUF1
	.globl _SCON1
	.globl _GPIFSGLDATLNOX
	.globl _GPIFSGLDATLX
	.globl _GPIFSGLDATH
	.globl _GPIFTRIG
	.globl _EP01STAT
	.globl _IP
	.globl _OEE
	.globl _OED
	.globl _OEC
	.globl _OEB
	.globl _OEA
	.globl _IOE
	.globl _IOD
	.globl _AUTOPTRSETUP
	.globl _EP68FIFOFLGS
	.globl _EP24FIFOFLGS
	.globl _EP2468STAT
	.globl _IE
	.globl _INT4CLR
	.globl _INT2CLR
	.globl _IOC
	.globl _AUTOPTRL2
	.globl _AUTOPTRH2
	.globl _AUTOPTRL1
	.globl _AUTOPTRH1
	.globl _SBUF0
	.globl _SCON0
	.globl _MPAGE
	.globl _EXIF
	.globl _IOB
	.globl _SPC_FNC
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _IOA
	.globl _GPCR2
	.globl _ECC2B2
	.globl _ECC2B1
	.globl _ECC2B0
	.globl _ECC1B2
	.globl _ECC1B1
	.globl _ECC1B0
	.globl _ECCRESET
	.globl _ECCCFG
	.globl _EP8FIFOBUF
	.globl _EP6FIFOBUF
	.globl _EP4FIFOBUF
	.globl _EP2FIFOBUF
	.globl _EP1INBUF
	.globl _EP1OUTBUF
	.globl _EP0BUF
	.globl _CT4
	.globl _CT3
	.globl _CT2
	.globl _CT1
	.globl _USBTEST
	.globl _TESTCFG
	.globl _DBUG
	.globl _UDMACRCQUAL
	.globl _UDMACRCL
	.globl _UDMACRCH
	.globl _GPIFHOLDAMOUNT
	.globl _FLOWSTBHPERIOD
	.globl _FLOWSTBEDGE
	.globl _FLOWSTB
	.globl _FLOWHOLDOFF
	.globl _FLOWEQ1CTL
	.globl _FLOWEQ0CTL
	.globl _FLOWLOGIC
	.globl _FLOWSTATE
	.globl _GPIFABORT
	.globl _GPIFREADYSTAT
	.globl _GPIFREADYCFG
	.globl _XGPIFSGLDATLNOX
	.globl _XGPIFSGLDATLX
	.globl _XGPIFSGLDATH
	.globl _EP8GPIFTRIG
	.globl _EP8GPIFPFSTOP
	.globl _EP8GPIFFLGSEL
	.globl _EP6GPIFTRIG
	.globl _EP6GPIFPFSTOP
	.globl _EP6GPIFFLGSEL
	.globl _EP4GPIFTRIG
	.globl _EP4GPIFPFSTOP
	.globl _EP4GPIFFLGSEL
	.globl _EP2GPIFTRIG
	.globl _EP2GPIFPFSTOP
	.globl _EP2GPIFFLGSEL
	.globl _GPIFTCB0
	.globl _GPIFTCB1
	.globl _GPIFTCB2
	.globl _GPIFTCB3
	.globl _GPIFADRL
	.globl _GPIFADRH
	.globl _GPIFCTLCFG
	.globl _GPIFIDLECTL
	.globl _GPIFIDLECS
	.globl _GPIFWFSELECT
	.globl _SETUPDAT
	.globl _SUDPTRCTL
	.globl _SUDPTRL
	.globl _SUDPTRH
	.globl _EP8FIFOBCL
	.globl _EP8FIFOBCH
	.globl _EP6FIFOBCL
	.globl _EP6FIFOBCH
	.globl _EP4FIFOBCL
	.globl _EP4FIFOBCH
	.globl _EP2FIFOBCL
	.globl _EP2FIFOBCH
	.globl _EP8FIFOFLGS
	.globl _EP6FIFOFLGS
	.globl _EP4FIFOFLGS
	.globl _EP2FIFOFLGS
	.globl _EP8CS
	.globl _EP6CS
	.globl _EP4CS
	.globl _EP2CS
	.globl _EP1INCS
	.globl _EP1OUTCS
	.globl _EP0CS
	.globl _EP8BCL
	.globl _EP8BCH
	.globl _EP6BCL
	.globl _EP6BCH
	.globl _EP4BCL
	.globl _EP4BCH
	.globl _EP2BCL
	.globl _EP2BCH
	.globl _EP1INBC
	.globl _EP1OUTBC
	.globl _EP0BCL
	.globl _EP0BCH
	.globl _FNADDR
	.globl _MICROFRAME
	.globl _USBFRAMEL
	.globl _USBFRAMEH
	.globl _TOGCTL
	.globl _WAKEUPCS
	.globl _SUSPEND
	.globl _USBCS
	.globl _XAUTODAT2
	.globl _XAUTODAT1
	.globl _I2CTL
	.globl _I2DAT
	.globl _I2CS
	.globl _PORTECFG
	.globl _PORTCCFG
	.globl _PORTACFG
	.globl _INTSETUP
	.globl _INT4IVEC
	.globl _INT2IVEC
	.globl _CLRERRCNT
	.globl _ERRCNTLIM
	.globl _USBERRIRQ
	.globl _USBERRIE
	.globl _GPIFIRQ
	.globl _GPIFIE
	.globl _EPIRQ
	.globl _EPIE
	.globl _USBIRQ
	.globl _USBIE
	.globl _NAKIRQ
	.globl _NAKIE
	.globl _IBNIRQ
	.globl _IBNIE
	.globl _EP8FIFOIRQ
	.globl _EP8FIFOIE
	.globl _EP6FIFOIRQ
	.globl _EP6FIFOIE
	.globl _EP4FIFOIRQ
	.globl _EP4FIFOIE
	.globl _EP2FIFOIRQ
	.globl _EP2FIFOIE
	.globl _OUTPKTEND
	.globl _INPKTEND
	.globl _EP8ISOINPKTS
	.globl _EP6ISOINPKTS
	.globl _EP4ISOINPKTS
	.globl _EP2ISOINPKTS
	.globl _EP8FIFOPFL
	.globl _EP8FIFOPFH
	.globl _EP6FIFOPFL
	.globl _EP6FIFOPFH
	.globl _EP4FIFOPFL
	.globl _EP4FIFOPFH
	.globl _EP2FIFOPFL
	.globl _EP2FIFOPFH
	.globl _EP8AUTOINLENL
	.globl _EP8AUTOINLENH
	.globl _EP6AUTOINLENL
	.globl _EP6AUTOINLENH
	.globl _EP4AUTOINLENL
	.globl _EP4AUTOINLENH
	.globl _EP2AUTOINLENL
	.globl _EP2AUTOINLENH
	.globl _EP8FIFOCFG
	.globl _EP6FIFOCFG
	.globl _EP4FIFOCFG
	.globl _EP2FIFOCFG
	.globl _EP8CFG
	.globl _EP6CFG
	.globl _EP4CFG
	.globl _EP2CFG
	.globl _EP1INCFG
	.globl _EP1OUTCFG
	.globl _REVCTL
	.globl _REVID
	.globl _FIFOPINPOLAR
	.globl _UART230
	.globl _BPADDRL
	.globl _BPADDRH
	.globl _BREAKPT
	.globl _FIFORESET
	.globl _PINFLAGSCD
	.globl _PINFLAGSAB
	.globl _IFCONFIG
	.globl _CPUCS
	.globl _RES_WAVEDATA_END
	.globl _GPIF_WAVE_DATA
	.globl _AlternateSetting
	.globl _Configuration
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_IOA	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_SPC_FNC	=	0x008f
_IOB	=	0x0090
_EXIF	=	0x0091
_MPAGE	=	0x0092
_SCON0	=	0x0098
_SBUF0	=	0x0099
_AUTOPTRH1	=	0x009a
_AUTOPTRL1	=	0x009b
_AUTOPTRH2	=	0x009d
_AUTOPTRL2	=	0x009e
_IOC	=	0x00a0
_INT2CLR	=	0x00a1
_INT4CLR	=	0x00a2
_IE	=	0x00a8
_EP2468STAT	=	0x00aa
_EP24FIFOFLGS	=	0x00ab
_EP68FIFOFLGS	=	0x00ac
_AUTOPTRSETUP	=	0x00af
_IOD	=	0x00b0
_IOE	=	0x00b1
_OEA	=	0x00b2
_OEB	=	0x00b3
_OEC	=	0x00b4
_OED	=	0x00b5
_OEE	=	0x00b6
_IP	=	0x00b8
_EP01STAT	=	0x00ba
_GPIFTRIG	=	0x00bb
_GPIFSGLDATH	=	0x00bd
_GPIFSGLDATLX	=	0x00be
_GPIFSGLDATLNOX	=	0x00bf
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_EICON	=	0x00d8
_ACC	=	0x00e0
_EIE	=	0x00e8
_B	=	0x00f0
_EIP	=	0x00f8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PA0	=	0x0080
_PA1	=	0x0081
_PA2	=	0x0082
_PA3	=	0x0083
_PA4	=	0x0084
_PA5	=	0x0085
_PA6	=	0x0086
_PA7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_PB0	=	0x0090
_PB1	=	0x0091
_PB2	=	0x0092
_PB3	=	0x0093
_PB4	=	0x0094
_PB5	=	0x0095
_PB6	=	0x0096
_PB7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_PC0	=	0x00a0
_PC1	=	0x00a1
_PC2	=	0x00a2
_PC3	=	0x00a3
_PC4	=	0x00a4
_PC5	=	0x00a5
_PC6	=	0x00a6
_PC7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES0	=	0x00ac
_ET2	=	0x00ad
_ES1	=	0x00ae
_EA	=	0x00af
_PD0	=	0x00b0
_PD1	=	0x00b1
_PD2	=	0x00b2
_PD3	=	0x00b3
_PD4	=	0x00b4
_PD5	=	0x00b5
_PD6	=	0x00b6
_PD7	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS0	=	0x00bc
_PT2	=	0x00bd
_PS1	=	0x00be
_RI1	=	0x00c0
_TI1	=	0x00c1
_RB81	=	0x00c2
_TB81	=	0x00c3
_REN1	=	0x00c4
_SM21	=	0x00c5
_SM11	=	0x00c6
_SM01	=	0x00c7
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_INT6	=	0x00db
_RESI	=	0x00dc
_ERESI	=	0x00dd
_SMOD1	=	0x00df
_EUSB	=	0x00e8
_EI2C	=	0x00e9
_EIEX4	=	0x00ea
_EIEX5	=	0x00eb
_EIEX6	=	0x00ec
_PUSB	=	0x00f8
_PI2C	=	0x00f9
_EIPX4	=	0x00fa
_EIPX5	=	0x00fb
_EIPX6	=	0x00fc
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Configuration::
	.ds 1
_AlternateSetting::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_GPIF_WAVE_DATA	=	0xe400
_RES_WAVEDATA_END	=	0xe480
_CPUCS	=	0xe600
_IFCONFIG	=	0xe601
_PINFLAGSAB	=	0xe602
_PINFLAGSCD	=	0xe603
_FIFORESET	=	0xe604
_BREAKPT	=	0xe605
_BPADDRH	=	0xe606
_BPADDRL	=	0xe607
_UART230	=	0xe608
_FIFOPINPOLAR	=	0xe609
_REVID	=	0xe60a
_REVCTL	=	0xe60b
_EP1OUTCFG	=	0xe610
_EP1INCFG	=	0xe611
_EP2CFG	=	0xe612
_EP4CFG	=	0xe613
_EP6CFG	=	0xe614
_EP8CFG	=	0xe615
_EP2FIFOCFG	=	0xe618
_EP4FIFOCFG	=	0xe619
_EP6FIFOCFG	=	0xe61a
_EP8FIFOCFG	=	0xe61b
_EP2AUTOINLENH	=	0xe620
_EP2AUTOINLENL	=	0xe621
_EP4AUTOINLENH	=	0xe622
_EP4AUTOINLENL	=	0xe623
_EP6AUTOINLENH	=	0xe624
_EP6AUTOINLENL	=	0xe625
_EP8AUTOINLENH	=	0xe626
_EP8AUTOINLENL	=	0xe627
_EP2FIFOPFH	=	0xe630
_EP2FIFOPFL	=	0xe631
_EP4FIFOPFH	=	0xe632
_EP4FIFOPFL	=	0xe633
_EP6FIFOPFH	=	0xe634
_EP6FIFOPFL	=	0xe635
_EP8FIFOPFH	=	0xe636
_EP8FIFOPFL	=	0xe637
_EP2ISOINPKTS	=	0xe640
_EP4ISOINPKTS	=	0xe641
_EP6ISOINPKTS	=	0xe642
_EP8ISOINPKTS	=	0xe643
_INPKTEND	=	0xe648
_OUTPKTEND	=	0xe649
_EP2FIFOIE	=	0xe650
_EP2FIFOIRQ	=	0xe651
_EP4FIFOIE	=	0xe652
_EP4FIFOIRQ	=	0xe653
_EP6FIFOIE	=	0xe654
_EP6FIFOIRQ	=	0xe655
_EP8FIFOIE	=	0xe656
_EP8FIFOIRQ	=	0xe657
_IBNIE	=	0xe658
_IBNIRQ	=	0xe659
_NAKIE	=	0xe65a
_NAKIRQ	=	0xe65b
_USBIE	=	0xe65c
_USBIRQ	=	0xe65d
_EPIE	=	0xe65e
_EPIRQ	=	0xe65f
_GPIFIE	=	0xe660
_GPIFIRQ	=	0xe661
_USBERRIE	=	0xe662
_USBERRIRQ	=	0xe663
_ERRCNTLIM	=	0xe664
_CLRERRCNT	=	0xe665
_INT2IVEC	=	0xe666
_INT4IVEC	=	0xe667
_INTSETUP	=	0xe668
_PORTACFG	=	0xe670
_PORTCCFG	=	0xe671
_PORTECFG	=	0xe672
_I2CS	=	0xe678
_I2DAT	=	0xe679
_I2CTL	=	0xe67a
_XAUTODAT1	=	0xe67b
_XAUTODAT2	=	0xe67c
_USBCS	=	0xe680
_SUSPEND	=	0xe681
_WAKEUPCS	=	0xe682
_TOGCTL	=	0xe683
_USBFRAMEH	=	0xe684
_USBFRAMEL	=	0xe685
_MICROFRAME	=	0xe686
_FNADDR	=	0xe687
_EP0BCH	=	0xe68a
_EP0BCL	=	0xe68b
_EP1OUTBC	=	0xe68d
_EP1INBC	=	0xe68f
_EP2BCH	=	0xe690
_EP2BCL	=	0xe691
_EP4BCH	=	0xe694
_EP4BCL	=	0xe695
_EP6BCH	=	0xe698
_EP6BCL	=	0xe699
_EP8BCH	=	0xe69c
_EP8BCL	=	0xe69d
_EP0CS	=	0xe6a0
_EP1OUTCS	=	0xe6a1
_EP1INCS	=	0xe6a2
_EP2CS	=	0xe6a3
_EP4CS	=	0xe6a4
_EP6CS	=	0xe6a5
_EP8CS	=	0xe6a6
_EP2FIFOFLGS	=	0xe6a7
_EP4FIFOFLGS	=	0xe6a8
_EP6FIFOFLGS	=	0xe6a9
_EP8FIFOFLGS	=	0xe6aa
_EP2FIFOBCH	=	0xe6ab
_EP2FIFOBCL	=	0xe6ac
_EP4FIFOBCH	=	0xe6ad
_EP4FIFOBCL	=	0xe6ae
_EP6FIFOBCH	=	0xe6af
_EP6FIFOBCL	=	0xe6b0
_EP8FIFOBCH	=	0xe6b1
_EP8FIFOBCL	=	0xe6b2
_SUDPTRH	=	0xe6b3
_SUDPTRL	=	0xe6b4
_SUDPTRCTL	=	0xe6b5
_SETUPDAT	=	0xe6b8
_GPIFWFSELECT	=	0xe6c0
_GPIFIDLECS	=	0xe6c1
_GPIFIDLECTL	=	0xe6c2
_GPIFCTLCFG	=	0xe6c3
_GPIFADRH	=	0xe6c4
_GPIFADRL	=	0xe6c5
_GPIFTCB3	=	0xe6ce
_GPIFTCB2	=	0xe6cf
_GPIFTCB1	=	0xe6d0
_GPIFTCB0	=	0xe6d1
_EP2GPIFFLGSEL	=	0xe6d2
_EP2GPIFPFSTOP	=	0xe6d3
_EP2GPIFTRIG	=	0xe6d4
_EP4GPIFFLGSEL	=	0xe6da
_EP4GPIFPFSTOP	=	0xe6db
_EP4GPIFTRIG	=	0xe6dc
_EP6GPIFFLGSEL	=	0xe6e2
_EP6GPIFPFSTOP	=	0xe6e3
_EP6GPIFTRIG	=	0xe6e4
_EP8GPIFFLGSEL	=	0xe6ea
_EP8GPIFPFSTOP	=	0xe6eb
_EP8GPIFTRIG	=	0xe6ec
_XGPIFSGLDATH	=	0xe6f0
_XGPIFSGLDATLX	=	0xe6f1
_XGPIFSGLDATLNOX	=	0xe6f2
_GPIFREADYCFG	=	0xe6f3
_GPIFREADYSTAT	=	0xe6f4
_GPIFABORT	=	0xe6f5
_FLOWSTATE	=	0xe6c6
_FLOWLOGIC	=	0xe6c7
_FLOWEQ0CTL	=	0xe6c8
_FLOWEQ1CTL	=	0xe6c9
_FLOWHOLDOFF	=	0xe6ca
_FLOWSTB	=	0xe6cb
_FLOWSTBEDGE	=	0xe6cc
_FLOWSTBHPERIOD	=	0xe6cd
_GPIFHOLDAMOUNT	=	0xe60c
_UDMACRCH	=	0xe67d
_UDMACRCL	=	0xe67e
_UDMACRCQUAL	=	0xe67f
_DBUG	=	0xe6f8
_TESTCFG	=	0xe6f9
_USBTEST	=	0xe6fa
_CT1	=	0xe6fb
_CT2	=	0xe6fc
_CT3	=	0xe6fd
_CT4	=	0xe6fe
_EP0BUF	=	0xe740
_EP1OUTBUF	=	0xe780
_EP1INBUF	=	0xe7c0
_EP2FIFOBUF	=	0xf000
_EP4FIFOBUF	=	0xf400
_EP6FIFOBUF	=	0xf800
_EP8FIFOBUF	=	0xfc00
_ECCCFG	=	0xe628
_ECCRESET	=	0xe629
_ECC1B0	=	0xe62a
_ECC1B1	=	0xe62b
_ECC1B2	=	0xe62c
_ECC2B0	=	0xe62d
_ECC2B1	=	0xe62e
_ECC2B2	=	0xe62f
_GPCR2	=	0xe50d
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'TD_Init'
;------------------------------------------------------------
;	bulkloop.c:34: void TD_Init(void)             // Called once at startup
;	-----------------------------------------
;	 function TD_Init
;	-----------------------------------------
_TD_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	bulkloop.c:37: CPUCS = ((CPUCS & ~bmCLKSPD) | bmCLKSPD1) ;
	mov	dptr,#_CPUCS
	movx	a,@dptr
	anl	a,#0xe7
	orl	a,#0x10
	movx	@dptr,a
;	bulkloop.c:40: IFCONFIG |= 0x40;
	mov	dptr,#_IFCONFIG
	movx	a,@dptr
	orl	acc,#0x40
	movx	@dptr,a
;	bulkloop.c:66: EP1OUTCFG = 0xA0;
	mov	dptr,#_EP1OUTCFG
	mov	a,#0xa0
	movx	@dptr,a
;	bulkloop.c:67: EP1INCFG = 0xA0;
	mov	dptr,#_EP1INCFG
	movx	@dptr,a
;	bulkloop.c:68: SYNCDELAY;                    // see TRM section 15.14
	nop 
	nop 
	nop 
;	bulkloop.c:69: EP2CFG = 0xA2;
	mov	dptr,#_EP2CFG
	mov	a,#0xa2
	movx	@dptr,a
;	bulkloop.c:70: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:71: EP4CFG = 0xA0;
	mov	dptr,#_EP4CFG
	mov	a,#0xa0
	movx	@dptr,a
;	bulkloop.c:72: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:73: EP6CFG = 0xE2;
	mov	dptr,#_EP6CFG
	mov	a,#0xe2
	movx	@dptr,a
;	bulkloop.c:74: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:75: EP8CFG = 0xE0;
	mov	dptr,#_EP8CFG
	mov	a,#0xe0
	movx	@dptr,a
;	bulkloop.c:80: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:81: EP2BCL = 0x80;                // arm EP2OUT by writing byte count w/skip.
	mov	dptr,#_EP2BCL
	mov	a,#0x80
	movx	@dptr,a
;	bulkloop.c:82: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:83: EP2BCL = 0x80;
	mov	dptr,#_EP2BCL
	mov	a,#0x80
	movx	@dptr,a
;	bulkloop.c:84: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:85: EP4BCL = 0x80;                // arm EP4OUT by writing byte count w/skip.
	mov	dptr,#_EP4BCL
	mov	a,#0x80
	movx	@dptr,a
;	bulkloop.c:86: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:87: EP4BCL = 0x80;    
	mov	dptr,#_EP4BCL
	mov	a,#0x80
	movx	@dptr,a
;	bulkloop.c:90: AUTOPTRSETUP |= 0x01;
	orl	_AUTOPTRSETUP,#0x01
;	bulkloop.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TD_Poll'
;------------------------------------------------------------
;i                         Allocated to registers r4 r5 
;count                     Allocated to registers r7 r6 
;------------------------------------------------------------
;	bulkloop.c:95: void TD_Poll(void)              // Called repeatedly while the device is idle
;	-----------------------------------------
;	 function TD_Poll
;	-----------------------------------------
_TD_Poll:
;	bulkloop.c:100: if(!(EP2468STAT & bmEP2EMPTY))
	mov	a,_EP2468STAT
	jb	acc.0,00105$
;	bulkloop.c:102: if(!(EP2468STAT & bmEP6FULL))
	mov	a,_EP2468STAT
	jb	acc.5,00105$
;	bulkloop.c:104: APTR1H = MSB( &EP2FIFOBUF );
	mov	r6,#_EP2FIFOBUF
	mov	r7,#(_EP2FIFOBUF >> 8)
	mov	_AUTOPTRH1,r7
;	bulkloop.c:105: APTR1L = LSB( &EP2FIFOBUF );
	mov	_AUTOPTRL1,#_EP2FIFOBUF
;	bulkloop.c:107: AUTOPTRH2 = MSB( &EP6FIFOBUF );
	mov	r6,#_EP6FIFOBUF
	mov	r7,#(_EP6FIFOBUF >> 8)
	mov	_AUTOPTRH2,r7
;	bulkloop.c:108: AUTOPTRL2 = LSB( &EP6FIFOBUF );
	mov	_AUTOPTRL2,#_EP6FIFOBUF
;	bulkloop.c:110: count = (EP2BCH << 8) + EP2BCL;
	mov	dptr,#_EP2BCH
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_EP2BCL
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	bulkloop.c:113: for( i = 0x0000; i < count; i++ )
	mov	r4,#0x00
	mov	r5,#0x00
00112$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00101$
;	bulkloop.c:116: EXTAUTODAT2 = EXTAUTODAT1;
	mov	dptr,#_XAUTODAT1
	movx	a,@dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	bulkloop.c:113: for( i = 0x0000; i < count; i++ )
	inc	r4
	cjne	r4,#0x00,00112$
	inc	r5
	sjmp	00112$
00101$:
;	bulkloop.c:118: EP6BCH = EP2BCH;  
	mov	dptr,#_EP2BCH
	movx	a,@dptr
	mov	dptr,#_EP6BCH
	movx	@dptr,a
;	bulkloop.c:119: SYNCDELAY;  
	nop 
	nop 
	nop 
;	bulkloop.c:120: EP6BCL = EP2BCL;        // arm EP6IN
	mov	dptr,#_EP2BCL
	movx	a,@dptr
	mov	dptr,#_EP6BCL
	movx	@dptr,a
;	bulkloop.c:121: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:122: EP2BCL = 0x80;          // re(arm) EP2OUT
	mov	dptr,#_EP2BCL
	mov	a,#0x80
	movx	@dptr,a
00105$:
;	bulkloop.c:126: if(!(EP2468STAT & bmEP4EMPTY))
	mov	a,_EP2468STAT
	jb	acc.2,00117$
;	bulkloop.c:128: if(!(EP2468STAT & bmEP8FULL))
	mov	a,_EP2468STAT
	jb	acc.7,00117$
;	bulkloop.c:130: APTR1H = MSB( &EP4FIFOBUF );
	mov	r6,#_EP4FIFOBUF
	mov	r7,#(_EP4FIFOBUF >> 8)
	mov	_AUTOPTRH1,r7
;	bulkloop.c:131: APTR1L = LSB( &EP4FIFOBUF );
	mov	_AUTOPTRL1,#_EP4FIFOBUF
;	bulkloop.c:133: AUTOPTRH2 = MSB( &EP8FIFOBUF );
	mov	r6,#_EP8FIFOBUF
	mov	r7,#(_EP8FIFOBUF >> 8)
	mov	_AUTOPTRH2,r7
;	bulkloop.c:134: AUTOPTRL2 = LSB( &EP8FIFOBUF );
	mov	_AUTOPTRL2,#_EP8FIFOBUF
;	bulkloop.c:136: count = (EP4BCH << 8) + EP4BCL;
	mov	dptr,#_EP4BCH
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_EP4BCL
	movx	a,@dptr
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	bulkloop.c:139: for( i = 0x0000; i < count; i++ )
	mov	r4,#0x00
	mov	r5,#0x00
00115$:
	clr	c
	mov	a,r4
	subb	a,r7
	mov	a,r5
	subb	a,r6
	jnc	00106$
;	bulkloop.c:142: EXTAUTODAT2 = EXTAUTODAT1;
	mov	dptr,#_XAUTODAT1
	movx	a,@dptr
	mov	dptr,#_XAUTODAT2
	movx	@dptr,a
;	bulkloop.c:139: for( i = 0x0000; i < count; i++ )
	inc	r4
	cjne	r4,#0x00,00115$
	inc	r5
	sjmp	00115$
00106$:
;	bulkloop.c:144: EP8BCH = EP4BCH;  
	mov	dptr,#_EP4BCH
	movx	a,@dptr
	mov	dptr,#_EP8BCH
	movx	@dptr,a
;	bulkloop.c:145: SYNCDELAY;  
	nop 
	nop 
	nop 
;	bulkloop.c:146: EP8BCL = EP4BCL;        // arm EP8IN
	mov	dptr,#_EP4BCL
	movx	a,@dptr
	mov	dptr,#_EP8BCL
	movx	@dptr,a
;	bulkloop.c:147: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:148: EP4BCL = 0x80;          // re(arm) EP4OUT
	mov	dptr,#_EP4BCL
	mov	a,#0x80
	movx	@dptr,a
00117$:
;	bulkloop.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TD_Suspend'
;------------------------------------------------------------
;	bulkloop.c:153: BOOL TD_Suspend(void)          // Called before the device goes into suspend mode
;	-----------------------------------------
;	 function TD_Suspend
;	-----------------------------------------
_TD_Suspend:
;	bulkloop.c:155: return(TRUE);
	setb	c
;	bulkloop.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TD_Resume'
;------------------------------------------------------------
;	bulkloop.c:158: BOOL TD_Resume(void)          // Called after the device resumes
;	-----------------------------------------
;	 function TD_Resume
;	-----------------------------------------
_TD_Resume:
;	bulkloop.c:160: return(TRUE);
	setb	c
;	bulkloop.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_GetDescriptor'
;------------------------------------------------------------
;	bulkloop.c:168: BOOL DR_GetDescriptor(void)
;	-----------------------------------------
;	 function DR_GetDescriptor
;	-----------------------------------------
_DR_GetDescriptor:
;	bulkloop.c:170: return(TRUE);
	setb	c
;	bulkloop.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_SetConfiguration'
;------------------------------------------------------------
;	bulkloop.c:173: BOOL DR_SetConfiguration(void)   // Called when a Set Configuration command is received
;	-----------------------------------------
;	 function DR_SetConfiguration
;	-----------------------------------------
_DR_SetConfiguration:
;	bulkloop.c:175: Configuration = SETUPDAT[2];
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	_Configuration,a
;	bulkloop.c:176: return(TRUE);            // Handled by user code
	setb	c
;	bulkloop.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_GetConfiguration'
;------------------------------------------------------------
;	bulkloop.c:179: BOOL DR_GetConfiguration(void)   // Called when a Get Configuration command is received
;	-----------------------------------------
;	 function DR_GetConfiguration
;	-----------------------------------------
_DR_GetConfiguration:
;	bulkloop.c:181: EP0BUF[0] = Configuration;
	mov	dptr,#_EP0BUF
	mov	a,_Configuration
	movx	@dptr,a
;	bulkloop.c:182: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	bulkloop.c:183: EP0BCL = 1;
	mov	dptr,#_EP0BCL
	inc	a
	movx	@dptr,a
;	bulkloop.c:184: return(TRUE);            // Handled by user code
	setb	c
;	bulkloop.c:185: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_SetInterface'
;------------------------------------------------------------
;	bulkloop.c:187: BOOL DR_SetInterface(void)       // Called when a Set Interface command is received
;	-----------------------------------------
;	 function DR_SetInterface
;	-----------------------------------------
_DR_SetInterface:
;	bulkloop.c:189: AlternateSetting = SETUPDAT[2];
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	_AlternateSetting,a
;	bulkloop.c:190: return(TRUE);            // Handled by user code
	setb	c
;	bulkloop.c:191: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_GetInterface'
;------------------------------------------------------------
;	bulkloop.c:193: BOOL DR_GetInterface(void)       // Called when a Set Interface command is received
;	-----------------------------------------
;	 function DR_GetInterface
;	-----------------------------------------
_DR_GetInterface:
;	bulkloop.c:195: EP0BUF[0] = AlternateSetting;
	mov	dptr,#_EP0BUF
	mov	a,_AlternateSetting
	movx	@dptr,a
;	bulkloop.c:196: EP0BCH = 0;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	bulkloop.c:197: EP0BCL = 1;
	mov	dptr,#_EP0BCL
	inc	a
	movx	@dptr,a
;	bulkloop.c:198: return(TRUE);            // Handled by user code
	setb	c
;	bulkloop.c:199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_GetStatus'
;------------------------------------------------------------
;	bulkloop.c:201: BOOL DR_GetStatus(void)
;	-----------------------------------------
;	 function DR_GetStatus
;	-----------------------------------------
_DR_GetStatus:
;	bulkloop.c:203: return(TRUE);
	setb	c
;	bulkloop.c:204: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_ClearFeature'
;------------------------------------------------------------
;	bulkloop.c:206: BOOL DR_ClearFeature(void)
;	-----------------------------------------
;	 function DR_ClearFeature
;	-----------------------------------------
_DR_ClearFeature:
;	bulkloop.c:208: return(TRUE);
	setb	c
;	bulkloop.c:209: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_SetFeature'
;------------------------------------------------------------
;	bulkloop.c:211: BOOL DR_SetFeature(void)
;	-----------------------------------------
;	 function DR_SetFeature
;	-----------------------------------------
_DR_SetFeature:
;	bulkloop.c:213: return(TRUE);
	setb	c
;	bulkloop.c:214: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DR_VendorCmnd'
;------------------------------------------------------------
;tmp                       Allocated to registers 
;------------------------------------------------------------
;	bulkloop.c:216: BOOL DR_VendorCmnd(void)
;	-----------------------------------------
;	 function DR_VendorCmnd
;	-----------------------------------------
_DR_VendorCmnd:
;	bulkloop.c:220: switch (SETUPDAT[1])
	mov	dptr,#(_SETUPDAT + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xd0,00117$
	sjmp	00101$
00117$:
;	bulkloop.c:222: case VR_NAKALL_ON:
	cjne	r7,#0xd1,00103$
	sjmp	00102$
00101$:
;	bulkloop.c:223: tmp = FIFORESET;
	mov	dptr,#_FIFORESET
	movx	a,@dptr
;	bulkloop.c:224: tmp |= bmNAKALL;      
	orl	a,#0x80
	mov	r7,a
;	bulkloop.c:225: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:226: FIFORESET = tmp;
	mov	dptr,#_FIFORESET
	mov	a,r7
	movx	@dptr,a
;	bulkloop.c:227: break;
;	bulkloop.c:228: case VR_NAKALL_OFF:
	sjmp	00104$
00102$:
;	bulkloop.c:229: tmp = FIFORESET;
	mov	dptr,#_FIFORESET
	movx	a,@dptr
;	bulkloop.c:230: tmp &= ~bmNAKALL;      
	anl	a,#0x7f
	mov	r7,a
;	bulkloop.c:231: SYNCDELAY;                    
	nop 
	nop 
	nop 
;	bulkloop.c:232: FIFORESET = tmp;
	mov	dptr,#_FIFORESET
	mov	a,r7
	movx	@dptr,a
;	bulkloop.c:233: break;
;	bulkloop.c:234: default:
	sjmp	00104$
00103$:
;	bulkloop.c:235: return(TRUE);
	setb	c
;	bulkloop.c:236: }
	ret
00104$:
;	bulkloop.c:238: return(FALSE);
	clr	c
;	bulkloop.c:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Sudav'
;------------------------------------------------------------
;	bulkloop.c:247: void ISR_Sudav(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Sudav
;	-----------------------------------------
_ISR_Sudav:
	push	acc
	push	dpl
	push	dph
;	bulkloop.c:249: GotSUD = TRUE;            // Set flag
;	assignBit
	setb	_GotSUD
;	bulkloop.c:250: EZUSB_IRQ_CLEAR();
	anl	_EXIF,#0xef
;	bulkloop.c:251: USBIRQ = bmSUDAV;         // Clear SUDAV IRQ
	mov	dptr,#_USBIRQ
	mov	a,#0x01
	movx	@dptr,a
;	bulkloop.c:252: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Sutok'
;------------------------------------------------------------
;	bulkloop.c:255: void ISR_Sutok(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Sutok
;	-----------------------------------------
_ISR_Sutok:
	push	acc
	push	dpl
	push	dph
;	bulkloop.c:257: EZUSB_IRQ_CLEAR();
	anl	_EXIF,#0xef
;	bulkloop.c:258: USBIRQ = bmSUTOK;         // Clear SUTOK IRQ
	mov	dptr,#_USBIRQ
	mov	a,#0x04
	movx	@dptr,a
;	bulkloop.c:259: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Sof'
;------------------------------------------------------------
;	bulkloop.c:261: void ISR_Sof(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Sof
;	-----------------------------------------
_ISR_Sof:
	push	acc
	push	dpl
	push	dph
;	bulkloop.c:263: EZUSB_IRQ_CLEAR();
	anl	_EXIF,#0xef
;	bulkloop.c:264: USBIRQ = bmSOF;            // Clear SOF IRQ
	mov	dptr,#_USBIRQ
	mov	a,#0x02
	movx	@dptr,a
;	bulkloop.c:265: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ures'
;------------------------------------------------------------
;	bulkloop.c:267: void ISR_Ures(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ures
;	-----------------------------------------
_ISR_Ures:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	bulkloop.c:270: pConfigDscr = pFullSpeedConfigDscr;
	mov	_pConfigDscr,_pFullSpeedConfigDscr
	mov	(_pConfigDscr + 1),(_pFullSpeedConfigDscr + 1)
;	bulkloop.c:271: ((CONFIGDSCR __xdata *) pConfigDscr)->type = CONFIG_DSCR;
	mov	r6,_pConfigDscr
	mov	r7,(_pConfigDscr + 1)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
;	bulkloop.c:272: pOtherConfigDscr = pHighSpeedConfigDscr;
	mov	_pOtherConfigDscr,_pHighSpeedConfigDscr
	mov	(_pOtherConfigDscr + 1),(_pHighSpeedConfigDscr + 1)
;	bulkloop.c:273: ((CONFIGDSCR __xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
	mov	r6,_pOtherConfigDscr
	mov	r7,(_pOtherConfigDscr + 1)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	a,#0x07
	movx	@dptr,a
;	bulkloop.c:275: EZUSB_IRQ_CLEAR();
	anl	_EXIF,#0xef
;	bulkloop.c:276: USBIRQ = bmURES;         // Clear URES IRQ
	mov	dptr,#_USBIRQ
	mov	a,#0x10
	movx	@dptr,a
;	bulkloop.c:277: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Susp'
;------------------------------------------------------------
;	bulkloop.c:279: void ISR_Susp(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Susp
;	-----------------------------------------
_ISR_Susp:
	push	acc
	push	dpl
	push	dph
;	bulkloop.c:281: Sleep = TRUE;
;	assignBit
	setb	_Sleep
;	bulkloop.c:282: EZUSB_IRQ_CLEAR();
	anl	_EXIF,#0xef
;	bulkloop.c:283: USBIRQ = bmSUSP;
	mov	dptr,#_USBIRQ
	mov	a,#0x08
	movx	@dptr,a
;	bulkloop.c:284: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Highspeed'
;------------------------------------------------------------
;	bulkloop.c:286: void ISR_Highspeed(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Highspeed
;	-----------------------------------------
_ISR_Highspeed:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	bulkloop.c:288: if (EZUSB_HIGHSPEED())
	mov	dptr,#_USBCS
	movx	a,@dptr
	jnb	acc.7,00102$
;	bulkloop.c:290: pConfigDscr = pHighSpeedConfigDscr;
	mov	_pConfigDscr,_pHighSpeedConfigDscr
	mov	(_pConfigDscr + 1),(_pHighSpeedConfigDscr + 1)
;	bulkloop.c:291: ((CONFIGDSCR __xdata *) pConfigDscr)->type = CONFIG_DSCR;
	mov	r6,_pConfigDscr
	mov	r7,(_pConfigDscr + 1)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	a,#0x02
	movx	@dptr,a
;	bulkloop.c:292: pOtherConfigDscr = pFullSpeedConfigDscr;
	mov	_pOtherConfigDscr,_pFullSpeedConfigDscr
	mov	(_pOtherConfigDscr + 1),(_pFullSpeedConfigDscr + 1)
;	bulkloop.c:293: ((CONFIGDSCR __xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
	mov	r6,_pOtherConfigDscr
	mov	r7,(_pOtherConfigDscr + 1)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	a,#0x07
	movx	@dptr,a
00102$:
;	bulkloop.c:296: EZUSB_IRQ_CLEAR();
	anl	_EXIF,#0xef
;	bulkloop.c:297: USBIRQ = bmHSGRANT;
	mov	dptr,#_USBIRQ
	mov	a,#0x20
	movx	@dptr,a
;	bulkloop.c:298: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep0ack'
;------------------------------------------------------------
;	bulkloop.c:299: void ISR_Ep0ack(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep0ack
;	-----------------------------------------
_ISR_Ep0ack:
;	bulkloop.c:301: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Stub'
;------------------------------------------------------------
;	bulkloop.c:302: void ISR_Stub(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Stub
;	-----------------------------------------
_ISR_Stub:
;	bulkloop.c:304: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep0in'
;------------------------------------------------------------
;	bulkloop.c:305: void ISR_Ep0in(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep0in
;	-----------------------------------------
_ISR_Ep0in:
;	bulkloop.c:307: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep0out'
;------------------------------------------------------------
;	bulkloop.c:308: void ISR_Ep0out(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep0out
;	-----------------------------------------
_ISR_Ep0out:
;	bulkloop.c:310: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep1in'
;------------------------------------------------------------
;	bulkloop.c:311: void ISR_Ep1in(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep1in
;	-----------------------------------------
_ISR_Ep1in:
;	bulkloop.c:313: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep1out'
;------------------------------------------------------------
;	bulkloop.c:314: void ISR_Ep1out(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep1out
;	-----------------------------------------
_ISR_Ep1out:
;	bulkloop.c:316: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep2inout'
;------------------------------------------------------------
;	bulkloop.c:317: void ISR_Ep2inout(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep2inout
;	-----------------------------------------
_ISR_Ep2inout:
;	bulkloop.c:319: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep4inout'
;------------------------------------------------------------
;	bulkloop.c:320: void ISR_Ep4inout(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep4inout
;	-----------------------------------------
_ISR_Ep4inout:
;	bulkloop.c:322: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep6inout'
;------------------------------------------------------------
;	bulkloop.c:323: void ISR_Ep6inout(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep6inout
;	-----------------------------------------
_ISR_Ep6inout:
;	bulkloop.c:325: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep8inout'
;------------------------------------------------------------
;	bulkloop.c:326: void ISR_Ep8inout(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep8inout
;	-----------------------------------------
_ISR_Ep8inout:
;	bulkloop.c:328: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ibn'
;------------------------------------------------------------
;	bulkloop.c:329: void ISR_Ibn(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ibn
;	-----------------------------------------
_ISR_Ibn:
;	bulkloop.c:331: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep0pingnak'
;------------------------------------------------------------
;	bulkloop.c:332: void ISR_Ep0pingnak(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep0pingnak
;	-----------------------------------------
_ISR_Ep0pingnak:
;	bulkloop.c:334: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep1pingnak'
;------------------------------------------------------------
;	bulkloop.c:335: void ISR_Ep1pingnak(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep1pingnak
;	-----------------------------------------
_ISR_Ep1pingnak:
;	bulkloop.c:337: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep2pingnak'
;------------------------------------------------------------
;	bulkloop.c:338: void ISR_Ep2pingnak(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep2pingnak
;	-----------------------------------------
_ISR_Ep2pingnak:
;	bulkloop.c:340: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep4pingnak'
;------------------------------------------------------------
;	bulkloop.c:341: void ISR_Ep4pingnak(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep4pingnak
;	-----------------------------------------
_ISR_Ep4pingnak:
;	bulkloop.c:343: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep6pingnak'
;------------------------------------------------------------
;	bulkloop.c:344: void ISR_Ep6pingnak(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep6pingnak
;	-----------------------------------------
_ISR_Ep6pingnak:
;	bulkloop.c:346: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep8pingnak'
;------------------------------------------------------------
;	bulkloop.c:347: void ISR_Ep8pingnak(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep8pingnak
;	-----------------------------------------
_ISR_Ep8pingnak:
;	bulkloop.c:349: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Errorlimit'
;------------------------------------------------------------
;	bulkloop.c:350: void ISR_Errorlimit(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Errorlimit
;	-----------------------------------------
_ISR_Errorlimit:
;	bulkloop.c:352: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep2piderror'
;------------------------------------------------------------
;	bulkloop.c:353: void ISR_Ep2piderror(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep2piderror
;	-----------------------------------------
_ISR_Ep2piderror:
;	bulkloop.c:355: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep4piderror'
;------------------------------------------------------------
;	bulkloop.c:356: void ISR_Ep4piderror(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep4piderror
;	-----------------------------------------
_ISR_Ep4piderror:
;	bulkloop.c:358: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep6piderror'
;------------------------------------------------------------
;	bulkloop.c:359: void ISR_Ep6piderror(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep6piderror
;	-----------------------------------------
_ISR_Ep6piderror:
;	bulkloop.c:361: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep8piderror'
;------------------------------------------------------------
;	bulkloop.c:362: void ISR_Ep8piderror(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep8piderror
;	-----------------------------------------
_ISR_Ep8piderror:
;	bulkloop.c:364: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep2pflag'
;------------------------------------------------------------
;	bulkloop.c:365: void ISR_Ep2pflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep2pflag
;	-----------------------------------------
_ISR_Ep2pflag:
;	bulkloop.c:367: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep4pflag'
;------------------------------------------------------------
;	bulkloop.c:368: void ISR_Ep4pflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep4pflag
;	-----------------------------------------
_ISR_Ep4pflag:
;	bulkloop.c:370: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep6pflag'
;------------------------------------------------------------
;	bulkloop.c:371: void ISR_Ep6pflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep6pflag
;	-----------------------------------------
_ISR_Ep6pflag:
;	bulkloop.c:373: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep8pflag'
;------------------------------------------------------------
;	bulkloop.c:374: void ISR_Ep8pflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep8pflag
;	-----------------------------------------
_ISR_Ep8pflag:
;	bulkloop.c:376: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep2eflag'
;------------------------------------------------------------
;	bulkloop.c:377: void ISR_Ep2eflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep2eflag
;	-----------------------------------------
_ISR_Ep2eflag:
;	bulkloop.c:379: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep4eflag'
;------------------------------------------------------------
;	bulkloop.c:380: void ISR_Ep4eflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep4eflag
;	-----------------------------------------
_ISR_Ep4eflag:
;	bulkloop.c:382: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep6eflag'
;------------------------------------------------------------
;	bulkloop.c:383: void ISR_Ep6eflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep6eflag
;	-----------------------------------------
_ISR_Ep6eflag:
;	bulkloop.c:385: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep8eflag'
;------------------------------------------------------------
;	bulkloop.c:386: void ISR_Ep8eflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep8eflag
;	-----------------------------------------
_ISR_Ep8eflag:
;	bulkloop.c:388: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep2fflag'
;------------------------------------------------------------
;	bulkloop.c:389: void ISR_Ep2fflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep2fflag
;	-----------------------------------------
_ISR_Ep2fflag:
;	bulkloop.c:391: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep4fflag'
;------------------------------------------------------------
;	bulkloop.c:392: void ISR_Ep4fflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep4fflag
;	-----------------------------------------
_ISR_Ep4fflag:
;	bulkloop.c:394: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep6fflag'
;------------------------------------------------------------
;	bulkloop.c:395: void ISR_Ep6fflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep6fflag
;	-----------------------------------------
_ISR_Ep6fflag:
;	bulkloop.c:397: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_Ep8fflag'
;------------------------------------------------------------
;	bulkloop.c:398: void ISR_Ep8fflag(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_Ep8fflag
;	-----------------------------------------
_ISR_Ep8fflag:
;	bulkloop.c:400: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_GpifComplete'
;------------------------------------------------------------
;	bulkloop.c:401: void ISR_GpifComplete(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_GpifComplete
;	-----------------------------------------
_ISR_GpifComplete:
;	bulkloop.c:403: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_GpifWaveform'
;------------------------------------------------------------
;	bulkloop.c:404: void ISR_GpifWaveform(void) __interrupt 0
;	-----------------------------------------
;	 function ISR_GpifWaveform
;	-----------------------------------------
_ISR_GpifWaveform:
;	bulkloop.c:406: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)


	; Microchip MPLAB XC8 C Compiler V2.32
	; Copyright (C) 2021 Microchip Technology Inc.

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -q --opt=none --chip=16f73 --double=32 --float=32 --opt=+asmfile \
	; --addrqual=ignore -P --warn=-3 --asmlist \
	; --summary=-psect,-class,+mem,-hex,-file --output=+inhx032 \
	; --runtime=+clear --runtime=+init --runtime=+keep --runtime=-osccal \
	; --runtime=+resetbits --runtime=+resetbits --runtime=-download \
	; --runtime=-stackcall --runtime=+c90lib --std=c99 \
	; --stack=compiled:auto:auto -MOutput/DCF77_Funkuhr.map \
	; -oDCF77_Funkuhr.hex --objdir=Output --outdir=Output Output/./main.p1 \
	; Output/./segment_display.p1 Output/./print_date.p1 \
	; Output/./dcf77_decoder.p1 Output/./bsp.p1 --callgraph=none \
	; --errformat=%f:%l:%c: error: (%n) %s \
	; --warnformat=%f:%l:%c: warning: (%n) %s \
	; --msgformat=%f:%l:%c: advisory: (%n) %s
	;


	processor	16F73

	global	_main,start,reset_vec
	fnroot	_main
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=ENTRY,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global ___stacklo, ___stackhi
	___stacklo	equ	0
	___stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	nop	; NOP inserted due to debugger requirements

	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start:

	; Save the TO, PD bit states before they are cleared by clrwdt instruction
	global	___resetbits
	global	___powerdown
	global	___timeout
	___resetbits	equ	32
	___powerdown	equ	(___resetbits*8)+3
	___timeout	equ	(___resetbits*8)+4
	clrf	STATUS		;select bank 0
	movf STATUS,w
	movwf ___resetbits
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect common,class=COMMON,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start

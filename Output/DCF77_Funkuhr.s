subtitle "Microchip MPLAB XC8 C Compiler v2.32 (Free license) build 20210201212658 Og1 "

pagewidth 120

	opt flic

	processor	16F73
include "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\16f73.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 55 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
INDF equ 00h ;# 
# 62 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR0 equ 01h ;# 
# 69 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PCL equ 02h ;# 
# 76 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
STATUS equ 03h ;# 
# 162 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
FSR equ 04h ;# 
# 169 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PORTA equ 05h ;# 
# 219 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PORTB equ 06h ;# 
# 281 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PORTC equ 07h ;# 
# 343 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PCLATH equ 0Ah ;# 
# 363 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
INTCON equ 0Bh ;# 
# 441 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIR1 equ 0Ch ;# 
# 497 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIR2 equ 0Dh ;# 
# 517 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR1 equ 0Eh ;# 
# 524 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR1L equ 0Eh ;# 
# 531 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR1H equ 0Fh ;# 
# 538 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
T1CON equ 010h ;# 
# 604 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR2 equ 011h ;# 
# 611 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
T2CON equ 012h ;# 
# 682 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPBUF equ 013h ;# 
# 689 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPCON equ 014h ;# 
# 759 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR1 equ 015h ;# 
# 766 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR1L equ 015h ;# 
# 773 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR1H equ 016h ;# 
# 780 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCP1CON equ 017h ;# 
# 838 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
RCSTA equ 018h ;# 
# 928 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TXREG equ 019h ;# 
# 935 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
RCREG equ 01Ah ;# 
# 942 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR2 equ 01Bh ;# 
# 949 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR2L equ 01Bh ;# 
# 956 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR2H equ 01Ch ;# 
# 963 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCP2CON equ 01Dh ;# 
# 1021 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
ADRES equ 01Eh ;# 
# 1041 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
ADCON0 equ 01Fh ;# 
# 1137 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
OPTION_REG equ 081h ;# 
# 1207 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TRISA equ 085h ;# 
# 1257 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TRISB equ 086h ;# 
# 1319 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TRISC equ 087h ;# 
# 1381 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIE1 equ 08Ch ;# 
# 1437 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIE2 equ 08Dh ;# 
# 1457 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PCON equ 08Eh ;# 
# 1491 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PR2 equ 092h ;# 
# 1498 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPADD equ 093h ;# 
# 1505 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPSTAT equ 094h ;# 
# 1674 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TXSTA equ 098h ;# 
# 1755 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SPBRG equ 099h ;# 
# 1762 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
ADCON1 equ 09Fh ;# 
# 1802 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMDATA equ 010Ch ;# 
# 1809 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMADR equ 010Dh ;# 
# 1816 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMDATH equ 010Eh ;# 
# 1823 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMADRH equ 010Fh ;# 
# 1830 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMCON1 equ 018Ch ;# 
# 55 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
INDF equ 00h ;# 
# 62 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR0 equ 01h ;# 
# 69 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PCL equ 02h ;# 
# 76 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
STATUS equ 03h ;# 
# 162 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
FSR equ 04h ;# 
# 169 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PORTA equ 05h ;# 
# 219 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PORTB equ 06h ;# 
# 281 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PORTC equ 07h ;# 
# 343 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PCLATH equ 0Ah ;# 
# 363 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
INTCON equ 0Bh ;# 
# 441 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIR1 equ 0Ch ;# 
# 497 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIR2 equ 0Dh ;# 
# 517 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR1 equ 0Eh ;# 
# 524 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR1L equ 0Eh ;# 
# 531 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR1H equ 0Fh ;# 
# 538 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
T1CON equ 010h ;# 
# 604 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TMR2 equ 011h ;# 
# 611 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
T2CON equ 012h ;# 
# 682 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPBUF equ 013h ;# 
# 689 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPCON equ 014h ;# 
# 759 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR1 equ 015h ;# 
# 766 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR1L equ 015h ;# 
# 773 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR1H equ 016h ;# 
# 780 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCP1CON equ 017h ;# 
# 838 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
RCSTA equ 018h ;# 
# 928 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TXREG equ 019h ;# 
# 935 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
RCREG equ 01Ah ;# 
# 942 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR2 equ 01Bh ;# 
# 949 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR2L equ 01Bh ;# 
# 956 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCPR2H equ 01Ch ;# 
# 963 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
CCP2CON equ 01Dh ;# 
# 1021 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
ADRES equ 01Eh ;# 
# 1041 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
ADCON0 equ 01Fh ;# 
# 1137 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
OPTION_REG equ 081h ;# 
# 1207 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TRISA equ 085h ;# 
# 1257 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TRISB equ 086h ;# 
# 1319 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TRISC equ 087h ;# 
# 1381 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIE1 equ 08Ch ;# 
# 1437 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PIE2 equ 08Dh ;# 
# 1457 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PCON equ 08Eh ;# 
# 1491 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PR2 equ 092h ;# 
# 1498 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPADD equ 093h ;# 
# 1505 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SSPSTAT equ 094h ;# 
# 1674 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
TXSTA equ 098h ;# 
# 1755 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
SPBRG equ 099h ;# 
# 1762 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
ADCON1 equ 09Fh ;# 
# 1802 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMDATA equ 010Ch ;# 
# 1809 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMADR equ 010Dh ;# 
# 1816 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMDATH equ 010Eh ;# 
# 1823 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMADRH equ 010Fh ;# 
# 1830 "D:\Program Files\Microchip\xc8\v2.32\pic\include\proc\pic16f73.h"
PMCON1 equ 018Ch ;# 
	debug_source C
	FNCALL	_main,_get_date_data
	FNCALL	_main,_get_day_data
	FNCALL	_main,_get_time
	FNCALL	_main,_get_time_data
	FNCALL	_main,_get_time_data_seconds
	FNCALL	_main,_init
	FNCALL	_main,_make_time
	FNCALL	_main,_minute_gone
	FNCALL	_main,_new_bit
	FNCALL	_main,_strcpy
	FNCALL	_main,_strlen
	FNCALL	_new_bit,___bmul
	FNCALL	_make_time,___bmul
	FNCALL	_make_time,___lwdiv
	FNCALL	_make_time,___lwmod
	FNCALL	_make_time,_strcpy
	FNCALL	_init,_gpio_init
	FNCALL	_init,_init_timer_1
	FNCALL	_init,_spi_init
	FNCALL	_init,_uart_init
	FNCALL	_get_time_data_seconds,___lwdiv
	FNCALL	_get_time_data_seconds,___lwmod
	FNCALL	_get_time_data,___lwdiv
	FNCALL	_get_time_data,___lwmod
	FNCALL	_get_day_data,___bmul
	FNCALL	_get_date_data,___lwdiv
	FNCALL	_get_date_data,___lwmod
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_last_one
	global	_current_time
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"dcf77_decoder.c"
	line	88

;initializer for _last_one
	retlw	low(0)
	retlw	low(0)
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	014h
	file	"main.c"
	line	60

;initializer for _current_time
	retlw	low(0)
	retlw	low(0)
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	014h
	global	_day_segment_coding
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"segment_display.c"
	line	52
_day_segment_coding:
	retlw	08Ch
	retlw	04Ch
	retlw	089h
	retlw	0CBh
	retlw	08Ch
	retlw	068h
	retlw	090h
	retlw	0D9h
	retlw	022h
	retlw	low(0)
	retlw	08Ch
	retlw	068h
	retlw	08Ch
	retlw	04Ch
	retlw	022h
	retlw	low(0)
	retlw	023h
	retlw	02h
	retlw	090h
	retlw	0D9h
	retlw	089h
	retlw	0CBh
	retlw	08Ch
	retlw	068h
	retlw	099h
	retlw	02h
	retlw	099h
	retlw	03Ah
	retlw	099h
	retlw	083h
	retlw	019h
	retlw	0D3h
	retlw	099h
	retlw	05Ah
	retlw	08Ch
	retlw	04Ch
	retlw	019h
	retlw	0D3h
	retlw	089h
	retlw	0CBh
	retlw	08Ch
	retlw	068h
	global __end_of_day_segment_coding
__end_of_day_segment_coding:
	global	_week_day
psect	strings
	file	"print_date.c"
	line	28
_week_day:
	retlw	04Dh
	retlw	04Fh
	retlw	04Eh
	retlw	044h
	retlw	049h
	retlw	045h
	retlw	04Dh
	retlw	049h
	retlw	054h
	retlw	044h
	retlw	04Fh
	retlw	04Eh
	retlw	046h
	retlw	052h
	retlw	052h
	retlw	053h
	retlw	041h
	retlw	04Dh
	retlw	053h
	retlw	04Fh
	retlw	04Eh
	global __end_of_week_day
__end_of_week_day:
	global	_max_days
psect	strings
	file	"dcf77_decoder.c"
	line	82
_max_days:
	retlw	01Fh
	retlw	01Ch
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	retlw	01Eh
	retlw	01Fh
	global __end_of_max_days
__end_of_max_days:
	global	_time_segment_coding
psect	strings
	file	"segment_display.c"
	line	109
_time_segment_coding:
	retlw	0BEh
	retlw	012h
	retlw	07Ch
	retlw	076h
	retlw	0D2h
	retlw	0E6h
	retlw	0EEh
	retlw	032h
	retlw	0FEh
	retlw	0F6h
	global __end_of_time_segment_coding
__end_of_time_segment_coding:
	global	_date_segment_coding
psect	strings
	file	"segment_display.c"
	line	46
_date_segment_coding:
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global __end_of_date_segment_coding
__end_of_date_segment_coding:
	global	_day_segment_coding
	global	_week_day
	global	_max_days
	global	_time_segment_coding
	global	_date_segment_coding
	global	_spi_buffer
	global	_tmp_time
	global	_milli_seconds
	global	_pause
	global	_new_value
	global	_ms_counter
	global	_parity_date
	global	_parity_hours
	global	_parity_minutes
	global	_out_pos
	global	_seconds
	global	_bit_counter
	global	_out
	global	_in
	global	_day_segment
	global	_date_segment
	global	_buffer
	global	_SSPCON
_SSPCON	set	0x14
	global	_RCSTA
_RCSTA	set	0x18
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_PORTA
_PORTA	set	0x5
	global	_T1CON
_T1CON	set	0x10
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_TXREG
_TXREG	set	0x19
	global	_TMR1L
_TMR1L	set	0xE
	global	_TMR1H
_TMR1H	set	0xF
	global	_PEIE
_PEIE	set	0x5E
	global	_INTE
_INTE	set	0x5C
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB2
_RB2	set	0x32
	global	_WCOL
_WCOL	set	0xA7
	global	_SSPIF
_SSPIF	set	0x63
	global	_RB5
_RB5	set	0x35
	global	_RB1
_RB1	set	0x31
	global	_INTF
_INTF	set	0x59
	global	_TXIF
_TXIF	set	0x64
	global	_RCIF
_RCIF	set	0x65
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TXSTA
_TXSTA	set	0x98
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_TRISA
_TRISA	set	0x85
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_INTEDG
_INTEDG	set	0x40E
	global	_TXIE
_TXIE	set	0x464
	global	_RCIE
_RCIE	set	0x465
	
STR_1:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	102	;'f'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	84	;'T'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config CP = "OFF"
	config BOREN = "ON"
	file	"Output\DCF77_Funkuhr.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_spi_buffer:
       ds      11

_tmp_time:
       ds      6

_milli_seconds:
       ds      2

_pause:
       ds      2

_new_value:
       ds      2

_ms_counter:
       ds      2

_parity_date:
       ds      1

_parity_hours:
       ds      1

_parity_minutes:
       ds      1

_out_pos:
       ds      1

_seconds:
       ds      1

_bit_counter:
       ds      1

_out:
       ds      1

_in:
       ds      1

_day_segment:
       ds      1

_date_segment:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"dcf77_decoder.c"
	line	88
_last_one:
       ds      6

psect	dataBANK0
	file	"main.c"
	line	60
_current_time:
       ds      6

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_buffer:
       ds      40

	file	"Output\DCF77_Funkuhr.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+12)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+028h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+023h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_init:	; 1 bytes @ 0x0
??_gpio_init:	; 1 bytes @ 0x0
??_uart_init:	; 1 bytes @ 0x0
??_spi_init:	; 1 bytes @ 0x0
??_init_timer_1:	; 1 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_init:	; 1 bytes @ 0x0
?_minute_gone:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_gpio_init:	; 1 bytes @ 0x0
?_uart_init:	; 1 bytes @ 0x0
?_spi_init:	; 1 bytes @ 0x0
?_init_timer_1:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	4
?_strcpy:	; 1 bytes @ 0x4
??_minute_gone:	; 1 bytes @ 0x4
??_get_time:	; 1 bytes @ 0x4
?___bmul:	; 1 bytes @ 0x4
	global	?_strlen
?_strlen:	; 2 bytes @ 0x4
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds	1
??_strcpy:	; 1 bytes @ 0x5
??___bmul:	; 1 bytes @ 0x5
	global	get_time@p_time
get_time@p_time:	; 1 bytes @ 0x5
	global	minute_gone@threshold
minute_gone@threshold:	; 1 bytes @ 0x5
	ds	1
??_strlen:	; 1 bytes @ 0x6
	global	minute_gone@bit_counter
minute_gone@bit_counter:	; 1 bytes @ 0x6
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x6
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x7
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x7
	global	strlen@s
strlen@s:	; 1 bytes @ 0x7
	ds	1
?_new_bit:	; 1 bytes @ 0x8
?_get_day_data:	; 1 bytes @ 0x8
??___lwdiv:	; 1 bytes @ 0x8
??___lwmod:	; 1 bytes @ 0x8
	global	get_day_data@day_segment
get_day_data@day_segment:	; 1 bytes @ 0x8
	global	new_bit@value
new_bit@value:	; 1 bytes @ 0x8
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x8
	ds	1
??_new_bit:	; 1 bytes @ 0x9
	global	get_day_data@byte
get_day_data@byte:	; 1 bytes @ 0x9
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x9
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x9
	ds	1
??_get_day_data:	; 1 bytes @ 0xA
	ds	1
	global	new_bit@bit_number
new_bit@bit_number:	; 1 bytes @ 0xB
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	ds	1
?_make_time:	; 1 bytes @ 0xC
?_get_time_data:	; 1 bytes @ 0xC
?_get_time_data_seconds:	; 1 bytes @ 0xC
?_get_date_data:	; 1 bytes @ 0xC
	global	get_date_data@date_segment
get_date_data@date_segment:	; 1 bytes @ 0xC
	global	get_time_data@time_segment
get_time_data@time_segment:	; 1 bytes @ 0xC
	global	get_time_data_seconds@time_segment
get_time_data_seconds@time_segment:	; 1 bytes @ 0xC
	global	make_time@p_time
make_time@p_time:	; 1 bytes @ 0xC
	ds	1
??_make_time:	; 1 bytes @ 0xD
??_get_time_data:	; 1 bytes @ 0xD
??_get_time_data_seconds:	; 1 bytes @ 0xD
??_get_date_data:	; 1 bytes @ 0xD
	ds	2
	global	get_day_data@data
get_day_data@data:	; 1 bytes @ 0xF
	ds	1
	global	get_date_data@value
get_date_data@value:	; 1 bytes @ 0x10
	global	get_day_data@p_time
get_day_data@p_time:	; 1 bytes @ 0x10
	global	get_time_data@data
get_time_data@data:	; 1 bytes @ 0x10
	global	get_time_data_seconds@data
get_time_data_seconds@data:	; 1 bytes @ 0x10
	ds	1
	global	get_date_data@p_time
get_date_data@p_time:	; 1 bytes @ 0x11
	global	get_time_data@p_time
get_time_data@p_time:	; 1 bytes @ 0x11
	global	get_time_data_seconds@seconds
get_time_data_seconds@seconds:	; 1 bytes @ 0x11
	global	make_time@buffer
make_time@buffer:	; 1 bytes @ 0x11
	ds	1
	global	make_time@written_bytes
make_time@written_bytes:	; 1 bytes @ 0x12
	ds	1
??_main:	; 1 bytes @ 0x13
	ds	2
	global	main@new_time
main@new_time:	; 1 bytes @ 0x15
	ds	1
;!
;!Data Sizes:
;!    Strings     41
;!    Constant    95
;!    Data        12
;!    BSS         75
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            93     22      69
;!    BANK1            94      0      40

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 40
;!		 -> buffer(BANK1[40]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 40
;!		 -> buffer(BANK1[40]), 
;!
;!    strcpy@from	PTR const unsigned char  size(1) Largest target is 34
;!		 -> STR_2(CODE[7]), STR_1(CODE[34]), 
;!
;!    strcpy@to	PTR unsigned char  size(1) Largest target is 40
;!		 -> buffer(BANK1[40]), 
;!
;!    strcpy@cp	PTR unsigned char  size(1) Largest target is 40
;!		 -> buffer(BANK1[40]), 
;!
;!    get_time@p_time	PTR struct . size(1) Largest target is 6
;!		 -> current_time(BANK0[6]), 
;!
;!    make_time@p_time	PTR struct . size(1) Largest target is 6
;!		 -> current_time(BANK0[6]), 
;!
;!    make_time@buffer	PTR unsigned char  size(1) Largest target is 40
;!		 -> buffer(BANK1[40]), 
;!
;!    get_time_data@p_time	PTR struct . size(1) Largest target is 6
;!		 -> current_time(BANK0[6]), 
;!
;!    get_day_data@p_time	PTR struct . size(1) Largest target is 6
;!		 -> current_time(BANK0[6]), 
;!
;!    get_date_data@p_time	PTR struct . size(1) Largest target is 6
;!		 -> current_time(BANK0[6]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 40
;!		 -> buffer(BANK1[40]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_make_time
;!    _new_bit->___bmul
;!    _make_time->___lwdiv
;!    _get_time_data_seconds->___lwdiv
;!    _get_time_data->___lwdiv
;!    _get_day_data->___bmul
;!    _get_date_data->___lwdiv
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0   23172
;!                                             19 BANK0      3     3      0
;!                      _get_date_data
;!                       _get_day_data
;!                           _get_time
;!                      _get_time_data
;!              _get_time_data_seconds
;!                               _init
;!                          _make_time
;!                        _minute_gone
;!                            _new_bit
;!                             _strcpy
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               5     3      2     123
;!                                              4 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _new_bit                                              4     3      1    2584
;!                                              8 BANK0      4     3      1
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (2) _minute_gone                                          3     3      0     156
;!                                              4 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _make_time                                            7     6      1    6147
;!                                             12 BANK0      7     6      1
;!                             ___bmul
;!                            ___lwdiv
;!                            ___lwmod
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (2) _strcpy                                               4     3      1     293
;!                                              4 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;!                          _gpio_init
;!                       _init_timer_1
;!                           _spi_init
;!                          _uart_init
;! ---------------------------------------------------------------------------------
;! (2) _uart_init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _spi_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer_1                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _gpio_init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_time_data_seconds                                6     5      1    3952
;!                                             12 BANK0      6     5      1
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (1) _get_time_data                                        6     5      1    4370
;!                                             12 BANK0      6     5      1
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             2     2      0     165
;!                                              4 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _get_day_data                                         9     7      2    1374
;!                                              8 BANK0      9     7      2
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               4     3      1     804
;!                                              4 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _get_date_data                                        6     5      1    3982
;!                                             12 BANK0      6     5      1
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4    1831
;!                                              4 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4    1834
;!                                              4 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _isr                                                  4     4      0       0
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _get_date_data
;!     ___lwdiv
;!     ___lwmod
;!   _get_day_data
;!     ___bmul
;!   _get_time
;!   _get_time_data
;!     ___lwdiv
;!     ___lwmod
;!   _get_time_data_seconds
;!     ___lwdiv
;!     ___lwmod
;!   _init
;!     _gpio_init
;!     _init_timer_1
;!     _spi_init
;!     _uart_init
;!   _make_time
;!     ___bmul
;!     ___lwdiv
;!     ___lwmod
;!     _strcpy
;!   _minute_gone
;!   _new_bit
;!     ___bmul
;!   _strcpy
;!   _strlen
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               5E      0      28       7       42.6%
;!BITBANK1            5E      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               5D     16      45       5       74.2%
;!BITBANK0            5D      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITCOMMON            0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      6D       8        0.0%
;!ABS                  0      0      6D       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 120 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_time        1   21[BANK0 ] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       2       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_get_date_data
;;		_get_day_data
;;		_get_time
;;		_get_time_data
;;		_get_time_data_seconds
;;		_init
;;		_make_time
;;		_minute_gone
;;		_new_bit
;;		_strcpy
;;		_strlen
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	120
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	120
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	callstack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	122
	
l2148:	
;main.c: 122:   _Bool new_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@new_time)
	line	123
	
l2150:	
;main.c: 123:   init();
	fcall	_init
	line	124
	
l2152:	
;main.c: 124:   RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	125
	
l2154:	
;main.c: 125:   RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	127
	
l2156:	
;main.c: 127:   (void)strcpy(buffer, "Initialization successfully done\n");
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(strcpy@from)
	movlw	(low(_buffer|((0x0)<<8)))&0ffh
	fcall	_strcpy
	line	128
	
l2158:	
;main.c: 128:   in = (uint8_t)strlen(buffer);
	movlw	(low(_buffer|((0x0)<<8)))&0ffh
	fcall	_strlen
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_strlen)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_in)	;volatile
	line	129
	
l2160:	
;main.c: 129:   TXREG = buffer[out++];
	movf	(_out),w
	addlw	low(_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(25)	;volatile
	
l2162:	
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_out),f	;volatile
	line	130
	
l2164:	
;main.c: 130:   TXIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1124/8)^080h,(1124)&7	;volatile
	line	136
	
l2166:	
;main.c: 135:   {;main.c: 136:     if(pause > 1000u)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_pause+1),w	;volatile
	movlw	0E9h
	skipnz
	subwf	(_pause),w	;volatile
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2180
u1690:
	line	138
	
l2168:	
;main.c: 137:     {;main.c: 138:       pause = 0u;
	clrf	(_pause)	;volatile
	clrf	(_pause+1)	;volatile
	line	139
	
l2170:	
;main.c: 139:       minute_gone(bit_counter);
	movf	(_bit_counter),w	;volatile
	fcall	_minute_gone
	line	140
	
l2172:	
;main.c: 140:       bit_counter = 0u;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_bit_counter)	;volatile
	line	141
	
l2174:	
;main.c: 141:       milli_seconds = 0u;
	clrf	(_milli_seconds)	;volatile
	clrf	(_milli_seconds+1)	;volatile
	line	142
	
l2176:	
;main.c: 142:       seconds = 0u;
	clrf	(_seconds)	;volatile
	line	143
	
l2178:	
;main.c: 143:       new_time = 1;
	clrf	(main@new_time)
	incf	(main@new_time),f
	line	145
	
l2180:	
;main.c: 145:     if(milli_seconds >= 1000u)
	movlw	03h
	subwf	(_milli_seconds+1),w	;volatile
	movlw	0E8h
	skipnz
	subwf	(_milli_seconds),w	;volatile
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2186
u1700:
	line	147
	
l2182:	
;main.c: 146:     {;main.c: 147:       milli_seconds = 0u;
	clrf	(_milli_seconds)	;volatile
	clrf	(_milli_seconds+1)	;volatile
	line	148
	
l2184:	
;main.c: 148:       seconds++;
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_seconds),f	;volatile
	line	150
	
l2186:	
;main.c: 150:     if(seconds == 60u)
		movlw	60
	xorwf	((_seconds)),w	;volatile
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2194
u1710:
	line	152
	
l2188:	
;main.c: 151:     {;main.c: 152:       seconds = 0u;
	clrf	(_seconds)	;volatile
	line	153
	
l2190:	
;main.c: 153:       minute_gone(0u);
	movlw	low(0)
	fcall	_minute_gone
	line	154
	
l2192:	
;main.c: 154:       new_time = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@new_time)
	incf	(main@new_time),f
	line	156
	
l2194:	
;main.c: 156:     if(new_time)
	movf	((main@new_time)),w
	btfsc	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2208
u1720:
	line	158
	
l2196:	
;main.c: 157:     {;main.c: 158:       get_time(&current_time);
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_time
	line	160
;main.c: 160:       in = make_time(buffer, &current_time);
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(make_time@p_time)
	movlw	(low(_buffer|((0x0)<<8)))&0ffh
	fcall	_make_time
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_in)	;volatile
	line	161
	
l2198:	
;main.c: 161:       out = 0u;
	clrf	(_out)	;volatile
	line	162
	
l2200:	
;main.c: 162:       TXREG = buffer[out++];
	movf	(_out),w
	addlw	low(_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(25)	;volatile
	
l2202:	
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_out),f	;volatile
	line	163
	
l2204:	
;main.c: 163:       TXIE = 1u;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1124/8)^080h,(1124)&7	;volatile
	line	165
	
l2206:	
;main.c: 165:       new_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@new_time)
	line	167
	
l2208:	
;main.c: 167:     if((new_value >= 40u) && (new_value <= 130u))
	movlw	0
	subwf	(_new_value+1),w	;volatile
	movlw	028h
	skipnz
	subwf	(_new_value),w	;volatile
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2218
u1730:
	
l2210:	
	movlw	0
	subwf	(_new_value+1),w	;volatile
	movlw	083h
	skipnz
	subwf	(_new_value),w	;volatile
	skipnc
	goto	u1741
	goto	u1740
u1741:
	goto	l2218
u1740:
	line	169
	
l2212:	
;main.c: 168:     {;main.c: 169:       new_value = 0u;
	clrf	(_new_value)	;volatile
	clrf	(_new_value+1)	;volatile
	line	170
	
l2214:	
;main.c: 170:       new_bit(bit_counter++, 0u);
	clrf	(new_bit@value)
	movf	(_bit_counter),w	;volatile
	fcall	_new_bit
	
l2216:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_bit_counter),f	;volatile
	line	171
;main.c: 171:     }
	goto	l110
	line	172
	
l2218:	
	movlw	0
	subwf	(_new_value+1),w	;volatile
	movlw	08Ch
	skipnz
	subwf	(_new_value),w	;volatile
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l110
u1750:
	
l2220:	
	movlw	0
	subwf	(_new_value+1),w	;volatile
	movlw	0E7h
	skipnz
	subwf	(_new_value),w	;volatile
	skipnc
	goto	u1761
	goto	u1760
u1761:
	goto	l110
u1760:
	line	174
	
l2222:	
;main.c: 173:     {;main.c: 174:       new_value = 0u;
	clrf	(_new_value)	;volatile
	clrf	(_new_value+1)	;volatile
	line	175
	
l2224:	
;main.c: 175:       new_bit(bit_counter++, 1u);
	clrf	(new_bit@value)
	incf	(new_bit@value),f
	movf	(_bit_counter),w	;volatile
	fcall	_new_bit
	goto	l2216
	line	180
	
l110:	
	line	182
;main.c: 182:     if(SSPIF)
	btfss	(99/8),(99)&7	;volatile
	goto	u1771
	goto	u1770
u1771:
	goto	l2166
u1770:
	line	184
	
l2228:	
;main.c: 183:     {;main.c: 184:       WCOL = 0u;
	bcf	(167/8),(167)&7	;volatile
	line	185
;main.c: 185:       SSPIF = 0u;
	bcf	(99/8),(99)&7	;volatile
	line	186
	
l2230:	
;main.c: 186:       if(out_pos == 0u)
	movf	((_out_pos)),w
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2234
u1780:
	line	188
	
l2232:	
;main.c: 187:       {;main.c: 188:         RB2 = 1u;
	bsf	(50/8),(50)&7	;volatile
	line	189
;main.c: 189:         RB4 = 0u;
	bcf	(52/8),(52)&7	;volatile
	line	190
;main.c: 190:       }
	goto	l2242
	line	191
	
l2234:	
		movlw	6
	xorwf	((_out_pos)),w
	btfss	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l2238
u1790:
	line	193
	
l2236:	
;main.c: 192:       {;main.c: 193:         RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	194
;main.c: 194:         RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	195
;main.c: 195:       }
	goto	l2242
	line	196
	
l2238:	
		movlw	8
	xorwf	((_out_pos)),w
	btfss	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l117
u1800:
	line	198
	
l2240:	
;main.c: 197:       {;main.c: 198:         RB3 = 1u;
	bsf	(51/8),(51)&7	;volatile
	line	199
;main.c: 199:         RB2 = 0u;
	bcf	(50/8),(50)&7	;volatile
	line	200
;main.c: 200:       }
	goto	l2242
	line	204
	
l117:	
	line	205
	
l2242:	
;main.c: 205:       SSPBUF = spi_buffer[out_pos++];
	movf	(_out_pos),w
	addlw	low(_spi_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(19)	;volatile
	
l2244:	
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_out_pos),f
	line	206
	
l2246:	
;main.c: 206:       if(out_pos == sizeof(spi_buffer))
		movlw	11
	xorwf	((_out_pos)),w
	btfss	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l2250
u1810:
	line	208
	
l2248:	
;main.c: 207:       {;main.c: 208:         out_pos = 0;
	clrf	(_out_pos)
	line	215
	
l2250:	
;main.c: 215:       if(out_pos == 6u)
		movlw	6
	xorwf	((_out_pos)),w
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2254
u1820:
	line	217
	
l2252:	
;main.c: 216:       {;main.c: 217:         spi_buffer[0] = get_time_data(&current_time, 0u);
	clrf	(get_time_data@time_segment)
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_time_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_spi_buffer)
	line	218
;main.c: 218:         spi_buffer[1] = get_time_data(&current_time, 1u);
	clrf	(get_time_data@time_segment)
	incf	(get_time_data@time_segment),f
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_time_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_spi_buffer)+01h
	line	219
;main.c: 219:         spi_buffer[2] = get_time_data(&current_time, 2u);
	movlw	low(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_time_data@time_segment)
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_time_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+02h
	line	220
;main.c: 220:         spi_buffer[3] = get_time_data(&current_time, 3u);
	movlw	low(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_time_data@time_segment)
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_time_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+03h
	line	221
;main.c: 221:         spi_buffer[4] = get_time_data_seconds(seconds, 4u);
	movlw	low(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_time_data_seconds@time_segment)
	movf	(_seconds),w	;volatile
	fcall	_get_time_data_seconds
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+04h
	line	222
;main.c: 222:         spi_buffer[5] = get_time_data_seconds(seconds, 5u);
	movlw	low(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_time_data_seconds@time_segment)
	movf	(_seconds),w	;volatile
	fcall	_get_time_data_seconds
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+05h
	line	223
;main.c: 223:       }
	goto	l2166
	line	224
	
l2254:	
		movlw	8
	xorwf	((_out_pos)),w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2266
u1830:
	line	226
	
l2256:	
;main.c: 225:       {;main.c: 226:         spi_buffer[6] = (uint8_t)(1u << date_segment);
	movlw	low(01h)
	movwf	(??_main+0)+0
	incf	(_date_segment),w
	goto	u1844
u1845:
	clrc
	rlf	(??_main+0)+0,f
u1844:
	addlw	-1
	skipz
	goto	u1845
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+06h
	line	227
	
l2258:	
;main.c: 227:         spi_buffer[7] = get_date_data(&current_time, date_segment++);
	movf	(_date_segment),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_date_data@date_segment)
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_date_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+07h
	
l2260:	
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_date_segment),f
	line	228
	
l2262:	
;main.c: 228:         if(date_segment == 8u)
		movlw	8
	xorwf	((_date_segment)),w
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l2166
u1850:
	line	230
	
l2264:	
;main.c: 229:         {;main.c: 230:           date_segment = 0u;
	clrf	(_date_segment)
	goto	l2166
	line	233
	
l2266:	
	movf	((_out_pos)),w
	btfss	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l122
u1860:
	line	235
	
l2268:	
;main.c: 234:       {;main.c: 235:         spi_buffer[8] = (uint8_t)(1u << day_segment);
	movlw	low(01h)
	movwf	(??_main+0)+0
	incf	(_day_segment),w
	goto	u1874
u1875:
	clrc
	rlf	(??_main+0)+0,f
u1874:
	addlw	-1
	skipz
	goto	u1875
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+08h
	line	236
	
l2270:	
;main.c: 236:         spi_buffer[9] = get_day_data(&current_time, day_segment, 0u);
	movf	(_day_segment),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_day_data@day_segment)
	clrf	(get_day_data@byte)
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_day_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+09h
	line	237
	
l2272:	
;main.c: 237:         spi_buffer[10] = get_day_data(&current_time, day_segment++, 1u);
	movf	(_day_segment),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(get_day_data@day_segment)
	clrf	(get_day_data@byte)
	incf	(get_day_data@byte),f
	movlw	(low(_current_time|((0x0)<<8)))&0ffh
	fcall	_get_day_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(_spi_buffer)+0Ah
	movlw	low(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_day_segment),f
	line	238
;main.c: 238:         if(day_segment == 3u)
		movlw	3
	xorwf	((_day_segment)),w
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l122
u1880:
	line	240
	
l2274:	
;main.c: 239:         {;main.c: 240:           day_segment = 0u;
	clrf	(_day_segment)
	goto	l2166
	line	246
	
l122:	
	goto	l2166
	global	start
	ljmp	start
	callstack 0
	line	250
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> buffer(40), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR const unsigned char 
;;		 -> buffer(40), 
;;  cp              1    8[BANK0 ] PTR const unsigned char 
;;		 -> buffer(40), 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\strlen.c"
	line	4
global __ptext1
__ptext1:	;psect for function _strlen
psect	text1
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	callstack 6
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
;strlen@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strlen@s)
	line	8
	
l1712:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l1716
	line	10
	
l1714:	
	movlw	low(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	line	9
	
l1716:	
	movf	(strlen@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l1714
u1110:
	line	12
	
l1718:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	13
	
l804:	
	return
	callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_new_bit

;; *************** function _new_bit *****************
;; Defined at:
;;		line 100 in file "dcf77_decoder.c"
;; Parameters:    Size  Location     Type
;;  bit_number      1    wreg     unsigned char 
;;  value           1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  bit_number      1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       1       0
;;      Temps:          0       2       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"dcf77_decoder.c"
	line	100
global __ptext2
__ptext2:	;psect for function _new_bit
psect	text2
	file	"dcf77_decoder.c"
	line	100
	global	__size_of_new_bit
	__size_of_new_bit	equ	__end_of_new_bit-_new_bit
	
_new_bit:	
;incstack = 0
	callstack 5
; Regs used in _new_bit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;new_bit@bit_number stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(new_bit@bit_number)
	line	102
	
l1886:	
;dcf77_decoder.c: 100: void new_bit(uint8_t bit_number, uint8_t value);dcf77_decoder.c: 101: {;dcf77_decoder.c: 102:   switch(bit_number)
	goto	l2000
	line	105
	
l1888:	
;dcf77_decoder.c: 105:       tmp_time.minutes = 1u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(_tmp_time)
	line	106
;dcf77_decoder.c: 106:       parity_minutes = value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(_parity_minutes)
	line	107
;dcf77_decoder.c: 107:       break;
	goto	l247
	line	109
	
l1890:	
;dcf77_decoder.c: 109:       tmp_time.minutes += 2u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	addwf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	(_tmp_time),f
	line	110
;dcf77_decoder.c: 110:       parity_minutes += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_minutes),f
	line	111
;dcf77_decoder.c: 111:       break;
	goto	l247
	line	113
	
l1892:	
;dcf77_decoder.c: 113:       tmp_time.minutes += 4u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(02h)-1
u1315:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1315
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	(_tmp_time),f
	line	114
;dcf77_decoder.c: 114:       parity_minutes += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_minutes),f
	line	115
;dcf77_decoder.c: 115:       break;
	goto	l247
	line	117
	
l1894:	
;dcf77_decoder.c: 117:       tmp_time.minutes += 8u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(03h)-1
u1325:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1325
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	(_tmp_time),f
	line	118
;dcf77_decoder.c: 118:       parity_minutes += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_minutes),f
	line	119
;dcf77_decoder.c: 119:       break;
	goto	l247
	line	121
	
l1896:	
;dcf77_decoder.c: 121:       tmp_time.minutes += 10u * value;
	movlw	low(0Ah)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	(_tmp_time),f
	line	122
	
l1898:	
;dcf77_decoder.c: 122:       parity_minutes += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_minutes),f
	line	123
;dcf77_decoder.c: 123:       break;
	goto	l247
	line	125
	
l1900:	
;dcf77_decoder.c: 125:       tmp_time.minutes += 20u * value;
	swapf	(new_bit@value),w
	andlw	0f0h
	movwf	(??_new_bit+0)+0
	movf	(new_bit@value),w
	addwf	(new_bit@value),w
	addwf	(??_new_bit+0)+0,f
	addwf	(??_new_bit+0)+0,f
	movf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	(_tmp_time),f
	line	126
;dcf77_decoder.c: 126:       parity_minutes += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_minutes),f
	line	127
;dcf77_decoder.c: 127:       break;
	goto	l247
	line	129
	
l1902:	
;dcf77_decoder.c: 129:       tmp_time.minutes += 40u * value;
	movlw	low(028h)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	(_tmp_time),f
	goto	l1898
	line	133
	
l1906:	
;dcf77_decoder.c: 133:       parity_minutes += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_minutes),f
	line	135
	
l1908:	
;dcf77_decoder.c: 135:       if (parity_minutes % 2u)
	btfss	(_parity_minutes),(0)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l247
u1330:
	line	137
	
l1910:	
;dcf77_decoder.c: 136:       {;dcf77_decoder.c: 137:         tmp_time.minutes = (255);
	movlw	low(0FFh)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(_tmp_time)
	goto	l247
	line	141
	
l1912:	
;dcf77_decoder.c: 141:       tmp_time.hours = 1u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+01h
	line	142
;dcf77_decoder.c: 142:       parity_hours = value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(_parity_hours)
	line	143
;dcf77_decoder.c: 143:       break;
	goto	l247
	line	145
	
l1914:	
;dcf77_decoder.c: 145:       tmp_time.hours += 2u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	addwf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+01h,f
	line	146
;dcf77_decoder.c: 146:       parity_hours += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_hours),f
	line	147
;dcf77_decoder.c: 147:       break;
	goto	l247
	line	149
	
l1916:	
;dcf77_decoder.c: 149:       tmp_time.hours += 4u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(02h)-1
u1345:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1345
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+01h,f
	line	150
;dcf77_decoder.c: 150:       parity_hours += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_hours),f
	line	151
;dcf77_decoder.c: 151:       break;
	goto	l247
	line	153
	
l1918:	
;dcf77_decoder.c: 153:       tmp_time.hours += 8u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(03h)-1
u1355:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1355
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+01h,f
	line	154
;dcf77_decoder.c: 154:       parity_hours += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_hours),f
	line	155
;dcf77_decoder.c: 155:       break;
	goto	l247
	line	157
	
l1920:	
;dcf77_decoder.c: 157:       tmp_time.hours += 10u * value;
	movlw	low(0Ah)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+01h,f
	line	158
	
l1922:	
;dcf77_decoder.c: 158:       parity_hours += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_hours),f
	line	159
;dcf77_decoder.c: 159:       break;
	goto	l247
	line	161
	
l1924:	
;dcf77_decoder.c: 161:       tmp_time.hours += 20u * value;
	swapf	(new_bit@value),w
	andlw	0f0h
	movwf	(??_new_bit+0)+0
	movf	(new_bit@value),w
	addwf	(new_bit@value),w
	addwf	(??_new_bit+0)+0,f
	addwf	(??_new_bit+0)+0,f
	movf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+01h,f
	line	162
;dcf77_decoder.c: 162:       parity_hours += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_hours),f
	line	163
;dcf77_decoder.c: 163:       break;
	goto	l247
	line	165
	
l1926:	
;dcf77_decoder.c: 165:       parity_hours += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_hours),f
	line	166
	
l1928:	
;dcf77_decoder.c: 166:       if(parity_hours % 2u)
	btfss	(_parity_hours),(0)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l247
u1360:
	line	168
	
l1930:	
;dcf77_decoder.c: 167:       {;dcf77_decoder.c: 168:         tmp_time.hours = (255);
	movlw	low(0FFh)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+01h
	goto	l247
	line	172
	
l1932:	
;dcf77_decoder.c: 172:       tmp_time.day = 1u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+03h
	line	173
;dcf77_decoder.c: 173:       parity_date = value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(_parity_date)
	line	174
;dcf77_decoder.c: 174:       break;
	goto	l247
	line	176
	
l1934:	
;dcf77_decoder.c: 176:       tmp_time.day += 2u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	addwf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+03h,f
	line	177
;dcf77_decoder.c: 177:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	178
;dcf77_decoder.c: 178:       break;
	goto	l247
	line	180
	
l1936:	
;dcf77_decoder.c: 180:       tmp_time.day += 4u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(02h)-1
u1375:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1375
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+03h,f
	line	181
;dcf77_decoder.c: 181:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	182
;dcf77_decoder.c: 182:       break;
	goto	l247
	line	184
	
l1938:	
;dcf77_decoder.c: 184:       tmp_time.day += 8u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(03h)-1
u1385:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1385
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+03h,f
	line	185
;dcf77_decoder.c: 185:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	186
;dcf77_decoder.c: 186:       break;
	goto	l247
	line	188
	
l1940:	
;dcf77_decoder.c: 188:       tmp_time.day += 10u * value;
	movlw	low(0Ah)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+03h,f
	line	189
	
l1942:	
;dcf77_decoder.c: 189:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	190
;dcf77_decoder.c: 190:       break;
	goto	l247
	line	192
	
l1944:	
;dcf77_decoder.c: 192:       tmp_time.day += 20u * value;
	swapf	(new_bit@value),w
	andlw	0f0h
	movwf	(??_new_bit+0)+0
	movf	(new_bit@value),w
	addwf	(new_bit@value),w
	addwf	(??_new_bit+0)+0,f
	addwf	(??_new_bit+0)+0,f
	movf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+03h,f
	line	193
;dcf77_decoder.c: 193:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	194
;dcf77_decoder.c: 194:       break;
	goto	l247
	line	196
	
l1946:	
;dcf77_decoder.c: 196:       tmp_time.day_of_week = 1u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+02h
	goto	l1942
	line	200
	
l1950:	
;dcf77_decoder.c: 200:       tmp_time.day_of_week += 2u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	addwf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+02h,f
	line	201
;dcf77_decoder.c: 201:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	202
;dcf77_decoder.c: 202:       break;
	goto	l247
	line	204
	
l1952:	
;dcf77_decoder.c: 204:       tmp_time.day_of_week += 4u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(02h)-1
u1395:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1395
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+02h,f
	line	205
;dcf77_decoder.c: 205:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	206
;dcf77_decoder.c: 206:       break;
	goto	l247
	line	208
	
l1954:	
;dcf77_decoder.c: 208:       tmp_time.month = 1u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+04h
	goto	l1942
	line	212
	
l1958:	
;dcf77_decoder.c: 212:       tmp_time.month += 2u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	addwf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+04h,f
	line	213
;dcf77_decoder.c: 213:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	214
;dcf77_decoder.c: 214:       break;
	goto	l247
	line	216
	
l1960:	
;dcf77_decoder.c: 216:       tmp_time.month += 4u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(02h)-1
u1405:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1405
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+04h,f
	line	217
;dcf77_decoder.c: 217:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	218
;dcf77_decoder.c: 218:       break;
	goto	l247
	line	220
	
l1962:	
;dcf77_decoder.c: 220:       tmp_time.month += 8u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(03h)-1
u1415:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1415
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+04h,f
	line	221
;dcf77_decoder.c: 221:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	222
;dcf77_decoder.c: 222:       break;
	goto	l247
	line	224
	
l1964:	
;dcf77_decoder.c: 224:       tmp_time.month += 10u * value;
	movlw	low(0Ah)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+04h,f
	goto	l1942
	line	228
	
l1968:	
;dcf77_decoder.c: 228:       tmp_time.year = 1u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+05h
	goto	l1942
	line	232
	
l1972:	
;dcf77_decoder.c: 232:       tmp_time.year += 2u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	addwf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	line	233
;dcf77_decoder.c: 233:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	234
;dcf77_decoder.c: 234:       break;
	goto	l247
	line	236
	
l1974:	
;dcf77_decoder.c: 236:       tmp_time.year += 4u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(02h)-1
u1425:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1425
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	line	237
;dcf77_decoder.c: 237:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	238
;dcf77_decoder.c: 238:       break;
	goto	l247
	line	240
	
l1976:	
;dcf77_decoder.c: 240:       tmp_time.year += 8u * value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movlw	(03h)-1
u1435:
	clrc
	rlf	(??_new_bit+0)+0,f
	addlw	-1
	skipz
	goto	u1435
	clrc
	rlf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	line	241
;dcf77_decoder.c: 241:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	242
;dcf77_decoder.c: 242:       break;
	goto	l247
	line	244
	
l1978:	
;dcf77_decoder.c: 244:       tmp_time.year += 10u * value;
	movlw	low(0Ah)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	goto	l1942
	line	248
	
l1982:	
;dcf77_decoder.c: 248:       tmp_time.year += 20u * value;
	swapf	(new_bit@value),w
	andlw	0f0h
	movwf	(??_new_bit+0)+0
	movf	(new_bit@value),w
	addwf	(new_bit@value),w
	addwf	(??_new_bit+0)+0,f
	addwf	(??_new_bit+0)+0,f
	movf	(??_new_bit+0)+0,w
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	line	249
;dcf77_decoder.c: 249:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	250
;dcf77_decoder.c: 250:       break;
	goto	l247
	line	252
	
l1984:	
;dcf77_decoder.c: 252:       tmp_time.year += 40u * value;
	movlw	low(028h)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	goto	l1942
	line	256
	
l1988:	
;dcf77_decoder.c: 256:       tmp_time.year += 80u * value;
	movlw	low(050h)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(new_bit@value),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_new_bit+1)+0
	movf	(??_new_bit+1)+0,w
	addwf	0+(_tmp_time)+05h,f
	goto	l1942
	line	260
	
l1992:	
;dcf77_decoder.c: 260:       parity_date += value;
	movf	(new_bit@value),w
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	addwf	(_parity_date),f
	line	261
	
l1994:	
;dcf77_decoder.c: 261:       if(parity_date % 2u)
	btfss	(_parity_date),(0)&7
	goto	u1441
	goto	u1440
u1441:
	goto	l247
u1440:
	line	263
	
l1996:	
;dcf77_decoder.c: 262:       {;dcf77_decoder.c: 263:         tmp_time.day = (255);
	movlw	low(0FFh)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+03h
	line	264
;dcf77_decoder.c: 264:         tmp_time.month = (255);
	movlw	low(0FFh)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+04h
	line	265
;dcf77_decoder.c: 265:         tmp_time.year = (255);
	movlw	low(0FFh)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+05h
	line	266
;dcf77_decoder.c: 266:         tmp_time.day_of_week = (255);
	movlw	low(0FFh)
	movwf	(??_new_bit+0)+0
	movf	(??_new_bit+0)+0,w
	movwf	0+(_tmp_time)+02h
	goto	l247
	line	272
	
l2000:	
	movf	(new_bit@bit_number),w
	movwf	(??_new_bit+0)+0
	clrf	(??_new_bit+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            9     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_new_bit+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2346
	goto	l247
	asmopt pop
	
l2346:	
; Switch size 1, requested type "simple"
; Number of cases is 38, Range of values is 21 to 58
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           86    10 (fixed)
; simple_byte          115    58 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_new_bit+0)+0,w
	asmopt push
	asmopt off
	xorlw	21^0	; case 21
	skipnz
	goto	l1888
	xorlw	22^21	; case 22
	skipnz
	goto	l1890
	xorlw	23^22	; case 23
	skipnz
	goto	l1892
	xorlw	24^23	; case 24
	skipnz
	goto	l1894
	xorlw	25^24	; case 25
	skipnz
	goto	l1896
	xorlw	26^25	; case 26
	skipnz
	goto	l1900
	xorlw	27^26	; case 27
	skipnz
	goto	l1902
	xorlw	28^27	; case 28
	skipnz
	goto	l1906
	xorlw	29^28	; case 29
	skipnz
	goto	l1912
	xorlw	30^29	; case 30
	skipnz
	goto	l1914
	xorlw	31^30	; case 31
	skipnz
	goto	l1916
	xorlw	32^31	; case 32
	skipnz
	goto	l1918
	xorlw	33^32	; case 33
	skipnz
	goto	l1920
	xorlw	34^33	; case 34
	skipnz
	goto	l1924
	xorlw	35^34	; case 35
	skipnz
	goto	l1926
	xorlw	36^35	; case 36
	skipnz
	goto	l1932
	xorlw	37^36	; case 37
	skipnz
	goto	l1934
	xorlw	38^37	; case 38
	skipnz
	goto	l1936
	xorlw	39^38	; case 39
	skipnz
	goto	l1938
	xorlw	40^39	; case 40
	skipnz
	goto	l1940
	xorlw	41^40	; case 41
	skipnz
	goto	l1944
	xorlw	42^41	; case 42
	skipnz
	goto	l1946
	xorlw	43^42	; case 43
	skipnz
	goto	l1950
	xorlw	44^43	; case 44
	skipnz
	goto	l1952
	xorlw	45^44	; case 45
	skipnz
	goto	l1954
	xorlw	46^45	; case 46
	skipnz
	goto	l1958
	xorlw	47^46	; case 47
	skipnz
	goto	l1960
	xorlw	48^47	; case 48
	skipnz
	goto	l1962
	xorlw	49^48	; case 49
	skipnz
	goto	l1964
	xorlw	50^49	; case 50
	skipnz
	goto	l1968
	xorlw	51^50	; case 51
	skipnz
	goto	l1972
	xorlw	52^51	; case 52
	skipnz
	goto	l1974
	xorlw	53^52	; case 53
	skipnz
	goto	l1976
	xorlw	54^53	; case 54
	skipnz
	goto	l1978
	xorlw	55^54	; case 55
	skipnz
	goto	l1982
	xorlw	56^55	; case 56
	skipnz
	goto	l1984
	xorlw	57^56	; case 57
	skipnz
	goto	l1988
	xorlw	58^57	; case 58
	skipnz
	goto	l1992
	goto	l247
	asmopt pop

	line	274
	
l247:	
	return
	callstack 0
GLOBAL	__end_of_new_bit
	__end_of_new_bit:
	signat	_new_bit,8313
	global	_minute_gone

;; *************** function _minute_gone *****************
;; Defined at:
;;		line 286 in file "dcf77_decoder.c"
;; Parameters:    Size  Location     Type
;;  bit_counter     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bit_counter     1    6[BANK0 ] unsigned char 
;;  threshold       1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	286
global __ptext3
__ptext3:	;psect for function _minute_gone
psect	text3
	file	"dcf77_decoder.c"
	line	286
	global	__size_of_minute_gone
	__size_of_minute_gone	equ	__end_of_minute_gone-_minute_gone
	
_minute_gone:	
;incstack = 0
	callstack 5
; Regs used in _minute_gone: [wreg-fsr0h+status,2+status,0+pclath]
;minute_gone@bit_counter stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minute_gone@bit_counter)
	line	288
	
l1722:	
;dcf77_decoder.c: 286: void minute_gone(uint8_t bit_counter);dcf77_decoder.c: 287: {;dcf77_decoder.c: 288:   if((tmp_time.minutes != (255)) && (bit_counter == 59u))
		incf	((_tmp_time)),w
	btfsc	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1728
u1120:
	
l1724:	
		movlw	59
	xorwf	((minute_gone@bit_counter)),w
	btfss	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l1728
u1130:
	line	290
	
l1726:	
;dcf77_decoder.c: 289:   {;dcf77_decoder.c: 290:     last_one.minutes = tmp_time.minutes;
	movf	(_tmp_time),w
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	(_last_one)
	line	291
;dcf77_decoder.c: 291:   }
	goto	l1734
	line	294
	
l1728:	
;dcf77_decoder.c: 293:   {;dcf77_decoder.c: 294:     last_one.minutes++;
	movlw	low(01h)
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	addwf	(_last_one),f
	line	295
;dcf77_decoder.c: 295:     if(last_one.minutes == 60u)
		movlw	60
	xorwf	((_last_one)),w
	btfss	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1734
u1140:
	line	297
	
l1730:	
;dcf77_decoder.c: 296:     {;dcf77_decoder.c: 297:       last_one.minutes = 0u;
	clrf	(_last_one)
	line	298
	
l1732:	
;dcf77_decoder.c: 298:       last_one.hours++;
	movlw	low(01h)
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	addwf	0+(_last_one)+01h,f
	line	302
	
l1734:	
;dcf77_decoder.c: 302:   if((tmp_time.hours != (255)) && (bit_counter == 59u))
		incf	(0+(_tmp_time)+01h),w
	btfsc	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1740
u1150:
	
l1736:	
		movlw	59
	xorwf	((minute_gone@bit_counter)),w
	btfss	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l1740
u1160:
	line	304
	
l1738:	
;dcf77_decoder.c: 303:   {;dcf77_decoder.c: 304:     last_one.hours = tmp_time.hours;
	movf	0+(_tmp_time)+01h,w
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	0+(_last_one)+01h
	line	305
;dcf77_decoder.c: 305:   }
	goto	l1746
	line	308
	
l1740:	
;dcf77_decoder.c: 307:   {;dcf77_decoder.c: 308:     if(last_one.hours == 24u)
		movlw	24
	xorwf	(0+(_last_one)+01h),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l1746
u1170:
	line	310
	
l1742:	
;dcf77_decoder.c: 309:     {;dcf77_decoder.c: 310:       last_one.hours = 0u;
	clrf	0+(_last_one)+01h
	line	311
	
l1744:	
;dcf77_decoder.c: 311:       last_one.day++;
	movlw	low(01h)
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	addwf	0+(_last_one)+03h,f
	line	315
	
l1746:	
;dcf77_decoder.c: 315:   if((tmp_time.day != (255)) && (bit_counter == 59u))
		incf	(0+(_tmp_time)+03h),w
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l1752
u1180:
	
l1748:	
		movlw	59
	xorwf	((minute_gone@bit_counter)),w
	btfss	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l1752
u1190:
	line	317
	
l1750:	
;dcf77_decoder.c: 316:   {;dcf77_decoder.c: 317:     last_one.day = tmp_time.day;
	movf	0+(_tmp_time)+03h,w
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	0+(_last_one)+03h
	line	318
;dcf77_decoder.c: 318:   }
	goto	l260
	line	321
	
l1752:	
;dcf77_decoder.c: 320:   {;dcf77_decoder.c: 321:     if(last_one.month > 0u)
	movf	(0+(_last_one)+04h),w
	btfsc	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l260
u1200:
	line	323
	
l1754:	
;dcf77_decoder.c: 322:     {;dcf77_decoder.c: 323:       uint8_t threshold = max_days[last_one.month - 1u];
	movf	0+(_last_one)+04h,w
	addlw	low((((_max_days)-__stringbase)|8000h)+0FFh)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	(minute_gone@threshold)
	line	324
	
l1756:	
;dcf77_decoder.c: 324:       if((last_one.month == 2u) && ((last_one.year % 4u) == 0u))
		movlw	2
	xorwf	(0+(_last_one)+04h),w
	btfss	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l1762
u1210:
	
l1758:	
	movf	0+(_last_one)+05h,w
	andlw	03h
	btfss	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l1762
u1220:
	line	326
	
l1760:	
;dcf77_decoder.c: 325:       {;dcf77_decoder.c: 326:         threshold++;
	movlw	low(01h)
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	addwf	(minute_gone@threshold),f
	line	328
	
l1762:	
;dcf77_decoder.c: 328:       if(last_one.day == threshold)
	movf	0+(_last_one)+03h,w
	xorwf	(minute_gone@threshold),w
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l260
u1230:
	line	330
	
l1764:	
;dcf77_decoder.c: 329:       {;dcf77_decoder.c: 330:         last_one.day = 1;
	clrf	0+(_last_one)+03h
	incf	0+(_last_one)+03h,f
	line	331
	
l1766:	
;dcf77_decoder.c: 331:         last_one.month++;
	movlw	low(01h)
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	addwf	0+(_last_one)+04h,f
	line	334
;dcf77_decoder.c: 334:   }
	
l260:	
	line	336
;dcf77_decoder.c: 336:   if((tmp_time.month != (255)) && (bit_counter == 59u))
		incf	(0+(_tmp_time)+04h),w
	btfsc	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l1772
u1240:
	
l1768:	
		movlw	59
	xorwf	((minute_gone@bit_counter)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1772
u1250:
	line	338
	
l1770:	
;dcf77_decoder.c: 337:   {;dcf77_decoder.c: 338:     last_one.month = tmp_time.month;
	movf	0+(_tmp_time)+04h,w
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	0+(_last_one)+04h
	line	339
;dcf77_decoder.c: 339:   }
	goto	l265
	line	342
	
l1772:	
;dcf77_decoder.c: 341:   {;dcf77_decoder.c: 342:     if(last_one.month == 13u)
		movlw	13
	xorwf	(0+(_last_one)+04h),w
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l265
u1260:
	line	344
	
l1774:	
;dcf77_decoder.c: 343:     {;dcf77_decoder.c: 344:       last_one.month = 1u;
	clrf	0+(_last_one)+04h
	incf	0+(_last_one)+04h,f
	line	345
	
l1776:	
;dcf77_decoder.c: 345:       last_one.year++;
	movlw	low(01h)
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	addwf	0+(_last_one)+05h,f
	line	347
;dcf77_decoder.c: 347:   }
	
l265:	
	line	349
;dcf77_decoder.c: 349:   if((tmp_time.year != (255)) && (bit_counter == 59u))
		incf	(0+(_tmp_time)+05h),w
	btfsc	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l1782
u1270:
	
l1778:	
		movlw	59
	xorwf	((minute_gone@bit_counter)),w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1782
u1280:
	line	351
	
l1780:	
;dcf77_decoder.c: 350:   {;dcf77_decoder.c: 351:     last_one.year = tmp_time.year;
	movf	0+(_tmp_time)+05h,w
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	0+(_last_one)+05h
	line	354
	
l1782:	
;dcf77_decoder.c: 354:   if((tmp_time.day_of_week != (255)) && (bit_counter == 59u))
		incf	(0+(_tmp_time)+02h),w
	btfsc	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l269
u1290:
	
l1784:	
		movlw	59
	xorwf	((minute_gone@bit_counter)),w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l269
u1300:
	line	356
	
l1786:	
;dcf77_decoder.c: 355:   {;dcf77_decoder.c: 356:     last_one.day_of_week = tmp_time.day_of_week;
	movf	0+(_tmp_time)+02h,w
	movwf	(??_minute_gone+0)+0
	movf	(??_minute_gone+0)+0,w
	movwf	0+(_last_one)+02h
	line	358
	
l269:	
	return
	callstack 0
GLOBAL	__end_of_minute_gone
	__end_of_minute_gone:
	signat	_minute_gone,4217
	global	_make_time

;; *************** function _make_time *****************
;; Defined at:
;;		line 52 in file "print_date.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    wreg     PTR unsigned char 
;;		 -> buffer(40), 
;;  p_time          1   12[BANK0 ] PTR struct .
;;		 -> current_time(6), 
;; Auto vars:     Size  Location     Type
;;  buffer          1   17[BANK0 ] PTR unsigned char 
;;		 -> buffer(40), 
;;  written_byte    1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       2       0
;;      Temps:          0       4       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___bmul
;;		___lwdiv
;;		___lwmod
;;		_strcpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"print_date.c"
	line	52
global __ptext4
__ptext4:	;psect for function _make_time
psect	text4
	file	"print_date.c"
	line	52
	global	__size_of_make_time
	__size_of_make_time	equ	__end_of_make_time-_make_time
	
_make_time:	
;incstack = 0
	callstack 4
; Regs used in _make_time: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;make_time@buffer stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(make_time@buffer)
	line	54
	
l1794:	
;print_date.c: 52: uint8_t make_time(char buffer[], time *p_time);print_date.c: 53: {;print_date.c: 54:   uint8_t written_bytes = 6;
	movlw	low(06h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	movwf	(make_time@written_bytes)
	line	55
	
l1796:	
;print_date.c: 55:   (void)strcpy(buffer, "Time: ");
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	movwf	(strcpy@from)
	movf	(make_time@buffer),w
	fcall	_strcpy
	line	56
	
l1798:	
;print_date.c: 56:   buffer[written_bytes++] = week_day[p_time->day_of_week - 1u][0];
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(make_time@p_time),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	___bmul
	addlw	low((((_week_day)-__stringbase)|8000h)+0FDh)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_make_time+1)+0
	movf	(make_time@buffer),w
	addlw	06h
	movwf	fsr0
	movf	(??_make_time+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1800:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	57
	
l1802:	
;print_date.c: 57:   buffer[written_bytes++] = week_day[p_time->day_of_week - 1u][1];
	movlw	low(03h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(make_time@p_time),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___bmul
	addlw	low((((_week_day)-__stringbase)|8000h)+0FEh)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_make_time+1)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+2)+0
	movf	0+(??_make_time+2)+0,w
	movwf	fsr0
	movf	(??_make_time+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1804:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	58
	
l1806:	
;print_date.c: 58:   buffer[written_bytes++] = week_day[p_time->day_of_week - 1u][2];
	movlw	low(03h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(make_time@p_time),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___bmul
	addlw	low((((_week_day)-__stringbase)|8000h)+0FFh)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_make_time+1)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+2)+0
	movf	0+(??_make_time+2)+0,w
	movwf	fsr0
	movf	(??_make_time+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1808:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	59
	
l1810:	
;print_date.c: 59:   buffer[written_bytes++] = ' ';
	movlw	low(020h)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1812:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	60
	
l1814:	
;print_date.c: 60:   buffer[written_bytes++] = (p_time->day / 10u) + '0';
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(make_time@p_time),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1816:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	61
	
l1818:	
;print_date.c: 61:   buffer[written_bytes++] = (p_time->day % 10u) + '0';
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(make_time@p_time),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1820:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	62
	
l1822:	
;print_date.c: 62:   buffer[written_bytes++] = '.';
	movlw	low(02Eh)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1824:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	63
	
l1826:	
;print_date.c: 63:   buffer[written_bytes++] = (p_time->month / 10u) + '0';
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(make_time@p_time),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1828:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	64
	
l1830:	
;print_date.c: 64:   buffer[written_bytes++] = (p_time->month % 10u) + '0';
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(make_time@p_time),w
	addlw	04h
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1832:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	65
	
l1834:	
;print_date.c: 65:   buffer[written_bytes++] = '.';
	movlw	low(02Eh)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1836:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	66
	
l1838:	
;print_date.c: 66:   buffer[written_bytes++] = '2';
	movlw	low(032h)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1840:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	67
	
l1842:	
;print_date.c: 67:   buffer[written_bytes++] = '0';
	movlw	low(030h)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1844:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	68
	
l1846:	
;print_date.c: 68:   buffer[written_bytes++] = (p_time->year / 10u) + '0';
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(make_time@p_time),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1848:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	69
	
l1850:	
;print_date.c: 69:   buffer[written_bytes++] = (p_time->year % 10u) + '0';
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(make_time@p_time),w
	addlw	05h
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1852:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	70
	
l1854:	
;print_date.c: 70:   buffer[written_bytes++] = ' ';
	movlw	low(020h)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1856:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	71
	
l1858:	
;print_date.c: 71:   buffer[written_bytes++] = (p_time->hours/ 10u) + '0';
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	incf	(make_time@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1860:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	72
	
l1862:	
;print_date.c: 72:   buffer[written_bytes++] = (p_time->hours % 10u) + '0';
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	incf	(make_time@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1864:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	73
	
l1866:	
;print_date.c: 73:   buffer[written_bytes++] = ':';
	movlw	low(03Ah)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1868:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	74
	
l1870:	
;print_date.c: 74:   buffer[written_bytes++] = (p_time->minutes / 10u) + '0';
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(make_time@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1872:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	75
	
l1874:	
;print_date.c: 75:   buffer[written_bytes++] = (p_time->minutes % 10u) + '0';
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(make_time@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_make_time+0)+0
	clrf	(??_make_time+0)+0+1
	movf	0+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_make_time+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_make_time+2)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+3)+0
	movf	0+(??_make_time+3)+0,w
	movwf	fsr0
	movf	(??_make_time+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1876:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	76
	
l1878:	
;print_date.c: 76:   buffer[written_bytes++] = '\n';
	movlw	low(0Ah)
	movwf	(??_make_time+0)+0
	movf	(make_time@written_bytes),w
	addwf	(make_time@buffer),w
	movwf	(??_make_time+1)+0
	movf	0+(??_make_time+1)+0,w
	movwf	fsr0
	movf	(??_make_time+0)+0,w
	movwf	indf
	
l1880:	
	movlw	low(01h)
	movwf	(??_make_time+0)+0
	movf	(??_make_time+0)+0,w
	addwf	(make_time@written_bytes),f
	line	77
	
l1882:	
;print_date.c: 77:   return written_bytes;
	movf	(make_time@written_bytes),w
	line	78
	
l188:	
	return
	callstack 0
GLOBAL	__end_of_make_time
	__end_of_make_time:
	signat	_make_time,8313
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 8 in file "D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> buffer(40), 
;;  from            1    4[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(7), STR_1(34), 
;; Auto vars:     Size  Location     Type
;;  to              1    7[BANK0 ] PTR unsigned char 
;;		 -> buffer(40), 
;;  cp              1    6[BANK0 ] PTR unsigned char 
;;		 -> buffer(40), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 2
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_make_time
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=2
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\strcpy.c"
	line	8
global __ptext5
__ptext5:	;psect for function _strcpy
psect	text5
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\strcpy.c"
	line	8
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
;incstack = 0
	callstack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+pclath]
;strcpy@to stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcpy@to)
	line	18
	
l1604:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l1608
	line	20
	
l1606:	
	movlw	low(01h)
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	addwf	(strcpy@cp),f
	line	21
	movlw	low(01h)
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	addwf	(strcpy@from),f
	line	19
	
l1608:	
	movf	(strcpy@from),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movf	(??_strcpy+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l1606
u950:
	line	24
	
l798:	
	return
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 32 in file "bsp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_gpio_init
;;		_init_timer_1
;;		_spi_init
;;		_uart_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"bsp.c"
	line	32
global __ptext6
__ptext6:	;psect for function _init
psect	text6
	file	"bsp.c"
	line	32
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	callstack 5
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l1698:	
;bsp.c: 34:   gpio_init();
	fcall	_gpio_init
	line	35
;bsp.c: 35:   uart_init();
	fcall	_uart_init
	line	36
;bsp.c: 36:   spi_init();
	fcall	_spi_init
	line	37
;bsp.c: 37:   init_timer_1();
	fcall	_init_timer_1
	line	39
	
l1700:	
;bsp.c: 39:   INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	40
	
l1702:	
;bsp.c: 40:   INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	41
	
l1704:	
;bsp.c: 41:   RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	42
	
l1706:	
;bsp.c: 42:   TMR1IE = 1;
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	43
	
l1708:	
;bsp.c: 43:   PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	44
	
l1710:	
;bsp.c: 44:   (INTCONbits.GIE = 1);
	bsf	(11),7	;volatile
	line	45
	
l328:	
	return
	callstack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,89
	global	_uart_init

;; *************** function _uart_init *****************
;; Defined at:
;;		line 69 in file "bsp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	69
global __ptext7
__ptext7:	;psect for function _uart_init
psect	text7
	file	"bsp.c"
	line	69
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
;incstack = 0
	callstack 5
; Regs used in _uart_init: [wreg]
	line	71
	
l1624:	
;bsp.c: 71:   SPBRG = 64;
	movlw	low(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	72
;bsp.c: 72:   TXSTA = 36;
	movlw	low(024h)
	movwf	(152)^080h	;volatile
	line	73
;bsp.c: 73:   RCSTA = 128;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	74
	
l337:	
	return
	callstack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
	signat	_uart_init,89
	global	_spi_init

;; *************** function _spi_init *****************
;; Defined at:
;;		line 76 in file "bsp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext8
__ptext8:	;psect for function _spi_init
psect	text8
	file	"bsp.c"
	line	76
	global	__size_of_spi_init
	__size_of_spi_init	equ	__end_of_spi_init-_spi_init
	
_spi_init:	
;incstack = 0
	callstack 5
; Regs used in _spi_init: [wreg+status,2]
	line	78
	
l1626:	
;bsp.c: 78:   SSPSTAT = 0b01000000;
	movlw	low(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	79
;bsp.c: 79:   SSPCON = 0b00100010;
	movlw	low(022h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	80
	
l1628:	
;bsp.c: 80:   SSPIF = 0;
	bcf	(99/8),(99)&7	;volatile
	line	81
	
l1630:	
;bsp.c: 81:   SSPBUF = 0;
	clrf	(19)	;volatile
	line	82
	
l340:	
	return
	callstack 0
GLOBAL	__end_of_spi_init
	__end_of_spi_init:
	signat	_spi_init,89
	global	_init_timer_1

;; *************** function _init_timer_1 *****************
;; Defined at:
;;		line 49 in file "bsp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	49
global __ptext9
__ptext9:	;psect for function _init_timer_1
psect	text9
	file	"bsp.c"
	line	49
	global	__size_of_init_timer_1
	__size_of_init_timer_1	equ	__end_of_init_timer_1-_init_timer_1
	
_init_timer_1:	
;incstack = 0
	callstack 5
; Regs used in _init_timer_1: [wreg]
	line	51
	
l1632:	
;bsp.c: 51:   T1CON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	52
	
l1634:	
;bsp.c: 52:   TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	53
;bsp.c: 53:   TMR1H = 0xF6;
	movlw	low(0F6h)
	movwf	(15)	;volatile
	line	54
;bsp.c: 54:   TMR1L = 0x3C;
	movlw	low(03Ch)
	movwf	(14)	;volatile
	line	55
	
l331:	
	return
	callstack 0
GLOBAL	__end_of_init_timer_1
	__end_of_init_timer_1:
	signat	_init_timer_1,89
	global	_gpio_init

;; *************** function _gpio_init *****************
;; Defined at:
;;		line 57 in file "bsp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	57
global __ptext10
__ptext10:	;psect for function _gpio_init
psect	text10
	file	"bsp.c"
	line	57
	global	__size_of_gpio_init
	__size_of_gpio_init	equ	__end_of_gpio_init-_gpio_init
	
_gpio_init:	
;incstack = 0
	callstack 5
; Regs used in _gpio_init: [wreg+status,2]
	line	59
	
l1610:	
;bsp.c: 59:   ADCON1 = 6;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	60
	
l1612:	
;bsp.c: 60:   TRISA = 0;
	clrf	(133)^080h	;volatile
	line	61
	
l1614:	
;bsp.c: 61:   TRISB = 0b11000001;
	movlw	low(0C1h)
	movwf	(134)^080h	;volatile
	line	62
	
l1616:	
;bsp.c: 62:   TRISC = 0b10000000;
	movlw	low(080h)
	movwf	(135)^080h	;volatile
	line	64
	
l1618:	
;bsp.c: 64:   PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	65
	
l1620:	
;bsp.c: 65:   PORTB = 0;
	clrf	(6)	;volatile
	line	66
	
l1622:	
;bsp.c: 66:   PORTC = 0;
	clrf	(7)	;volatile
	line	67
	
l334:	
	return
	callstack 0
GLOBAL	__end_of_gpio_init
	__end_of_gpio_init:
	signat	_gpio_init,89
	global	_get_time_data_seconds

;; *************** function _get_time_data_seconds *****************
;; Defined at:
;;		line 209 in file "segment_display.c"
;; Parameters:    Size  Location     Type
;;  seconds         1    wreg     unsigned char 
;;  time_segment    1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  seconds         1   17[BANK0 ] unsigned char 
;;  data            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       2       0
;;      Temps:          0       3       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"segment_display.c"
	line	209
global __ptext11
__ptext11:	;psect for function _get_time_data_seconds
psect	text11
	file	"segment_display.c"
	line	209
	global	__size_of_get_time_data_seconds
	__size_of_get_time_data_seconds	equ	__end_of_get_time_data_seconds-_get_time_data_seconds
	
_get_time_data_seconds:	
;incstack = 0
	callstack 5
; Regs used in _get_time_data_seconds: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;get_time_data_seconds@seconds stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(get_time_data_seconds@seconds)
	line	211
	
l2044:	
;segment_display.c: 209: uint8_t get_time_data_seconds(uint8_t seconds, uint8_t time_segment);segment_display.c: 210: {;segment_display.c: 211:   uint8_t data = 0u;
	clrf	(get_time_data_seconds@data)
	line	212
	
l2046:	
;segment_display.c: 212:   if(seconds < 60u)
	movlw	low(03Ch)
	subwf	(get_time_data_seconds@seconds),w
	skipnc
	goto	u1511
	goto	u1510
u1511:
	goto	l2056
u1510:
	line	214
	
l2048:	
;segment_display.c: 213:   {;segment_display.c: 214:     if(time_segment == 4u)
		movlw	4
	xorwf	((get_time_data_seconds@time_segment)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2052
u1520:
	line	216
	
l2050:	
;segment_display.c: 215:     {;segment_display.c: 216:       data = time_segment_coding[seconds / 10u];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(get_time_data_seconds@seconds),w
	movwf	(??_get_time_data_seconds+0)+0
	clrf	(??_get_time_data_seconds+0)+0+1
	movf	0+(??_get_time_data_seconds+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_get_time_data_seconds+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low((((_time_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_time_data_seconds+2)+0
	movf	(??_get_time_data_seconds+2)+0,w
	movwf	(get_time_data_seconds@data)
	line	217
;segment_display.c: 217:     }
	goto	l2056
	line	218
	
l2052:	
		movlw	5
	xorwf	((get_time_data_seconds@time_segment)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l178
u1530:
	line	220
	
l2054:	
;segment_display.c: 219:     {;segment_display.c: 220:       data = time_segment_coding[seconds % 10u];
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(get_time_data_seconds@seconds),w
	movwf	(??_get_time_data_seconds+0)+0
	clrf	(??_get_time_data_seconds+0)+0+1
	movf	0+(??_get_time_data_seconds+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_get_time_data_seconds+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low((((_time_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_time_data_seconds+2)+0
	movf	(??_get_time_data_seconds+2)+0,w
	movwf	(get_time_data_seconds@data)
	line	221
;segment_display.c: 221:     }
	goto	l2056
	line	225
	
l178:	
	line	227
	
l2056:	
;segment_display.c: 227:   return data;
	movf	(get_time_data_seconds@data),w
	line	228
	
l181:	
	return
	callstack 0
GLOBAL	__end_of_get_time_data_seconds
	__end_of_get_time_data_seconds:
	signat	_get_time_data_seconds,8313
	global	_get_time_data

;; *************** function _get_time_data *****************
;; Defined at:
;;		line 171 in file "segment_display.c"
;; Parameters:    Size  Location     Type
;;  p_time          1    wreg     PTR struct .
;;		 -> current_time(6), 
;;  time_segment    1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  p_time          1   17[BANK0 ] PTR struct .
;;		 -> current_time(6), 
;;  data            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       2       0
;;      Temps:          0       3       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	171
global __ptext12
__ptext12:	;psect for function _get_time_data
psect	text12
	file	"segment_display.c"
	line	171
	global	__size_of_get_time_data
	__size_of_get_time_data	equ	__end_of_get_time_data-_get_time_data
	
_get_time_data:	
;incstack = 0
	callstack 5
; Regs used in _get_time_data: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;get_time_data@p_time stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(get_time_data@p_time)
	line	173
	
l2008:	
;segment_display.c: 171: uint8_t get_time_data(time *p_time, uint8_t time_segment);segment_display.c: 172: {;segment_display.c: 173:   uint8_t data = 0;
	clrf	(get_time_data@data)
	line	174
	
l2010:	
;segment_display.c: 174:   if(p_time != (0))
	movf	((get_time_data@p_time)),w
	btfsc	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2036
u1450:
	goto	l2034
	line	179
	
l2014:	
;segment_display.c: 179:         if((p_time->hours > 10u) && (p_time->hours < 24u))
	incf	(get_time_data@p_time),w
	movwf	fsr0
	movlw	low(0Bh)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipc
	goto	u1461
	goto	u1460
u1461:
	goto	l2036
u1460:
	
l2016:	
	incf	(get_time_data@p_time),w
	movwf	fsr0
	movlw	low(018h)
	subwf	indf,w
	skipnc
	goto	u1471
	goto	u1470
u1471:
	goto	l2036
u1470:
	line	181
	
l2018:	
;segment_display.c: 180:         {;segment_display.c: 181:           data = time_segment_coding[p_time->hours / 10u];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	incf	(get_time_data@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_get_time_data+0)+0
	clrf	(??_get_time_data+0)+0+1
	movf	0+(??_get_time_data+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_get_time_data+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low((((_time_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_time_data+2)+0
	movf	(??_get_time_data+2)+0,w
	movwf	(get_time_data@data)
	goto	l2036
	line	185
	
l2020:	
;segment_display.c: 185:         if(p_time->hours < 24u)
	incf	(get_time_data@p_time),w
	movwf	fsr0
	movlw	low(018h)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipnc
	goto	u1481
	goto	u1480
u1481:
	goto	l2036
u1480:
	line	187
	
l2022:	
;segment_display.c: 186:         {;segment_display.c: 187:           data = time_segment_coding[p_time->hours % 10u] + 1u;
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	incf	(get_time_data@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_get_time_data+0)+0
	clrf	(??_get_time_data+0)+0+1
	movf	0+(??_get_time_data+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_get_time_data+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low((((_time_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addlw	01h
	movwf	(??_get_time_data+2)+0
	movf	(??_get_time_data+2)+0,w
	movwf	(get_time_data@data)
	goto	l2036
	line	191
	
l2024:	
;segment_display.c: 191:         if(p_time->minutes < 60u)
	movf	(get_time_data@p_time),w
	movwf	fsr0
	movlw	low(03Ch)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipnc
	goto	u1491
	goto	u1490
u1491:
	goto	l2036
u1490:
	line	193
	
l2026:	
;segment_display.c: 192:         {;segment_display.c: 193:           data = time_segment_coding[p_time->minutes / 10u];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(get_time_data@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_get_time_data+0)+0
	clrf	(??_get_time_data+0)+0+1
	movf	0+(??_get_time_data+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_get_time_data+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low((((_time_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_time_data+2)+0
	movf	(??_get_time_data+2)+0,w
	movwf	(get_time_data@data)
	goto	l2036
	line	197
	
l2028:	
;segment_display.c: 197:         if(p_time->minutes < 60u)
	movf	(get_time_data@p_time),w
	movwf	fsr0
	movlw	low(03Ch)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l2036
u1500:
	line	199
	
l2030:	
;segment_display.c: 198:         {;segment_display.c: 199:           data = time_segment_coding[p_time->minutes % 10u] + 1u;
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(get_time_data@p_time),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_get_time_data+0)+0
	clrf	(??_get_time_data+0)+0+1
	movf	0+(??_get_time_data+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_get_time_data+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low((((_time_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addlw	01h
	movwf	(??_get_time_data+2)+0
	movf	(??_get_time_data+2)+0,w
	movwf	(get_time_data@data)
	goto	l2036
	line	204
	
l2034:	
	movf	(get_time_data@time_segment),w
	movwf	(??_get_time_data+0)+0
	clrf	(??_get_time_data+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            9     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_get_time_data+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2348
	goto	l2036
	asmopt pop
	
l2348:	
; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           15     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_get_time_data+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2014
	xorlw	1^0	; case 1
	skipnz
	goto	l2020
	xorlw	2^1	; case 2
	skipnz
	goto	l2024
	xorlw	3^2	; case 3
	skipnz
	goto	l2028
	goto	l2036
	asmopt pop

	line	206
	
l2036:	
;segment_display.c: 206:   return data;
	movf	(get_time_data@data),w
	line	207
	
l173:	
	return
	callstack 0
GLOBAL	__end_of_get_time_data
	__end_of_get_time_data:
	signat	_get_time_data,8313
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 276 in file "dcf77_decoder.c"
;; Parameters:    Size  Location     Type
;;  p_time          1    wreg     PTR struct .
;;		 -> current_time(6), 
;; Auto vars:     Size  Location     Type
;;  p_time          1    5[BANK0 ] PTR struct .
;;		 -> current_time(6), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"dcf77_decoder.c"
	line	276
global __ptext13
__ptext13:	;psect for function _get_time
psect	text13
	file	"dcf77_decoder.c"
	line	276
	global	__size_of_get_time
	__size_of_get_time	equ	__end_of_get_time-_get_time
	
_get_time:	
;incstack = 0
	callstack 6
; Regs used in _get_time: [wreg-fsr0h+status,2+status,0]
;get_time@p_time stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(get_time@p_time)
	line	278
	
l1788:	
;dcf77_decoder.c: 276: void get_time(time *p_time);dcf77_decoder.c: 277: {;dcf77_decoder.c: 278:   p_time->day = last_one.day;
	movf	0+(_last_one)+03h,w
	movwf	(??_get_time+0)+0
	movf	(get_time@p_time),w
	addlw	03h
	movwf	fsr0
	movf	(??_get_time+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	279
;dcf77_decoder.c: 279:   p_time->day_of_week = last_one.day_of_week;
	movf	0+(_last_one)+02h,w
	movwf	(??_get_time+0)+0
	movf	(get_time@p_time),w
	addlw	02h
	movwf	fsr0
	movf	(??_get_time+0)+0,w
	movwf	indf
	line	280
	
l1790:	
;dcf77_decoder.c: 280:   p_time->hours = last_one.hours;
	movf	0+(_last_one)+01h,w
	movwf	(??_get_time+0)+0
	incf	(get_time@p_time),w
	movwf	fsr0
	movf	(??_get_time+0)+0,w
	movwf	indf
	line	281
	
l1792:	
;dcf77_decoder.c: 281:   p_time->minutes = last_one.minutes;
	movf	(_last_one),w
	movwf	(??_get_time+0)+0
	movf	(get_time@p_time),w
	movwf	fsr0
	movf	(??_get_time+0)+0,w
	movwf	indf
	line	282
;dcf77_decoder.c: 282:   p_time->month = last_one.month;
	movf	0+(_last_one)+04h,w
	movwf	(??_get_time+0)+0
	movf	(get_time@p_time),w
	addlw	04h
	movwf	fsr0
	movf	(??_get_time+0)+0,w
	movwf	indf
	line	283
;dcf77_decoder.c: 283:   p_time->year = last_one.year;
	movf	0+(_last_one)+05h,w
	movwf	(??_get_time+0)+0
	movf	(get_time@p_time),w
	addlw	05h
	movwf	fsr0
	movf	(??_get_time+0)+0,w
	movwf	indf
	line	284
	
l250:	
	return
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,4217
	global	_get_day_data

;; *************** function _get_day_data *****************
;; Defined at:
;;		line 155 in file "segment_display.c"
;; Parameters:    Size  Location     Type
;;  p_time          1    wreg     PTR struct .
;;		 -> current_time(6), 
;;  day_segment     1    8[BANK0 ] unsigned char 
;;  byte            1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  p_time          1   16[BANK0 ] PTR struct .
;;		 -> current_time(6), 
;;  data            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       5       0
;;      Totals:         0       9       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"segment_display.c"
	line	155
global __ptext14
__ptext14:	;psect for function _get_day_data
psect	text14
	file	"segment_display.c"
	line	155
	global	__size_of_get_day_data
	__size_of_get_day_data	equ	__end_of_get_day_data-_get_day_data
	
_get_day_data:	
;incstack = 0
	callstack 5
; Regs used in _get_day_data: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;get_day_data@p_time stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(get_day_data@p_time)
	line	157
	
l2096:	
;segment_display.c: 155: uint8_t get_day_data(time *p_time, uint8_t day_segment, uint8_t byte);segment_display.c: 156: {;segment_display.c: 157:   uint8_t data = 0u;
	clrf	(get_day_data@data)
	line	158
	
l2098:	
;segment_display.c: 158:   if(p_time != (0))
	movf	((get_day_data@p_time)),w
	btfsc	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2110
u1550:
	line	160
	
l2100:	
;segment_display.c: 159:   {;segment_display.c: 160:     if((p_time->day_of_week > 0u) && (p_time->day_of_week < 8u))
	movf	(get_day_data@p_time),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfsc	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2110
u1560:
	
l2102:	
	movf	(get_day_data@p_time),w
	addlw	02h
	movwf	fsr0
	movlw	low(08h)
	subwf	indf,w
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l2110
u1570:
	line	162
	
l2104:	
;segment_display.c: 161:     {;segment_display.c: 162:       if((day_segment < 3u) && (byte < 2u))
	movlw	low(03h)
	subwf	(get_day_data@day_segment),w
	skipnc
	goto	u1581
	goto	u1580
u1581:
	goto	l2110
u1580:
	
l2106:	
	movlw	low(02h)
	subwf	(get_day_data@byte),w
	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l2110
u1590:
	line	164
	
l2108:	
;segment_display.c: 163:       {;segment_display.c: 164:         data = day_segment_coding[p_time->day_of_week - 1u][day_segment][byte];
	movf	(get_day_data@day_segment),w
	movwf	(??_get_day_data+0)+0
	movlw	01h
u1605:
	clrc
	rlf	(??_get_day_data+0)+0,f
	addlw	-1
	skipz
	goto	u1605
	movlw	(low((((_day_segment_coding)-__stringbase)|8000h)+0FAh))&0ffh
	addwf	0+(??_get_day_data+0)+0,w
	movwf	(??_get_day_data+1)+0
	movlw	low(06h)
	movwf	(??_get_day_data+2)+0
	movf	(??_get_day_data+2)+0,w
	movwf	(___bmul@multiplicand)
	movf	(get_day_data@p_time),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_get_day_data+1)+0,w
	movwf	(??_get_day_data+3)+0
	movf	(get_day_data@byte),w
	addwf	0+(??_get_day_data+3)+0,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_day_data+4)+0
	movf	(??_get_day_data+4)+0,w
	movwf	(get_day_data@data)
	line	168
	
l2110:	
;segment_display.c: 168:   return data;
	movf	(get_day_data@data),w
	line	169
	
l158:	
	return
	callstack 0
GLOBAL	__end_of_get_day_data
	__end_of_get_day_data:
	signat	_get_day_data,12409
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    7[BANK0 ] unsigned char 
;;  product         1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_day_data
;;		_make_time
;;		_new_bit
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\Umul8.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___bmul
psect	text15
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	callstack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l1636:	
	clrf	(___bmul@product)
	line	43
	
l1638:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u961
	goto	u960
u961:
	goto	l1642
u960:
	line	44
	
l1640:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	line	45
	
l1642:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1644:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l1638
u970:
	line	50
	
l1646:	
	movf	(___bmul@product),w
	line	51
	
l370:	
	return
	callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_get_date_data

;; *************** function _get_date_data *****************
;; Defined at:
;;		line 115 in file "segment_display.c"
;; Parameters:    Size  Location     Type
;;  p_time          1    wreg     PTR struct .
;;		 -> current_time(6), 
;;  date_segment    1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  p_time          1   17[BANK0 ] PTR struct .
;;		 -> current_time(6), 
;;  value           1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       2       0
;;      Temps:          0       3       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"segment_display.c"
	line	115
global __ptext16
__ptext16:	;psect for function _get_date_data
psect	text16
	file	"segment_display.c"
	line	115
	global	__size_of_get_date_data
	__size_of_get_date_data	equ	__end_of_get_date_data-_get_date_data
	
_get_date_data:	
;incstack = 0
	callstack 5
; Regs used in _get_date_data: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;get_date_data@p_time stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(get_date_data@p_time)
	line	117
	
l2060:	
;segment_display.c: 115: uint8_t get_date_data(time *p_time, uint8_t date_segment);segment_display.c: 116: {;segment_display.c: 117:   uint8_t value = 0u;
	clrf	(get_date_data@value)
	line	118
	
l2062:	
;segment_display.c: 118:   if(p_time != (0))
	movf	((get_date_data@p_time)),w
	btfsc	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2088
u1540:
	goto	l2086
	line	123
	
l2066:	
;segment_display.c: 123:         value = date_segment_coding[p_time->year % 10u];
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(get_date_data@p_time),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	movf	0+(??_get_date_data+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_get_date_data+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low((((_date_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_date_data+2)+0
	movf	(??_get_date_data+2)+0,w
	movwf	(get_date_data@value)
	line	124
;segment_display.c: 124:         break;
	goto	l2088
	line	126
	
l2068:	
;segment_display.c: 126:         value = date_segment_coding[p_time->year / 10u];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(get_date_data@p_time),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	movf	0+(??_get_date_data+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_get_date_data+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low((((_date_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_date_data+2)+0
	movf	(??_get_date_data+2)+0,w
	movwf	(get_date_data@value)
	line	127
;segment_display.c: 127:         break;
	goto	l2088
	line	130
	
l2070:	
;segment_display.c: 130:         value = date_segment_coding[0u];
	movlw	low((_date_segment_coding-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_date_data+0)+0
	movf	(??_get_date_data+0)+0,w
	movwf	(get_date_data@value)
	line	131
;segment_display.c: 131:         break;
	goto	l2088
	line	133
	
l2072:	
;segment_display.c: 133:         value = date_segment_coding[2u];
	movlw	low((((_date_segment_coding+02h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_date_data+0)+0
	movf	(??_get_date_data+0)+0,w
	movwf	(get_date_data@value)
	line	134
;segment_display.c: 134:         break;
	goto	l2088
	line	136
	
l2074:	
;segment_display.c: 136:         value = date_segment_coding[p_time->month % 10u] + 128u;
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(get_date_data@p_time),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	movf	0+(??_get_date_data+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_get_date_data+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low((((_date_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addlw	080h
	movwf	(??_get_date_data+2)+0
	movf	(??_get_date_data+2)+0,w
	movwf	(get_date_data@value)
	line	137
;segment_display.c: 137:         break;
	goto	l2088
	line	139
	
l2076:	
;segment_display.c: 139:         value = date_segment_coding[p_time->month / 10u];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(get_date_data@p_time),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	movf	0+(??_get_date_data+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_get_date_data+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low((((_date_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_date_data+2)+0
	movf	(??_get_date_data+2)+0,w
	movwf	(get_date_data@value)
	line	140
;segment_display.c: 140:         break;
	goto	l2088
	line	142
	
l2078:	
;segment_display.c: 142:         value = date_segment_coding[p_time->day % 10u] + 128u;
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(get_date_data@p_time),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	movf	0+(??_get_date_data+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_get_date_data+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low((((_date_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	addlw	080h
	movwf	(??_get_date_data+2)+0
	movf	(??_get_date_data+2)+0,w
	movwf	(get_date_data@value)
	line	143
;segment_display.c: 143:         break;
	goto	l2088
	line	145
	
l2080:	
;segment_display.c: 145:         value = date_segment_coding[p_time->day / 10u];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(get_date_data@p_time),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	movf	0+(??_get_date_data+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_get_date_data+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low((((_date_segment_coding)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_get_date_data+2)+0
	movf	(??_get_date_data+2)+0,w
	movwf	(get_date_data@value)
	line	146
;segment_display.c: 146:         break;
	goto	l2088
	line	148
	
l2082:	
;segment_display.c: 148:         value = 0u;
	clrf	(get_date_data@value)
	line	149
;segment_display.c: 149:         break;
	goto	l2088
	line	150
	
l2086:	
	movf	(get_date_data@date_segment),w
	movwf	(??_get_date_data+0)+0
	clrf	(??_get_date_data+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            9     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_get_date_data+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2350
	goto	l2082
	asmopt pop
	
l2350:	
; Switch size 1, requested type "simple"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     7 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_get_date_data+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l2066
	xorlw	1^0	; case 1
	skipnz
	goto	l2068
	xorlw	2^1	; case 2
	skipnz
	goto	l2070
	xorlw	3^2	; case 3
	skipnz
	goto	l2072
	xorlw	4^3	; case 4
	skipnz
	goto	l2074
	xorlw	5^4	; case 5
	skipnz
	goto	l2076
	xorlw	6^5	; case 6
	skipnz
	goto	l2078
	xorlw	7^6	; case 7
	skipnz
	goto	l2080
	goto	l2082
	asmopt pop

	line	152
	
l2088:	
;segment_display.c: 152:   return value;
	movf	(get_date_data@value),w
	line	153
	
l152:	
	return
	callstack 0
GLOBAL	__end_of_get_date_data
	__end_of_get_date_data:
	signat	_get_date_data,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] unsigned int 
;;  dividend        2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_date_data
;;		_get_time_data
;;		_get_time_data_seconds
;;		_make_time
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext17
__ptext17:	;psect for function ___lwmod
psect	text17
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	callstack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l1676:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1694
u1050:
	line	13
	
l1678:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l1684
	line	15
	
l1680:	
	movlw	01h
	
u1065:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1065
	line	16
	
l1682:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l1684:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l1680
u1070:
	line	19
	
l1686:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1085
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1085:
	skipc
	goto	u1081
	goto	u1080
u1081:
	goto	l1690
u1080:
	line	20
	
l1688:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1690:	
	movlw	01h
	
u1095:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u1095
	line	22
	
l1692:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1686
u1100:
	line	24
	
l1694:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l626:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] unsigned int 
;;  dividend        2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK0 ] unsigned int 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       3       0
;;      Temps:          0       1       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_date_data
;;		_get_time_data
;;		_get_time_data_seconds
;;		_make_time
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext18
__ptext18:	;psect for function ___lwdiv
psect	text18
	file	"D:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l1650:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1652:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u981
	goto	u980
u981:
	goto	l1672
u980:
	line	15
	
l1654:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l1660
	line	17
	
l1656:	
	movlw	01h
	
u995:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u995
	line	18
	
l1658:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l1660:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l1656
u1000:
	line	21
	
l1662:	
	movlw	01h
	
u1015:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1015
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1025
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1025:
	skipc
	goto	u1021
	goto	u1020
u1021:
	goto	l1668
u1020:
	line	23
	
l1664:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l1666:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1668:	
	movlw	01h
	
u1035:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1035
	line	27
	
l1670:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1662
u1040:
	line	29
	
l1672:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l616:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 75 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       4       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	75
global __ptext19
__ptext19:	;psect for function _isr
psect	text19
	file	"main.c"
	line	75
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	callstack 4
; Regs used in _isr: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+1)
	movf	fsr0,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text19
	line	77
	
i1l2114:	
;main.c: 77:   if (TMR1IF)
	btfss	(96/8),(96)&7	;volatile
	goto	u161_21
	goto	u161_20
u161_21:
	goto	i1l2120
u161_20:
	line	79
	
i1l2116:	
;main.c: 78:   {;main.c: 79:     TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	80
	
i1l2118:	
;main.c: 80:     TMR1H = 0xF6;
	movlw	low(0F6h)
	movwf	(15)	;volatile
	line	81
;main.c: 81:     TMR1L = 0x3C;
	movlw	low(03Ch)
	movwf	(14)	;volatile
	line	82
;main.c: 82:     ms_counter++;
	movlw	01h
	addwf	(_ms_counter),f	;volatile
	skipnc
	incf	(_ms_counter+1),f	;volatile
	movlw	0
	addwf	(_ms_counter+1),f	;volatile
	line	83
;main.c: 83:     milli_seconds++;
	movlw	01h
	addwf	(_milli_seconds),f	;volatile
	skipnc
	incf	(_milli_seconds+1),f	;volatile
	movlw	0
	addwf	(_milli_seconds+1),f	;volatile
	line	85
	
i1l2120:	
;main.c: 85:   if(RCIF && RCIE)
	btfss	(101/8),(101)&7	;volatile
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l92
u162_20:
	
i1l2122:	
	line	88
;main.c: 86:   {;main.c: 88:   }
	
i1l92:	
	line	90
;main.c: 90:   if(TXIF && TXIE)
	btfss	(100/8),(100)&7	;volatile
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l93
u163_20:
	
i1l2124:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u164_21
	goto	u164_20
u164_21:
	goto	i1l93
u164_20:
	line	92
	
i1l2126:	
;main.c: 91:   {;main.c: 92:     TXREG = buffer[out++];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_out),w
	addlw	low(_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(25)	;volatile
	
i1l2128:	
	movlw	low(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_out),f	;volatile
	line	93
	
i1l2130:	
;main.c: 93:     if(out == sizeof(buffer))
		movlw	40
	xorwf	((_out)),w	;volatile
	btfss	status,2
	goto	u165_21
	goto	u165_20
u165_21:
	goto	i1l2134
u165_20:
	line	95
	
i1l2132:	
;main.c: 94:     {;main.c: 95:       out = 0;
	clrf	(_out)	;volatile
	line	97
	
i1l2134:	
;main.c: 97:     if(out == in)
	movf	(_out),w	;volatile
	xorwf	(_in),w	;volatile
	skipz
	goto	u166_21
	goto	u166_20
u166_21:
	goto	i1l93
u166_20:
	line	99
	
i1l2136:	
;main.c: 98:     {;main.c: 99:       TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	101
;main.c: 101:   }
	
i1l93:	
	line	103
;main.c: 103:   if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u167_21
	goto	u167_20
u167_21:
	goto	i1l99
u167_20:
	line	105
	
i1l2138:	
;main.c: 104:   {;main.c: 105:     INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	106
;main.c: 106:     if(INTEDG)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1038/8)^080h,(1038)&7	;volatile
	goto	u168_21
	goto	u168_20
u168_21:
	goto	i1l97
u168_20:
	line	108
	
i1l2140:	
;main.c: 107:     {;main.c: 108:       INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	109
	
i1l2142:	
;main.c: 109:       pause = ms_counter;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ms_counter+1),w	;volatile
	movwf	(_pause+1)	;volatile
	movf	(_ms_counter),w	;volatile
	movwf	(_pause)	;volatile
	line	110
;main.c: 110:     }
	goto	i1l2146
	line	111
;main.c: 111:     else
	
i1l97:	
	line	113
;main.c: 112:     {;main.c: 113:       INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	114
	
i1l2144:	
;main.c: 114:       new_value = ms_counter;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ms_counter+1),w	;volatile
	movwf	(_new_value+1)	;volatile
	movf	(_ms_counter),w	;volatile
	movwf	(_new_value)	;volatile
	line	116
	
i1l2146:	
;main.c: 116:     ms_counter = 0;
	clrf	(_ms_counter)	;volatile
	clrf	(_ms_counter+1)	;volatile
	line	118
	
i1l99:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	fsr0
	swapf	(??_isr+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end

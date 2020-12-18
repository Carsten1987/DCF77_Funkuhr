/*
MIT License

Copyright (c) 2020 Carsten1987

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#include <xc.h>

static void init_timer_1(void);
static void gpio_init(void);
static void uart_init(void);
static void spi_init(void);

void init(void)
{
  gpio_init();
  uart_init();
  spi_init();
  init_timer_1();

  INTE = 1; // RB0 ISR enabled
  INTEDG = 0; // rising edge
  RCIE = 1; // UART Receive ISR enabled
  TMR1IE = 1; // Timer 1 ISR enabled
  PEIE = 1; // Peripherial ISR enabled
  ei(); // General ISR enabled
}

// Timer1
// Prescaler 1:1; TMR1 Preload = 63036; Actual Interrupt Time : 1 ms
static void init_timer_1(void)
{
  T1CON	 = 0x01;
  TMR1IF	 = 0;
  TMR1H	 = 0xF6;
  TMR1L	 = 0x3C;
}

static void gpio_init(void)
{
  ADCON1 = 6; // all pins digital
  TRISA = 0; // all Outputs
  TRISB = 0b11000001; // PGC/PGD Input, RBO/INT input, others output
  TRISC = 0b10000000; // RC7 Input, others output. RC4(SDI) as Output, because it´s not used
  // Init all pins to 0
  PORTA = 0;
  PORTB = 0;
  PORTC = 0;
}

static void uart_init(void)
{
  SPBRG = 64; // 9,6kbaud
  TXSTA = 36; // Asynchronous mode, High-Speed
  RCSTA = 128; // UART enable, receive disabled (not yet needed) (144 enables also receive)
}

static void spi_init(void)
{
  SSPSTAT = 0b01000000; // transmit on rising edge of SCK
  SSPCON = 0b00100001; // Enable Port, Mastzer Mode FOSC/16
  SSPIF = 0;
  SSPBUF = 0;
}
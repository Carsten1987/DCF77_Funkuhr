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
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "bsp.h"
#include "device_config.h"
#include "dcf77_decoder.h"
#include "segment_display.h"
#include "print_date.h"

#define PRINT_TIME
#define SPI_TIME

#define PIN_DOF  RB2
#define PIN_DATE RB3
#define PIN_TIME RB4

#define IMPULS_0_MIN  40u
#define IMPULS_0_MAX 130u
#define IMPULS_1_MIN 140u
#define IMPULS_1_MAX 230u

#ifdef PRINT_TIME
static char buffer[40] = { 0 };
static volatile uint8_t in = 0;
static volatile uint8_t out = 0;
#endif
static volatile uint16_t ms_counter = 0;
static volatile uint16_t new_value = 0;
static volatile uint16_t pause = 0;
static volatile uint8_t bit_counter = 0;
static volatile uint16_t milli_seconds = 0;
static volatile uint8_t seconds = 0;
static time current_time = { 
  .minutes = 0,
  .hours = 0,
  .day_of_week = 1,
  .day = 1,
  .month = 1,
  .year = 20,
 };
#ifdef SPI_TIME
static uint8_t date_segment = 0;
static uint8_t day_segment = 0;
static uint8_t spi_buffer[11] = { 0 };
static uint8_t out_pos = 0;
#endif

void __interrupt() isr()
{
  if (TMR1IF)
  { // 1ms ISR
    TMR1IF = 0;
    TMR1H	 = 0xF6;
    TMR1L	 = 0x3C;
    ms_counter++;
    milli_seconds++;
  }
  if(RCIF && RCIE)
  { // received UART char
    /* code */
  }
#ifdef PRINT_TIME
  if(TXIF && TXIE)
  { // tx buffer empty. Next char can be send
    TXREG = buffer[out++];
    if(out == sizeof(buffer))
    {
      out = 0;
    }
    if(out == in)
    {
      TXIE = 0;
    }
  }
#endif
  if(INTF)
  { // RBO Interrupt detected
    INTF = 0;
    if(INTEDG)
    {
      INTEDG = 0;
      pause = ms_counter;
    }
    else
    {
      INTEDG = 1;
      new_value = ms_counter;
    }
    ms_counter = 0;
  }
}

void main(void)
{
  bool new_time = false;
  init();
#ifdef PRINT_TIME
  strcpy(buffer, "Initialization successfully done\n");
  in = (uint8_t)strlen(buffer);
  TXREG = buffer[out++];
  TXIE = 1;
#else
  TXREG = 'I';
#endif
  while(1)
  {
    if(pause > 1000)
    {
      pause = 0;
      minute_gone(bit_counter);
      bit_counter = 0;
      milli_seconds = 0;
      seconds = 0;
      new_time = true;
    }
    if(milli_seconds >= 1000)
    {
      milli_seconds = 0;
      seconds++;
      TXREG = '.';
    }
    if(seconds == 60)
    {
      seconds = 0;
      minute_gone(0);
      new_time = true;
      TXREG = '\n';
    }
    if(new_time)
    {
      get_time(&current_time);
#ifdef PRINT_TIME
      in = make_time(buffer, &current_time);
      out = 0;
      TXREG = buffer[out++];
      TXIE = 1;
#endif
      new_time = false;
    }
    if(new_value >= IMPULS_0_MIN && new_value <=  IMPULS_0_MAX)
    {
      new_value = 0;
      new_bit(bit_counter++, 0);
    }
    else if(new_value >= IMPULS_1_MIN && new_value <= IMPULS_1_MAX)
    {
      new_value = 0;
      new_bit(bit_counter++, 1);
    }
#ifdef SPI_TIME
    if(SSPIF) // wait until transmission completed
    {
      WCOL = 0;
      SSPIF = 0;
      if(out_pos == 0)
      {
        PIN_DOF = 1;
        PIN_TIME = 0;
      }
      else if(out_pos == 6)
      {
        PIN_TIME = 1;
        PIN_DATE = 0;
      }
      else if(out_pos == 8)
      {
        PIN_DATE = 1;
        PIN_DOF = 0;
      }
      SSPBUF = spi_buffer[out_pos++];
      if(out_pos == sizeof(spi_buffer))
      {
        out_pos = 0;
      }
      /*
        0-5  = Zeit
        6-7  = Datum
        8-10 = Tag
      */
      if(out_pos == 6)
      {
        spi_buffer[0] = get_time_data(&current_time, 0);
        spi_buffer[1] = get_time_data(&current_time, 1);
        spi_buffer[2] = get_time_data(&current_time, 2);
        spi_buffer[3] = get_time_data(&current_time, 3);
        spi_buffer[4] = get_time_data_seconds(seconds, 4);
        spi_buffer[5] = get_time_data_seconds(seconds, 5);
      }
      else if(out_pos == 8)
      {
        spi_buffer[6] = (uint8_t)(1u << date_segment);
        spi_buffer[7] = get_date_data(&current_time, date_segment++);
        if(date_segment == 8)
        {
          date_segment = 0;
        }
      }
      else if(out_pos == 0)
      {
        spi_buffer[8] = (uint8_t)(1u << day_segment);
        spi_buffer[9] = get_day_data(&current_time, day_segment, 0);
        spi_buffer[10] = get_day_data(&current_time, day_segment++, 1);
        if(day_segment == 3)
        {
          day_segment = 0;
        }
      }
    }
#endif
  }
}

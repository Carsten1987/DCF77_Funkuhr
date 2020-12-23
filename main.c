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

#include "device_config.h"
#include "bsp.h"
#include "dcf77_decoder.h"
#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

//#define PRINT_TIME

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
static time current_time = { 0 };
#ifndef PRINT_TIME
static uint8_t date_segment = 0;
static uint8_t day_segment = 0;
static uint8_t spi_buffer[11] = { 0 };
static uint8_t out_pos = 0;
#endif

#ifdef PRINT_TIME
static void make_time(time *p_time);
#else
static uint8_t get_date_data(uint8_t date_segment);
static uint8_t get_day_data(uint8_t day_segment, uint8_t byte);

static const uint8_t date_segment_coding[] =
{
  /*0*/63, /*1*/6, /*2*/91, /*3*/79,/*4*/102,
  /*5*/109, /*6*/125, /*7*/7, /*8*/127, /*9*/111
};

static const uint8_t day_segment_coding[7][3][2] =
{
  { // MON
    { 0x8c, 0x4c }, 
    { 0x89, 0xcb }, 
    { 0x8c, 0x68 }
  },
  { // dIN
    { 0x90, 0xd9 },
    { 0x22, 0x00 },
    { 0x8c, 0x68 }
  },
  { // MIT
    { 0x8c, 0x4c },
    { 0x22, 0x00 },
    { 0x23, 0x02 },
  },
  { // dON
    { 0x90, 0xd9 },
    { 0x89, 0xcb },
    { 0x8c, 0x68 }
  },
  { // FRE
    { 0x99, 0x02 },
    { 0x99, 0x3a },
    { 0x99, 0x83 },
  },
  { // SAM
    { 0x19, 0xd3 },
    { 0x99, 0x5f },
    { 0x8c, 0x4c }
  },
  { // SON
    { 0x19, 0xd3 },
    { 0x89, 0xcb },
    { 0x8c, 0x68 }
  }
};
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
      get_time(&current_time);
#ifdef PRINT_TIME
      make_time(&current_time);
      out = 0;
      TXREG = buffer[out++];
      TXIE = 1;
#endif
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
#ifndef PRINT_TIME
    if(SSPIF) // wait until transmission completed
    {
      WCOL = 0;
      SSPIF = 0;
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
      if(out_pos == 8)
      {
        spi_buffer[6] = date_segment;
        spi_buffer[7] = get_date_data(date_segment++);
        if(date_segment == 8)
        {
          date_segment = 0;
        }
      }
      else if(out_pos == 0)
      {
        spi_buffer[8] = day_segment;
        spi_buffer[9] = get_day_data(day_segment, 0);
        spi_buffer[10] = get_day_data(day_segment++, 1);
        if(day_segment == 3)
        {
          day_segment = 0;
        }
      }
    }
#endif
  }
}
#ifdef PRINT_TIME
static void make_time(time *p_time)
{
  in = 6;
  strcpy(buffer, "Time: ");
  buffer[in++] = p_time->day / 10 + '0';
  buffer[in++] = p_time->day % 10 + '0';
  buffer[in++] = '.';
  buffer[in++] = p_time->month / 10 + '0';
  buffer[in++] = p_time->month % 10 + '0';
  buffer[in++] = '.';
  buffer[in++] = '2';
  buffer[in++] = '0';
  buffer[in++] = p_time->year / 10 + '0';
  buffer[in++] = p_time->year % 10 + '0';
  buffer[in++] = ' ';
  buffer[in++] = p_time->hours/ 10 + '0';
  buffer[in++] = p_time->hours % 10 + '0';
  buffer[in++] = ':';
  buffer[in++] = p_time->minutes / 10 + '0';
  buffer[in++] = p_time->minutes % 10 + '0';
  buffer[in++] = '\n';
}
#else
static uint8_t get_date_data(uint8_t date_segment)
{
  uint8_t value;
  switch (date_segment)
  {
  case 0:
    value = date_segment_coding[current_time.day / 10];
    break;
  case 1:
    value = date_segment_coding[current_time.day % 10] + 128; // +128 activates decimal point
    break;
  case 2:
    value = date_segment_coding[current_time.month / 10];
    break;
  case 3:
    value = date_segment_coding[current_time.month % 10] + 128; // +128 activates decimal point
    break;
  case 4:
    value = date_segment_coding[current_time.year / 1000];
    break;
  case 5:
    value = date_segment_coding[current_time.year / 100];
    break;
  case 6:
    value = date_segment_coding[current_time.year / 10];
    break;
  case 7:
    value = date_segment_coding[current_time.year % 10];
    break;
  default:
    value = 0;
    break;
  }
  return value;
}

static uint8_t get_day_data(uint8_t day_segment, uint8_t byte)
{
  return day_segment_coding[current_time.day_of_week - 1][day_segment][byte];
}
#endif

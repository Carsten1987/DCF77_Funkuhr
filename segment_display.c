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

#include <stdio.h>
#include "segment_display.h"

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

uint8_t get_date_data(time *p_time, uint8_t date_segment)
{
  uint8_t value = 0;
  if(p_time != NULL)
  {
    switch (date_segment)
    {
      case 0:
        value = date_segment_coding[p_time->day / 10];
        break;
      case 1:
        value = date_segment_coding[p_time->day % 10] + 128; // +128 activates decimal point
        break;
      case 2:
        value = date_segment_coding[p_time->month / 10];
        break;
      case 3:
        value = date_segment_coding[p_time->month % 10] + 128; // +128 activates decimal point
        break;
      case 4:
        value = date_segment_coding[p_time->year / 1000];
        break;
      case 5:
        value = date_segment_coding[p_time->year / 100];
        break;
      case 6:
        value = date_segment_coding[p_time->year / 10];
        break;
      case 7:
        value = date_segment_coding[p_time->year % 10];
        break;
      default:
        value = 0;
        break;
    }
  }
  return value;
}

uint8_t get_day_data(time *p_time, uint8_t day_segment, uint8_t byte)
{
  uint8_t data = 0;
  if(p_time != NULL)
  {
    if((p_time->day_of_week > 0)  && (p_time->day_of_week < 8))
    {
      if((day_segment < 7) && (byte < 2))
      {
        data = day_segment_coding[p_time->day_of_week - 1][day_segment][byte];
      }
    }
  }
  return data;
}

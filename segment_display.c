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

/* 
 *  AAA
 * F   B
 * F   B
 *  GGG
 * E   C
 * E   C
 *  DDD
 * 
 * Bit 0: A
 * Bit 1: B
 * Bit 2: C
 * Bit 3: D
 * Bit 4: E
 * Bit 5: F
 * Bit 6: G
 * Bit 7: DP
 */
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
    { 0x99, 0x5a },
    { 0x8c, 0x4c }
  },
  { // SON
    { 0x19, 0xd3 },
    { 0x89, 0xcb },
    { 0x8c, 0x68 }
  }
};

/* 
 *  AAA
 * F   B
 * F   B
 *  GGG
 * E   C
 * E   C
 *  DDD
 * 
 * Bit 0: DP
 * Bit 1: C
 * Bit 2: D
 * Bit 3: E
 * Bit 4: B
 * Bit 5: A
 * Bit 6: G
 * Bit 7: F
 */
static const uint8_t time_segment_coding[] =
{  
  /*0*/190, /*1*/18, /*2*/124, /*3*/118,/*4*/210,
  /*5*/230, /*6*/238, /*7*/50, /*8*/254, /*9*/246
};

uint8_t get_date_data(time *p_time, uint8_t date_segment)
{
  uint8_t value = 0u;
  if(p_time != NULL)
  {
    switch (date_segment)
    {
      case 0u:
        value = date_segment_coding[p_time->year % 10u];
        break;
      case 1u:
        value = date_segment_coding[p_time->year / 10u];
        break;
      // first two segments have to be hard coded, because DCF77 only delivers last two digets
      case 2u:
        value = date_segment_coding[0u];
        break;
      case 3u:
        value = date_segment_coding[2u];
        break;
      case 4u:
        value = date_segment_coding[p_time->month % 10u] + 128u; // +128 activates decimal point
        break;
      case 5u:
        value = date_segment_coding[p_time->month / 10u];
        break;
      case 6u:
        value = date_segment_coding[p_time->day % 10u] + 128u; // +128 activates decimal point
        break;
      case 7u:
        value = date_segment_coding[p_time->day / 10u];
        break;
      default:
        value = 0u;
        break;
    }
  }
  return value;
}

uint8_t get_day_data(time *p_time, uint8_t day_segment, uint8_t byte)
{
  uint8_t data = 0u;
  if(p_time != NULL)
  {
    if((p_time->day_of_week > 0u)  && (p_time->day_of_week < 8u))
    {
      if((day_segment < 3u) && (byte < 2u))
      {
        data = day_segment_coding[p_time->day_of_week - 1u][day_segment][byte];
      }
    }
  }
  return data;
}

uint8_t get_time_data(time *p_time, uint8_t time_segment)
{
  uint8_t data = 0;
  if(p_time != NULL)
  {
    switch (time_segment)
    {
      case 0:
        if((p_time->hours > 10u) && (p_time->hours < 24u))
        {
          data = time_segment_coding[p_time->hours / 10u];
        }
        break;
      case 1:
        if(p_time->hours < 24u)
        {
          data = time_segment_coding[p_time->hours % 10u] + 1u; // +1 add decimal point
        }
        break;
      case 2:
        if(p_time->minutes < 60u)
        {
          data = time_segment_coding[p_time->minutes / 10u];
        }
        break;
      case 3:
        if(p_time->minutes < 60u)
        {
          data = time_segment_coding[p_time->minutes % 10u] + 1u; // +1 add decimal point
        }
        break;
      default:
        break;
    }
  }
  return  data;
}

uint8_t get_time_data_seconds(uint8_t seconds, uint8_t time_segment)
{
  uint8_t data = 0u;
  if(seconds < 60u)
  {
    if(time_segment == 4u)
    {
      data = time_segment_coding[seconds / 10u];
    }
    else if(time_segment == 5u)
    {
      data = time_segment_coding[seconds % 10u];
    }
    else
    {
      // no valid segment
    }
  }
  return data;
}
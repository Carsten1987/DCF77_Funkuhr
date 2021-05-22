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

/*
Bit	Bedeutung
20	?1?: Beginn der Zeitinformation
21	Minute
(Einer)	Bit für 1
22	Bit für 2
23	Bit für 4
24	Bit für 8
25	Minute
(Zehner)	Bit für 10
26	Bit für 20
27	Bit für 40
28	Paritüt Minute
29	Stunde
(Einer)	Bit für 1
30	Bit für 2
31	Bit für 4
32	Bit für 8
33	Stunde
(Zehner)	Bit für 10
34	Bit für 20
35	Paritüt Stunde
36	Kalendertag
(Einer)	Bit für 1
37	Bit für 2
38	Bit für 4
39	Bit für 8
40	Kalendertag
(Zehner)	Bit für 10
41	Bit für 20
42	Wochentag	Bit für 1
43	Bit für 2
44	Bit für 4
45	Monatsnummer
(Einer)	Bit für 1
46	Bit für 2
47	Bit für 4
48	Bit für 8
49	Monatsnummer
(Zehner)	Bit für 10
50	Jahr
(Einer)	Bit für 1
51	Bit für 2
52	Bit für 4
53	Bit für 8
54	Jahr
(Zehner)	Bit für 10
55	Bit für 20
56	Bit für 40
57	Bit für 80
58	Paritüt Datum*/

#include <stdbool.h>
#include "dcf77_decoder.h"

#define DCF77_TIME_START_BIT 20u

static const uint8_t max_days[] = 
{
  31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
};

static time tmp_time;
static time last_one = { 
  .minutes = 0,
  .hours = 0,
  .day_of_week = 1,
  .day = 1,
  .month = 1,
  .year = 20,
};
static uint8_t parity_minutes;
static uint8_t parity_hours;
static uint8_t parity_date;

void new_bit(uint8_t bit_number, uint8_t value)
{
  switch(bit_number)
  {
    case 21:
      tmp_time.minutes = 1u * value;
      parity_minutes = value;
      break;
    case 22:
      tmp_time.minutes += 2u * value;
      parity_minutes += value;
      break;
    case 23: 
      tmp_time.minutes += 4u * value;
      parity_minutes += value;
      break;
    case 24:
      tmp_time.minutes += 8u * value;
      parity_minutes += value;
      break;
    case 25:
      tmp_time.minutes += 10u * value;
      parity_minutes += value;
      break;
    case 26:
      tmp_time.minutes += 20u * value;
      parity_minutes += value;
      break;
    case 27:
      tmp_time.minutes += 40u * value;
      parity_minutes += value;
      break;
    case 28: 
      parity_minutes += value;
      /* For an even parity, modulo 2, should be 0, so it is not true. */
      if (parity_minutes % 2u)
      { // parity not even. mark value as invalid
        tmp_time.minutes = UINT8_MAX;
      }
      break;
    case 29: 
      tmp_time.hours = 1u * value;
      parity_hours = value;
      break;
    case 30:
      tmp_time.hours += 2u * value;
      parity_hours += value;
      break;
    case 31:
      tmp_time.hours += 4u * value;
      parity_hours += value;
      break;
    case 32:
      tmp_time.hours += 8u * value;
      parity_hours += value;
      break;
    case 33:
      tmp_time.hours += 10u * value;
      parity_hours += value;
      break;
    case 34:
      tmp_time.hours += 20u * value;
      parity_hours += value;
      break;
    case 35: 
      parity_hours += value;
      if(parity_hours % 2u)
      {
        tmp_time.hours = UINT8_MAX;
      }
      break;
    case 36: 
      tmp_time.day = 1u * value;
      parity_date = value;
      break;
    case 37:
      tmp_time.day += 2u * value;
      parity_date += value;
      break;
    case 38:
      tmp_time.day += 4u * value;
      parity_date += value;
      break;
    case 39:
      tmp_time.day += 8u * value;
      parity_date += value;
      break;
    case 40:
      tmp_time.day += 10u * value;
      parity_date += value;
      break;
    case 41:
      tmp_time.day += 20u * value;
      parity_date += value;
      break;
    case 42:
      tmp_time.day_of_week = 1u * value;
      parity_date += value;
      break;
    case 43:
      tmp_time.day_of_week += 2u * value;
      parity_date += value;
      break;
    case 44:
      tmp_time.day_of_week += 4u * value;
      parity_date += value;
      break;
    case 45:
      tmp_time.month = 1u * value;
      parity_date += value;
      break;
    case 46: 
      tmp_time.month += 2u * value;
      parity_date += value;
      break;
    case 47: 
      tmp_time.month += 4u * value;
      parity_date += value;
      break;
    case 48:
      tmp_time.month += 8u * value;
      parity_date += value; 
      break;
    case 49:
      tmp_time.month += 10u * value;
      parity_date += value;
      break;
    case 50: 
      tmp_time.year = 1u * value;
      parity_date += value;
      break;
    case 51: 
      tmp_time.year += 2u * value;
      parity_date += value;
      break;
    case 52:
      tmp_time.year += 4u * value;
      parity_date += value;
      break;
    case 53:
      tmp_time.year += 8u * value;
      parity_date += value;
      break;
    case 54:
      tmp_time.year += 10u * value;
      parity_date += value;
      break;
    case 55:
      tmp_time.year += 20u * value;
      parity_date += value;
      break;
    case 56:
      tmp_time.year += 40u * value;
      parity_date += value;
      break;
    case 57:
      tmp_time.year += 80u * value; 
      parity_date += value;
      break;
    case 58:
      parity_date += value;
      if(parity_date % 2u)
      {
        tmp_time.day = UINT8_MAX;
        tmp_time.month = UINT8_MAX;
        tmp_time.year = UINT8_MAX;
        tmp_time.day_of_week = UINT8_MAX;
      }
      break;
    default:
      /* ignore bit*/
      break;
  }

}

void get_time(time *p_time)
{
  p_time->day         = last_one.day;
  p_time->day_of_week = last_one.day_of_week;
  p_time->hours       = last_one.hours;
  p_time->minutes     = last_one.minutes;
  p_time->month       = last_one.month;
  p_time->year        = last_one.year;
}

void minute_gone(uint8_t bit_counter)
{
  if((tmp_time.minutes != UINT8_MAX) && (bit_counter == 59u))
  {
    last_one.minutes = tmp_time.minutes;
  }
  else
  {
    last_one.minutes++;
    if(last_one.minutes == 60u)
    {
      last_one.minutes = 0u;
      last_one.hours++;
    }
  }
  
  if((tmp_time.hours != UINT8_MAX) && (bit_counter == 59u))
  {
    last_one.hours = tmp_time.hours;
  }
  else
  {
    if(last_one.hours == 24u)
    {
      last_one.hours = 0u;
      last_one.day++;
    }
  }

  if((tmp_time.day != UINT8_MAX) && (bit_counter == 59u))
  {
    last_one.day = tmp_time.day;
  }
  else
  {
    if(last_one.month > 0u)
    {
      uint8_t threshold = max_days[last_one.month - 1u];
      if((last_one.month == 2u) && ((last_one.year % 4u) == 0u))
      {
        threshold++;
      }
      if(last_one.day == threshold)
      {
        last_one.day = 1;
        last_one.month++;
      }
    }
  }
  
  if((tmp_time.month != UINT8_MAX) && (bit_counter == 59u))
  {
    last_one.month = tmp_time.month;
  }
  else
  {
    if(last_one.month == 13u)
    {
      last_one.month = 1u;
      last_one.year++;
    }
  }
  
  if((tmp_time.year != UINT8_MAX) && (bit_counter == 59u))
  {
    last_one.year = tmp_time.year;
  }

  if((tmp_time.day_of_week != UINT8_MAX) && (bit_counter == 59u))
  {
    last_one.day_of_week = tmp_time.day_of_week;
  }
}

/*
 * 1. Ein Jahr ist ein Schaltjahr, wenn es restlos durch 4 teilbar ist.
 * 2. Falls sich die Jahrzahl durch 100 restlos teilen lässt, ist es kein Schaltjahr.
 * 3. Falls auch eine Teilung durch 400 ganzzahlig möglich ist, dann ist es ein Schaltjahr.
*/
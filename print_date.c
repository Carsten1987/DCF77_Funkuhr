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

#include "print_date.h"
#include <string.h>

static const char week_day[7][3] = {
  {
    'M', 'O', 'N'
  },
  {
    'D', 'I', 'E'
  },
  {
    'M', 'I', 'T'
  },
  {
    'D', 'O', 'N'
  },
  {
    'F', 'R', 'R'
  },
  {
    'S', 'A', 'M'
  },
  {
    'S', 'O', 'N'
  }
};

uint8_t make_time(char buffer[], time *p_time)
{
  uint8_t written_bytes = 6;
  (void)strcpy(buffer, "Time: ");
  buffer[written_bytes++] = week_day[p_time->day_of_week - 1u][0];
  buffer[written_bytes++] = week_day[p_time->day_of_week - 1u][1];
  buffer[written_bytes++] = week_day[p_time->day_of_week - 1u][2];
  buffer[written_bytes++] = ' ';
  buffer[written_bytes++] = (p_time->day / 10u) + '0';
  buffer[written_bytes++] = (p_time->day % 10u) + '0';
  buffer[written_bytes++] = '.';
  buffer[written_bytes++] = (p_time->month / 10u) + '0';
  buffer[written_bytes++] = (p_time->month % 10u) + '0';
  buffer[written_bytes++] = '.';
  buffer[written_bytes++] = '2';
  buffer[written_bytes++] = '0';
  buffer[written_bytes++] = (p_time->year / 10u) + '0';
  buffer[written_bytes++] = (p_time->year % 10u) + '0';
  buffer[written_bytes++] = ' ';
  buffer[written_bytes++] = (p_time->hours/ 10u) + '0';
  buffer[written_bytes++] = (p_time->hours % 10u) + '0';
  buffer[written_bytes++] = ':';
  buffer[written_bytes++] = (p_time->minutes / 10u) + '0';
  buffer[written_bytes++] = (p_time->minutes % 10u) + '0';
  buffer[written_bytes++] = '\n';
  return written_bytes;
}

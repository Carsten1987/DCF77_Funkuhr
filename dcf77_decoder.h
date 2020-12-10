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

#ifndef DCF77_DECODER_H
#define	DCF77_DECODER_H

#include <stdint.h>
#include <stdbool.h>

typedef struct
{
  uint8_t minutes;
  uint8_t hours;
  uint8_t day_of_week;
  uint8_t day;
  uint8_t month;
  uint8_t year;
}time;

void new_bit(uint8_t bit_number, uint8_t value);
void get_time(time *p_time);
void minute_gone(uint8_t bit_counter);

#endif	/* DCF77_DECODER_H */


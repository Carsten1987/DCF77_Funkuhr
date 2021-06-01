# 1 "dcf77_decoder.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "dcf77_decoder.c" 2
# 77 "dcf77_decoder.c"
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdbool.h" 1 3
# 77 "dcf77_decoder.c" 2

# 1 "./dcf77_decoder.h" 1
# 28 "./dcf77_decoder.h"
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 1 3
# 13 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 28 "./dcf77_decoder.h" 2

# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdbool.h" 1 3
# 29 "./dcf77_decoder.h" 2


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
# 78 "dcf77_decoder.c" 2




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

      if (parity_minutes % 2u)
      {
        tmp_time.minutes = (255);
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
        tmp_time.hours = (255);
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
        tmp_time.day = (255);
        tmp_time.month = (255);
        tmp_time.year = (255);
        tmp_time.day_of_week = (255);
      }
      break;
    default:

      break;
  }

}

void get_time(time *p_time)
{
  p_time->day = last_one.day;
  p_time->day_of_week = last_one.day_of_week;
  p_time->hours = last_one.hours;
  p_time->minutes = last_one.minutes;
  p_time->month = last_one.month;
  p_time->year = last_one.year;
}

void minute_gone(uint8_t bit_counter)
{
  if((tmp_time.minutes != (255)) && (bit_counter == 59u))
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

  if((tmp_time.hours != (255)) && (bit_counter == 59u))
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

  if((tmp_time.day != (255)) && (bit_counter == 59u))
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

  if((tmp_time.month != (255)) && (bit_counter == 59u))
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

  if((tmp_time.year != (255)) && (bit_counter == 59u))
  {
    last_one.year = tmp_time.year;
  }

  if((tmp_time.day_of_week != (255)) && (bit_counter == 59u))
  {
    last_one.day_of_week = tmp_time.day_of_week;
  }
}

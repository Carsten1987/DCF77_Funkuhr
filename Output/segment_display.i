# 1 "segment_display.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "segment_display.c" 2
# 25 "segment_display.c"
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 1 3



# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\__size_t.h" 1 3



typedef unsigned size_t;
# 4 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 2 3

# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\__null.h" 1 3
# 5 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 2 3






# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdarg.h" 1 3






typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);
# 11 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 2 3
# 43 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 3
struct __prbuf
{
 char * ptr;
 void (* func)(char);
};
# 85 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 3
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\conio.h" 1 3







# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\errno.h" 1 3
# 29 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\errno.h" 3
extern int errno;
# 8 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\conio.h" 2 3




extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);



extern char * cgets(char *);
extern void cputs(const char *);
# 85 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 2 3



extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);
# 180 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdio.h" 3
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 25 "segment_display.c" 2

# 1 "./segment_display.h" 1
# 28 "./segment_display.h"
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
# 28 "./segment_display.h" 2

# 1 "./dcf77_decoder.h" 1
# 28 "./dcf77_decoder.h"
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\stdint.h" 1 3
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
# 29 "./segment_display.h" 2


uint8_t get_date_data(time *p_time, uint8_t date_segment);
uint8_t get_day_data(time *p_time, uint8_t day_segment, uint8_t byte);
uint8_t get_time_data(time *p_time, uint8_t time_segment);
uint8_t get_time_data_seconds(uint8_t seconds, uint8_t time_segment);
# 26 "segment_display.c" 2
# 46 "segment_display.c"
static const uint8_t date_segment_coding[] =
{
       63, 6, 91, 79, 102,
       109, 125, 7, 127, 111
};

static const uint8_t day_segment_coding[7][3][2] =
{
  {
    { 0x8c, 0x4c },
    { 0x89, 0xcb },
    { 0x8c, 0x68 }
  },
  {
    { 0x90, 0xd9 },
    { 0x22, 0x00 },
    { 0x8c, 0x68 }
  },
  {
    { 0x8c, 0x4c },
    { 0x22, 0x00 },
    { 0x23, 0x02 },
  },
  {
    { 0x90, 0xd9 },
    { 0x89, 0xcb },
    { 0x8c, 0x68 }
  },
  {
    { 0x99, 0x02 },
    { 0x99, 0x3a },
    { 0x99, 0x83 },
  },
  {
    { 0x19, 0xd3 },
    { 0x99, 0x5a },
    { 0x8c, 0x4c }
  },
  {
    { 0x19, 0xd3 },
    { 0x89, 0xcb },
    { 0x8c, 0x68 }
  }
};
# 109 "segment_display.c"
static const uint8_t time_segment_coding[] =
{
       190, 18, 124, 118, 210,
       230, 238, 50, 254, 246
};

uint8_t get_date_data(time *p_time, uint8_t date_segment)
{
  uint8_t value = 0u;
  if(p_time != (0))
  {
    switch (date_segment)
    {
      case 0u:
        value = date_segment_coding[p_time->year % 10u];
        break;
      case 1u:
        value = date_segment_coding[p_time->year / 10u];
        break;

      case 2u:
        value = date_segment_coding[0u];
        break;
      case 3u:
        value = date_segment_coding[2u];
        break;
      case 4u:
        value = date_segment_coding[p_time->month % 10u] + 128u;
        break;
      case 5u:
        value = date_segment_coding[p_time->month / 10u];
        break;
      case 6u:
        value = date_segment_coding[p_time->day % 10u] + 128u;
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
  if(p_time != (0))
  {
    if((p_time->day_of_week > 0u) && (p_time->day_of_week < 8u))
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
  if(p_time != (0))
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
          data = time_segment_coding[p_time->hours % 10u] + 1u;
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
          data = time_segment_coding[p_time->minutes % 10u] + 1u;
        }
        break;
      default:
        break;
    }
  }
  return data;
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

    }
  }
  return data;
}

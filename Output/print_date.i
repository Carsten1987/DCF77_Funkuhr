# 1 "print_date.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "print_date.c" 2
# 25 "print_date.c"
# 1 "./print_date.h" 1
# 28 "./print_date.h"
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
# 28 "./print_date.h" 2


uint8_t make_time(char buffer[], time *p_time);
# 25 "print_date.c" 2

# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\string.h" 1 3





# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\__size_t.h" 1 3



typedef unsigned size_t;
# 6 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\string.h" 2 3

# 1 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\__null.h" 1 3
# 7 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\string.h" 2 3







extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);
# 36 "D:\\Program Files\\Microchip\\xc8\\v2.32\\pic\\include\\c90\\string.h" 3
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);
# 26 "print_date.c" 2


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

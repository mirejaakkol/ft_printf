#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>

int	ft_printf(const char *str, ...);
int	print_char(char c, char *error_flag);
int	print_str(char *s, char *error_flag);
int	print_ptr(unsigned long n, char *error_flag);
int	print_int(int n, char *error_flag);
int	print_uint(unsigned int n, char *error_flag);
int	print_hex(unsigned int n, const char *format, char *error_flag);

#endif
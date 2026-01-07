# ft_printf

A custom implementation of `printf` in C.

## Files

- `ft_printf.c` - format parsing and dispatch
- `print_*.c` - handlers for each conversion (`c`, `s`, `p`, `d/i`, `u`, `x/X`)
- `ft_printf.h`


## Build

This repository does not include a `main.c` file (it was not part of the original project submission).

```bash
make
make run
```

## Usage example

Example `main.c` for local testing:

```c
#include <stdio.h>
#include "ft_printf.h"

int main(void)
{
    char *s = "Hello";
    void *p = s;

    a = ft_printf("ft: [%c] [%s] [%p] [%d] [%i] [%u] [%x] [%X] [%%]\n", 'A', s, p, -42, 42, 42u, 48879u, 48879u);
    b = printf("sys: [%c] [%s] [%p] [%d] [%i] [%u] [%x] [%X] [%%]\n", 'A', s, p, -42, 42, 42u, 48879u, 48879u);

    ft_printf("Edge cases:\n");
    ft_printf("null str: %s\n", (char *)0);
    ft_printf("zero: %d %u %x\n", 0, 0u, 0u);

    return 0;
}
```

## Notes

- Supported conversions: c, s, p, d, i, u, x, X, %:
    `%c` Prints a single character.
    `%s` Prints a string (as defined by the common C convention).
    `%p` The void * pointer argument has to be printed in hexadecimal format.
    `%d` Prints a decimal (base 10) number.
    `%i` Prints an integer in base 10.
    `%u` Prints an unsigned decimal (base 10) number.
    `%x` Prints a number in hexadecimal (base 16) lowercase format.
    `%X` Prints a number in hexadecimal (base 16) uppercase format.
    `%%` Prints a percent sign

## Context

This project was implemented as part of the 42 Network curriculum.
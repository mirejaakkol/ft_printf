NAME = libftprintf.a

SRCDIR = src
INCDIR = include
HEADER = $(INCDIR)/ft_printf.h

SOURCES = ft_printf.c \
		  print_char.c \
		  print_str.c \
		  print_ptr.c \
		  print_int.c \
		  print_uint.c \
		  print_hex.c


SRCS = $(addprefix $(SRCDIR)/,$(SOURCES))
OBJECTS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror 
CPPFLAGS = -I$(INCDIR)

AR = ar -rcs

RM = rm -f

all: $(NAME)

$(NAME) : $(OBJECTS)
	$(AR) $(NAME) $(OBJECTS)

$(SRCDIR)/%.o : $(SRCDIR)/%.c $(HEADER)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJECTS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

run: $(NAME) main.c
	$(CC) $(CFLAGS) $(CPPFLAGS) main.c $(NAME) -o ft_printf
	@./ft_printf
	@$(RM) ft_printf

.PHONY: all clean fclean re run
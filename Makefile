# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gmersch <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/20 02:01:45 by gmersch           #+#    #+#              #
#    Updated: 2023/11/20 02:01:48 by gmersch          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COMP		= gcc
CFLAGS		= -Wall -Werror -Wextra
NAME		= libft.a
INCLUDES	= libft.h

SRC		= ft_atoi.c\
		ft_isdigit.c\
		ft_memmove.c\
		ft_strlen.c\
		ft_toupper.c\
		ft_bzero.c\
		ft_isprint.c\
		ft_memset.c\
		ft_strncmp.c\
		ft_isalnum.c\
		ft_memchr.c\
		ft_strchr.c\
		ft_strnstr.c\
		ft_isalpha.c\
		ft_memcmp.c\
		ft_strlcat.c\
		ft_strrchr.c\
		ft_isascii.c\
		ft_memcpy.c\
		ft_strlcpy.c\
		ft_tolower.c\
		ft_calloc.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strtrim.c\
		ft_itoa.c\
		ft_strjoin.c\
		ft_strmapi.c\
		ft_split.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_striteri.c

BONUS		= ft_lstnew.c\
		ft_lstadd_front.c\
		ft_lstsize.c\
		ft_lstlast.c\
		ft_lstadd_back.c\
		ft_lstdelone.c\
		ft_lstclear.c\
		ft_lstiter.c\
		ft_lstmap.c


OBJS = $(SRC:.c=.o)
OBJS_BONUS = $(BONUS:.c=.o)

ifdef value
	SRC+=$(BONUS)
endif

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	
bonus: 
	@make value=1;

%.o : %.c
	$(COMP) $(CFLAGS) -c $< -o $@


clean:
	rm -f $(OBJS) $(OBJS_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)

.PHONY: clean fclean re all bonus

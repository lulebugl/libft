# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llebugle <lucas.lebugle@student.s19.be>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/22 16:13:09 by llebugle          #+#    #+#              #
#    Updated: 2024/11/12 16:55:28 by llebugle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	:= libft.a

SRCS	= 	ft_isalpha.c		\
			ft_isascii.c		\
			ft_isdigit.c 		\
			ft_isprint.c		\
			ft_strlen.c 		\
			ft_bzero.c  		\
			ft_atoi.c  			\
			ft_isalnum.c		\
			ft_memcmp.c 		\
			ft_memmove.c 		\
			ft_strchr.c 		\
			ft_strlcpy.c		\
			ft_strrchr.c		\
			ft_toupper.c		\
			ft_memchr.c  		\
			ft_memcpy.c  		\
			ft_memset.c  		\
			ft_strlcat.c 		\
			ft_tolower.c 		\
			ft_strncmp.c		\
			ft_strnstr.c 		\
			ft_calloc.c 		\
			ft_strdup.c 		\
			ft_substr.c			\
			ft_strjoin.c 		\
			ft_strtrim.c 		\
			ft_split.c	 		\
			ft_itoa.c	 		\
			ft_strmapi.c 		\
			ft_striteri.c 		\
			ft_putchar_fd.c		\
			ft_putstr_fd.c		\
			ft_putendl_fd.c		\
			ft_putnbr_fd.c		\
			ft_lstnew.c			\
			ft_lstadd_back.c	\
			ft_lstdelone.c		\
			ft_lstclear.c		\
			ft_lstiter.c		\
			ft_lstmap.c			\
			ft_lstadd_front.c	\
			ft_lstsize.c		\
			ft_lstlast.c		\
			get_next_line.c		\
			ft_printf.c			\
			ft_printf_fd.c		\
			ft_is_charset.c		\
			ft_free_tab.c		\

OBJS	= $(SRCS:.c=.o)

CC		= cc

CFLAGS	= -Wall -Wextra -Werror

$(NAME) :	$(OBJS)
	@$(CC) $(CFLAGS) -c $(SRCS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)

all : $(NAME)

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY: all clean fclean re

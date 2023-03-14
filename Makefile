# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jboucher <jboucher@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/17 19:06:10 by jboucher          #+#    #+#              #
#    Updated: 2023/01/17 19:13:41 by jboucher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	get_next_line.c get_next_line_utils.c

				
OBJ = $(SRCS:%c=%o)

OBJ_BONUS = $(SRCS_BONUS:%c=%o)

CC = gcc

CFLAGS = -Wall -Werror -Wextra

NAME = get_next_line.a

all: $(NAME)



$(NAME): $(OBJ)
		ar -rcs $(NAME) $(OBJ)

clean:
		rm -f $(OBJ) $(OBJ_BONUS)

fclean: clean
		rm -f $(NAME)
		
re: 	fclean all
NAME=serverclient.a
NAME_BONUS=serverclient_bonus.a

CC=gcc
CFLAGS=-Wall -Wextra -Werror
printf= ft_printf/libftprintf.a

CLIENT = client
CLIENT_BONUS = client_bonus
SERVER = server
SERVER_BONUS = server_bonus

all: $(SERVER) $(CLIENT)

bonus: $(SERVER_BONUS) $(CLIENT_BONUS)
$(NAME): $(SERVER) $(CLIENT)

$(SERVER):
	make -C ./ft_printf
	$(CC) $(CFLAGS) server.c $(printf) -o $@

$(CLIENT):
	make -C ./ft_printf
	$(CC) $(CFLAGS) client.c $(printf) -o $@

$(NAME_BONUS): $(SERVER_BONUS) $(CLIENT_BONUS)

$(SERVER_BONUS):
	make -C ./ft_printf
	$(CC) $(CFLAGS) server_bonus.c $(printf) -o $@

$(CLIENT_BONUS):
	make -C ./ft_printf
	$(CC) $(CFLAGS) client_bonus.c $(printf) -o $@

clean:
	make fclean -C ./ft_printf
	rm server client server_bonus client_bonus

fclean: clean

re: fclean all

.PHONY: all clean fclean re

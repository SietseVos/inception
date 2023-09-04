all:
	docker compose -f srcs/docker-compose.yml up -d --build

clean:
	docker compose -f srcs/docker-compose.yml down

fclean: clean
	docker volume rm wp_vol db_vol

re: clean all

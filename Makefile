all:
	sudo chmod 777 /var/run/docker.sock
	docker-compose -f srcs/docker-compose.yml up -d --build

clean:
	docker-compose -f srcs/docker-compose.yml down

fclean: clean
	docker volume rm wp_vol db_vol
	sudo rm -rf ~/data/db/*
	sudo rm -rf ~/data/wp/*

re: fclean all

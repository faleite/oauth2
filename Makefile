all:
	docker compose -f docker-compose.yml up --build
	@echo "Django server is running at http://localhost:8000"

start:
	docker compose run web django-admin startproject oauth2 .

migrate:
	docker compose exec web python3 manage.py migrate

s-user:
	docker compose exec web python3 manage.py createsuperuser
mng:
	python3 manage.py startapp ftlogin

### Docker compose commands
up:
	docker compose -f docker-compose.yml up
	# docker compose -f srcs/docker-compose.yml up --detach

stop:
	docker compose -f docker-compose.yml stop

down:
	docker compose -f docker-compose.yml down

restart: stop up

clean:
	docker compose -f srcs/docker-compose.yml down -v 

re: fclean

clean-docker:
	docker system prune -af --volumes

sh-app:
	docker exec -it django_app /bin/bash

sh-db:
	docker exec -it django_db /bin/bash

.PHONY: all start stop down restart clean fclean re clean-docker reset dev sh-backend sh-postgres 
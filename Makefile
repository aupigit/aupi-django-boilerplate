deps:
	poetry install

test: deps
	poetry run pytest -vvv

lint:
	poetry run pre-commit install && poetry run pre-commit run -a -v

rundb:
	if [hash docker-compose >/dev/null]; \
	then \
		sudo docker-compose -f docker-compose-dev.yml up -d --build; \
	else \
		sudo docker compose -f docker-compose-dev.yml up -d --build; \
	fi \

stopdb:
	if [hash docker-compose >/dev/null]; \
	then \
		sudo docker-compose -f  docker-compose-dev.yml down \
	else \
		sudo docker compose -f  docker-compose-dev.yml down \
	fi \

runserver:
	python ./app/manage.py runserver 0.0.0.0:8000

createsuperuser:
	python ./app/manage.py createsuperuser

migrate:
	python ./app/manage.py migrate

makemigrations:
	python ./app/manage.py makemigrations

makemigrations-merge:
	python ./app/manage.py makemigrations --merge


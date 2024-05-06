PORT ?= 8000
dev:
	poetry run flask --app page_analyzer:app run --debug

start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app

lint:
	poetry run flake8 page_analyzer

build:
	./build.sh
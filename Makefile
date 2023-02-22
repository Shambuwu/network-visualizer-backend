build:
	docker-compose pull
	docker-compose build

run:
	docker-compose up -d

#push:
#TODO: Add Github registry support for custom images
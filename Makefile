include .env

cleanup:
	docker-compose down -v

full-cleanup: cleanup
	docker network rm default_network || true

database-cleanup:
	docker-compose exec mongo bash -c "mongo --host localhost --username $(MONGO_INITDB_ROOT_USERNAME) --password $(MONGO_INITDB_ROOT_PASSWORD) --authenticationDatabase $(MONGO_INITDB_DATABASE) promotions --eval 'db.dropDatabase()'"

database-setup:
	docker-compose exec mongo bash -c '/usr/src/db/database/import.sh localhost /usr/src/db'

build:
	docker-compose build

up:
	docker-compose up

migrate-up:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose up
migrate-down:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose down

.PHONY: migrate-up migrate-down
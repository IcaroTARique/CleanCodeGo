#CleanCodeGo

## Rodando gRPC
A partir da raiz do projeto, execute o comando abaixo para rodar o servidor gRPC:
```bash
protoc --go_out=. --go-grpc_out=. internal/infra/grpc/protofiles/order.proto
```

## Rodando GraphQL
Certifique-se de que os paths de geração estão corretos no arquivo `gqlgen.yml` e
a partir da raiz do projeto, execute o comando abaixo para rodar o servidor GraphQL:
```bash
go run github.com/99designs/gqlgen generate
```

# Aplicação

## Rodando a aplicação
Para rodar a aplicação, basta rodar o seguinte comando na raiz do projeto:
```bash
$ go run main.go wire_gen.go
```
Caso esqueça de incluir o ```wire_gen.go``` no comando, o wire não irá injetar as dependências e
a aplicação não irá funcionar dando erro NullPointerException.

## Migrations
Para rodar para subir as migrations, execute:
```bash
migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose up
```
ou rode o comando:
```bash
make migrate-up
```
Para desfazer a migration, execute:
```bash
migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose down
```
ou rode o comando:
```bash
make migrate-down
```
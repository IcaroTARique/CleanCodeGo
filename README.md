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
go run github.com/99desings/gqlgen generate
```


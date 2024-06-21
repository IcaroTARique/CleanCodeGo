-- Criação da Tabela
CREATE TABLE orders (
                        id VARCHAR(50) PRIMARY KEY,
                        price NUMERIC(10, 2),
                        tax NUMERIC(10, 2),
                        final_price NUMERIC(10, 2)
);

-- Inserção de Dados
INSERT INTO orders (id, price, tax, final_price) VALUES
                                                     ('order1', 100.00, 10.00, 110.00),
                                                     ('order2', 200.00, 20.00, 220.00),
                                                     ('order3', 300.00, 30.00, 330.00);

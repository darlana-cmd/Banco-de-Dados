CREATE TABLE clientes (
    codigo SERIAL PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE,
    nome VARCHAR(50)
);

CREATE TABLE pedidos (
    numero SERIAL PRIMARY KEY,
    valor INT,
    data DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(codigo)
);

CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    preco INT,
    descricao VARCHAR(100)
);

CREATE TABLE pedidos_produtos (
    id_pedido INT,
    id_produto INT,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(numero),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO clientes (cpf, nome)
VALUES ('123.456.789-00', 'Maria Oliveira');

INSERT INTO pedidos (valor, data, id_cliente)
VALUES (250, '2025-01-15', 1);

INSERT INTO produtos (preco, descricao)
VALUES (50, 'Caderno'),
       (200, 'Mochila');

INSERT INTO pedidos_produtos (id_pedido, id_produto)
VALUES (1, 1),
       (1, 2);

SELECT * FROM clientes;
SELECT * FROM pedidos;
SELECT * FROM produtos;
SELECT * FROM pedidos_produtos;

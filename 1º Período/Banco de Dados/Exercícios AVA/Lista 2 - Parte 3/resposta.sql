-- Produto
CREATE TABLE produto (
	nome VARCHAR(50),
	numero_produto INTEGER,
	preco NUMERIC(6,2),
	quantidade INTEGER,
	CONSTRAINT pk_numero_produto PRIMARY KEY(numero_produto)
);

-- Funcionario
CREATE TABLE funcionario(
	nome VARCHAR(50),
	id_funcionario INTEGER,
	cep VARCHAR(8),
	sobrenome VARCHAR(100),
	CONSTRAINT pk_id_funcionario PRIMARY KEY(id_funcionario)
);

-- Cliente
CREATE TABLE cliente(
	nome VARCHAR(50),
	numero_cliente INTEGER,
	cep VARCHAR(8),
	sobrenome VARCHAR(100),
	CONSTRAINT pk_numero_cliente PRIMARY KEY(numero_cliente)
);

-- Pedido
CREATE TABLE pedido (
	numero_pedido INTEGER,
	numero_cliente INTEGER,
	id_funcionario INTEGER,
	data_recebimento DATE,
	data_entrega_esperada DATE,
	data_entrega_real DATE,
	CONSTRAINT pk_numero_pedido PRIMARY KEY(numero_pedido),
	CONSTRAINT fk_numero_cliente FOREIGN KEY (numero_cliente) REFERENCES cliente (numero_cliente),
	CONSTRAINT fk_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario)
);

-- Quantidade Pedido
CREATE TABLE quantidade_pedido(
	id_quantidade SERIAL,
	numero_produto INTEGER,
	numero_pedido INTEGER,
	quantidade INTEGER,
	CONSTRAINT pk_quantidade_pedido PRIMARY KEY (id_quantidade),
	CONSTRAINT fk_numero_peca FOREIGN KEY (numero_produto) REFERENCES produto (numero_produto),
	CONSTRAINT fk_numero_pedido FOREIGN KEY (numero_pedido) REFERENCES pedido (numero_pedido)
);

-- Produto
INSERT INTO produto VALUES
	('Mouse', 1, 90.50, 30),
	('Processador', 2, 350.50, 50),
	('Teclado', 3, 123.50, 25),
	('Monitor', 4, 157.50, 70),
	('Gabinete', 5, 210.50, 33);

--######################################################################################

-- Atv 1
SELECT numero_pedido, nome AS nome_cliente
FROM pedido INNER JOIN cliente
ON pedido.numero_cliente = cliente.numero_cliente;

-- Atv 2
SELECT numero_pedido, nome AS nome_funcionario
FROM pedido INNER JOIN funcionario
ON pedido.id_funcionario = funcionario.id_funcionario;

-- Atv 3
SELECT numero_pedido, nome AS nome_cliente
FROM pedido INNER JOIN cliente
ON pedido.numero_cliente = cliente.numero_cliente
ORDER BY numero_pedido;

-- Atv 4
SELECT numero_pedido, nome AS nome_cliente
FROM pedido INNER JOIN cliente
ON pedido.numero_cliente = cliente.numero_cliente
ORDER BY nome_cliente;

-- Atv 5
SELECT numero_pedido, nome AS nome_funcionario
FROM pedido INNER JOIN funcionario
ON pedido.id_funcionario = funcionario.id_funcionario
ORDER BY numero_pedido;

-- Atv 6
SELECT numero_pedido, nome AS nome_funcionario
FROM pedido INNER JOIN funcionario
ON pedido.id_funcionario = funcionario.id_funcionario
ORDER BY nome_funcionario;

-- Atv 7
SELECT nome AS nome_produto, SUM(quantidade_pedido.quantidade) AS quantidade_vendida
FROM produto INNER JOIN quantidade_pedido
ON produto.numero_produto = quantidade_pedido.numero_produto
GROUP BY produto.nome;

-- Atv 8
SELECT numero_pedido, nome AS nome_funcionario
FROM pedido INNER JOIN funcionario
ON pedido.id_funcionario = funcionario.id_funcionario
WHERE pedido.data_recebimento BETWEEN '2023/05/01' AND '2023/05/31'
ORDER BY numero_pedido;

-- Atv 9
SELECT
	cliente.nome as nome_cliente,
	funcionario.nome as nome_funcionario
FROM
	cliente
INNER JOIN
	pedido ON cliente.numero_cliente = pedido.numero_cliente
INNER JOIN
	funcionario ON pedido.id_funcionario = funcionario.id_funcionario;

-- Atv 10
SELECT
	cliente.nome AS nome_cliente,
	produto.nome AS nome_produto
FROM
	cliente
INNER JOIN
	pedido ON pedido.numero_cliente = cliente.numero_cliente
INNER JOIN
	quantidade_pedido ON quantidade_pedido.numero_pedido = pedido.numero_pedido
INNER JOIN
	produto ON quantidade_pedido.numero_produto = produto.numero_produto

-- Atv 11
SELECT
	funcionario.nome AS nome_funcionario,
	produto.nome AS nome_produto
FROM
	funcionario
INNER JOIN
	pedido ON pedido.id_funcionario = funcionario.id_funcionario
INNER JOIN
	quantidade_pedido ON quantidade_pedido.numero_pedido = pedido.numero_pedido
INNER JOIN
	produto ON quantidade_pedido.numero_produto = produto.numero_produto

-- Atv 12
SELECT
	funcionario.nome AS nome_funcionario,
	produto.nome AS nome_produto
FROM
	funcionario
INNER JOIN
	pedido ON pedido.id_funcionario = funcionario.id_funcionario
INNER JOIN
	quantidade_pedido ON quantidade_pedido.numero_pedido = pedido.numero_pedido
INNER JOIN
	produto ON quantidade_pedido.numero_produto = produto.numero_produto
WHERE
	quantidade_pedido.quantidade > 3;

-- Atv 13
SELECT
	funcionario.nome AS nome_funcionario,
	produto.nome AS nome_produto
FROM
	funcionario
INNER JOIN
	pedido ON pedido.id_funcionario = funcionario.id_funcionario
INNER JOIN
	quantidade_pedido ON quantidade_pedido.numero_pedido = pedido.numero_pedido
INNER JOIN
	produto ON quantidade_pedido.numero_produto = produto.numero_produto
WHERE
	quantidade_pedido.quantidade > 3
ORDER BY nome_produto;

-- Atv 14
SELECT
	cliente.nome as nome_cliente,
	funcionario.nome AS nome_funcionario,
	produto.nome AS nome_produto
FROM
	cliente
INNER JOIN
	pedido ON pedido.numero_cliente = cliente.numero_cliente
INNER JOIN
	funcionario ON pedido.id_funcionario = funcionario.id_funcionario
INNER JOIN
	quantidade_pedido ON quantidade_pedido.numero_pedido = pedido.numero_pedido
INNER JOIN
	produto ON quantidade_pedido.numero_produto = produto.numero_produto;

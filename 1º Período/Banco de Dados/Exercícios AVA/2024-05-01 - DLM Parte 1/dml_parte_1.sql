CREATE TABLE
  cliente (
    cli_cod SERIAL PRIMARY KEY,
    nome_cli VARCHAR(30) NOT NULL,
    cpf_cliente CHAR(11) NOT NULL,
    cel_cli CHAR(11)
  );

CREATE TABLE
  produto (
    cod_prod SERIAL PRIMARY KEY,
    desc_prod VARCHAR(30) NOT NULL,
    preco_prod NUMERIC(8, 2),
    estoq_prod INTEGER DEFAULT (0),
    tipo_prod VARCHAR(20)
  );

CREATE TABLE
  venda (
    cod_venda SERIAL PRIMARY KEY,
    data_venda CHAR(10),
    hora_venda CHAR(5),
    cli_cod SERIAL,
    FOREIGN KEY (cli_cod) REFERENCES cliente (cli_cod)
  );

CREATE TABLE
  produtos (
    cod_prodvenda SERIAL PRIMARY KEY,
    cod_venda SERIAL,
    cod_prod SERIAL,
    quant_vend INTEGER,
    valor_total NUMERIC(8, 2),
    FOREIGN KEY (cod_venda) REFERENCES venda (cod_venda),
    FOREIGN KEY (cod_prod) REFERENCES produto (cod_prod)
  );

------------------------------------------------------------
INSERT INTO
  cliente (nome_cli, cpf_cliente, cel_cli)
VALUES
  (
    'Mateus Felipe Gonçalves',
    '11122233344',
    '37999999999'
  );

------------------------------------------------------------
INSERT INTO
  cliente (nome_cli, cpf_cliente, cel_cli)
VALUES
  (
    'Capitão Jack Sparrow',
    '11965245600',
    '37999125589'
  ),
  ('Zorro', '15663256980', '37985426985'),
  ('Tony Stark', '24536158945', '37948512365'),
  ('Aragorn', '15362478912', '37955896648'),
  ('Legolas', '12456984310', '37958462154');

------------------------------------------------------------
UPDATE cliente
SET
  cel_cli = '37999998888'
WHERE
  cli_cod = 1;

------------------------------------------------------------
SELECT
  nome_cli
FROM
  cliente
ORDER BY
  nome_cli ASC;

------------------------------------------------------------
INSERT INTO
  produto (desc_prod, preco_prod, estoq_prod, tipo_prod)
VALUES
  ('Iphone 11', 1500.00, 10, 'eletrônico'),
  ('Case', 29.00, 35, 'acessórios'),
  ('Boombox 3', 2399.00, 3, 'som'),
  ('Redmi 13c', 949.00, 5, 'eletrônico'),
  ('Película 3D', 20.00, 50, 'acessórios'),
  ('Ipad 9', 1999.00, 6, 'eletrônico');

------------------------------------------------------------
UPDATE produto
SET
  preco_prod = preco_prod + preco_prod * 10 / 100
WHERE
  cod_prod = 2;

UPDATE produto
SET
  preco_prod = preco_prod + preco_prod * 10 / 100
WHERE
  cod_prod = 4;

UPDATE produto
SET
  preco_prod = preco_prod + preco_prod * 10 / 100
WHERE
  cod_prod = 6;

------------------------------------------------------------
UPDATE produto
SET
  preco_prod = preco_prod - preco_prod * 10 / 100
WHERE
  cod_prod = 1;

UPDATE produto
SET
  preco_prod = preco_prod - preco_prod * 10 / 100
WHERE
  cod_prod = 3;

UPDATE produto
SET
  preco_prod = preco_prod - preco_prod * 10 / 100
WHERE
  cod_prod = 5;

------------------------------------------------------------
SELECT
  desc_prod
FROM
  produto
WHERE
  estoq_prod > 50
  or preco_prod < 100.00;

------------------------------------------------------------
INSERT INTO
  venda (data_venda, hora_venda, cli_cod)
VALUES
  ('24/04/2024', '10:35', 2);

INSERT INTO
  produtosvenda (cod_venda, cod_prod, quant_vend, valor_total)
VALUES
  (1, 5, 2, 36.00);

------------------------------------------------------------
UPDATE produto
SET
  estoq_prod = 48
WHERE
  cod_prod = 5;

------------------------------------------------------------
INSERT INTO
  produto (desc_prod, estoq_prod, tipo_prod)
VALUES
  ('Pulseira', 65, 'acessório');
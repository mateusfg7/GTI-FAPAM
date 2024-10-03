-- # Atv 1

INSERT INTO animal (codigo, nome, altura_centimetros, peso, data_cadastro, hora_cadastro)
VALUES (1, 'Águia', 30, NULL, CURRENT_DATE, CURRENT_TIMESTAMP);

INSERT INTO animal (codigo, nome, altura_centimetros, peso, data_cadastro, hora_cadastro)
VALUES (2, 'Leão', 100, NULL, CURRENT_DATE, CURRENT_TIMESTAMP);

INSERT INTO animal (codigo, nome, altura_centimetros, peso, data_cadastro, hora_cadastro)
VALUES (3, 'Cobra', 5, NULL, CURRENT_DATE, CURRENT_TIMESTAMP);

INSERT INTO animal (codigo, nome, altura_centimetros, peso, data_cadastro, hora_cadastro)
VALUES (4, 'Macaco', 110, NULL, CURRENT_DATE, CURRENT_TIMESTAMP);

INSERT INTO animal (codigo, nome, altura_centimetros, peso, data_cadastro, hora_cadastro)
VALUES (5, 'Tubarão', 300, NULL, CURRENT_DATE, CURRENT_TIMESTAMP);

-- # Atv 2

INSERT INTO animal (codigo, nome, altura_centimetros, idade, peso, data_cadastro, hora_cadastro)
VALUES (4, 'Gato', 40, 2, 1, CURRENT_DATE, CURRENT_TIMESTAMP);

-- # Atv 3

INSERT INTO animal (codigo, nome, altura_centimetros, idade, peso, data_cadastro, hora_cadastro)
VALUES (4, 'Passarinho canarinho das penas amarelas', 110, 4, 0.5, CURRENT_DATE, CURRENT_TIMESTAMP);

-- O ERRO SE DÁ PELO FATO DE `nome` SÓ ACEITAR 30 CARACTERES

-- # Atv 4

INSERT INTO animal (codigo, nome, altura_centimetros, idade, peso, data_cadastro, hora_cadastro)
VALUES (4, NULL, 40, 2, 1, CURRENT_DATE, CURRENT_TIMESTAMP);

-- O ERRO SE DÁ PELO FATO DE `nome` NÃO ACEITAR NULL

-- # Atv 5

INSERT INTO cliente VALUES
	(1, 'Mateus', 12345678995, 37999999999),
	(2, 'Felipe', 98765432115, 37888888888);


-- # Atv 6

INSERT INTO cliente VALUES
	(3, 'Jack', 75395165457, 37444444444),
	(4, 'Sparrow', 98645712685, 37665411148),
	(5, 'Davi Jones', 36745899647, 37887556642);

SELECT * FROM cliente;

-- # Atv 7
-- *comentarios feitos

-- # Atv 8

INSERT INTO dono (codigo_animal, codigo_cliente) VALUES
	(1, 1),	(2, 2),	(3, 3),
	(4, 4),	(5, 5),	(5, 1);

-- # Atv 9

INSERT INTO consulta VALUES
	(1, '2024-10-02', '14:00', 120.00, 3),
	(2, '2024-10-03', '14:30', 200.00, 5);

-- # Atv 10

UPDATE consulta
SET valorconsulta = 250
WHERE codigo_consulta = 1; 

-- # Atv 11

UPDATE consulta SET valor_consulta = 10.900
WHERE codigo = (SELECT MAX(codigo) FROM consulta);

-- # Atv 12

UPDATE consulta SET valor_consulta = 10.900
WHERE codigo = (SELECT MIN(codigo) FROM consulta);

-- # Atv 13

UPDATE consulta SET valor_consulta = valor_consulta*1.15;

-- # Atv 14

UPDATE animal SET altura_centimetros = altura_centimetros + 0.2;

-- # Atv 15

SELECT * FROM animal;

-- # Atv 16

SELECT nome FROM animal;

-- # Atv 17

SELECT AVG(altura_centimetros), MAX(peso), MIN(altura_centimetros) FROM animal;

-- # Atv 18

SELECT SUM(valor_consulta) FROM consulta;

-- # Atv 19

SELECT * FROM cliente ORDER BY nome DESC;

-- # Atv 20

-- PARA CADA ANIMAL CRIADO, ATTRIBUA UM TIPO, SENDO OS TIPOS POSSÍVEIS PEQUENO OU GRANDE



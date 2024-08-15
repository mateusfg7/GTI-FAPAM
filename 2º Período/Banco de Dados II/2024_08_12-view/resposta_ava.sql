-- atv 1 A

CREATE VIEW filmes_locadora AS
SELECT titulo, nomeCategoria AS categoria
FROM Filme INNER JOIN FilmeCategoria
ON Filme.codCategoria = FilmeCategoria.codCategoria;

-- atv 1 B

SELECT categoria, COUNT(categoria)  
FROM filmes_locadora
GROUP BY categoria HAVING categoria = 'Comedia';

-- atv 2 A

CREATE VIEW cliente_filme AS
SELECT titulo, nome 
FROM Filme 
	INNER JOIN Copia ON Filme.codFilme = Copia.codFilme
	INNER JOIN Aluguel ON Aluguel.codCopia = Copia.codCopia
	INNER JOIN Cliente ON Cliente.codCliente = Aluguel.codCliente;

-- atv 2 B 

SELECT titulo
FROM cliente_filme
WHERE nome = 'Fernando';


-- atv 2 C

SELECT nome
FROM cliente_filme
WHERE titulo = 'Matrix';

-- atv 3 A

CREATE VIEW areas_view AS
SELECT area_municipio, area_estado 
FROM tamanho_area_cidades_uf_view;

-- atv 3 B

SELECT * FROM tamanho_area_cidades_uf_view;

SELECT * FROM areas_view;

-- atv 3 C

DROP VIEW areas_view;

-- atv 4

-- FALSO. Os nomes Pen e Eye estão trocados. Correção: 

CREATE VIEW Eye AS SELECT A1, A2 FROM Pen 

-- atv 5

CREATE VIEW maior_renda AS 
SELECT nome, SUM(valorPago) AS valor_gasto
FROM Cliente INNER JOIN Aluguel 
ON Cliente.codCliente = Aluguel.codCliente
GROUP BY nome
ORDER BY valor_gasto DESC; 


CREATE VIEW maior_categoria AS
SELECT nomeCategoria AS categoria, COUNT(titulo) AS qtd_filmes
FROM Filme INNER JOIN FilmeCategoria
ON Filme.codCategoria = FilmeCategoria.codCategoria
GROUP BY categoria
ORDER BY qtd_filmes DESC;

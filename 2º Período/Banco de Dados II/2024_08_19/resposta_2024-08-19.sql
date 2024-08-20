--- ATVD 01

CREATE PROCEDURE add_product(
	codigo_produto INTEGER,
	descricao_produto VARCHAR(30), 
	preco_produto NUMERIC(6,2),
	estoque_produto INTEGER,
	tipo_produto VARCHAR(8)
)
LANGUAGE SQL
AS $$
	INSERT INTO Produto VALUES
		(codigo_produto, descricao_produto, preco_produto, estoque_produto, tipo_produto);
$$

CALL add_product(7, 'Banana', 3.00, 8, 'ALIMENTO');

--- ATVD 02

CREATE PROCEDURE update_price(amount NUMERIC(3, 2), product_type VARCHAR(8))
LANGUAGE SQL
AS $$
	UPDATE Produto SET preco_produto = (preco_produto + (preco_produto * amount))
	WHERE tipo_produto = product_type;
$$

CALL update_price(1.0, 'BEBIDA');

--- ATVD 03

CREATE PROCEDURE remove_product(code INTEGER)
LANGUAGE SQL
AS $$
	DELETE FROM Produto WHERE codigo_produto = code;
$$

CALL remove_product(7);
SELECT * FROM Produto;

--- ATVD 04

CREATE PROCEDURE update_total_sale(code INTEGER)
LANGUAGE SQL
AS $$
	UPDATE Venda SET valor_total = (
		SELECT SUM(valor_total) FROM Produtovenda WHERE codigo_venda = code
	) WHERE cod_venda = code;
$$

CALL update_total_sale(1);

--- ATVD 05

CREATE PROCEDURE update_all_total_sale()
LANGUAGE SQL
AS $$
	UPDATE Venda SET valor_total = (
		SELECT SUM(valor_total) FROM Produtovenda WHERE Produtovenda.codigo_venda = Venda.cod_venda
	);
$$

CALL update_all_total_sale();

--- ATVD 06

CREATE PROCEDURE insert_sale_product(
	codigo_venda INTEGER,
	codigo_produto INTEGER,
	quantidade_vendida INTEGER,
	valor_total NUMERIC(5,2)
)
LANGUAGE SQL
AS $$
	INSERT INTO ProdutoVenda (codigo_venda,	codigo_produto,	quantidade_vendida,	valor_total)
	VALUES (codigo_venda, codigo_produto, quantidade_vendida, valor_total);
	
	CALL update_all_total_sale();
$$

CALL insert_sale_product(1, 2, 4, 42.00);

--- ATVD 07

CREATE PROCEDURE delete_product_sale(produc_sale_id INTEGER)
LANGUAGE SQL
AS $$
	DELETE FROM ProdutoVenda WHERE ID_ProdutoVenda = produc_sale_id;
	CALL update_all_total_sale();
$$

CALL delete_product_sale(1);
SELECT * FROM ProdutoVenda;

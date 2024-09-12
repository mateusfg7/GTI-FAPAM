-- RENDA MENSAL ENTRE 1500 E 3000

CREATE VIEW clientes_renda_especifica AS
SELECT * FROM Cliente WHERE
  renda > 1500
  AND
  renda < 3000;

----------------------------------------------------

-- RENDAS ANUAIS ENTRE 18000 E 36000

CREATE OR REPLACE VIEW clientes_renda_especifica AS
SELECT * FROM Cliente WHERE renda*12 BETWEEN 18000 AND 36000;

----------------------------------------------------

-- CRIE UMA PROCEDURE QUE AUMENTA EM 100 REAIS O SALÁRIO DE UM DETERMINADO FUNCIONÁRIO

CREATE OR REPLACE PROCEDURE aumenta_salario(
  id_funcionario_P INTEGER
) LANGUAGE SQL AS
$$
  UPDATE Funcionario SET salario = salario+100
  WHERE id_funcionario = id_funcionario_P;
$$;

----------------------------------------------------

CREATE OR REPLACE PROCEDURE atualiza_salario ( percent NUMBER(4,2), cod_loja INTEGER )
LANGUAGE SQL
$$
  UPDATE Funcionario SET salario = salario*(1+percent)
  WHERE id_loja = cod_loja;
$$;

----------------------------------------------------

CREATE PROCEDURE cria_venda ( cod_venda_P INTEGER,  cod_produto_P INTEGER, quantidade_vendida INTEGER )
LANGUAGE SQL
$$
  INSERT INTO VENDA (id_venda, id_produto, quantidade)
$$;

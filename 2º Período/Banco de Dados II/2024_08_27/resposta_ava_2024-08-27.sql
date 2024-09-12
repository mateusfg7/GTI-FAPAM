-- <## ATVD 001 ##>

CREATE FUNCTION account_count (client_code CHAR(4))
RETURNS INTEGER
LANGUAGE plpgsql AS $$
	DECLARE
		accountCount INTEGER;
	BEGIN
		SELECT count(*) INTO accountCount FROM Conta WHERE codCliente = client_code;
		RETURN accountCount;
	END
$$;

-- Letter (A)

SELECT nomeCliente, cidadeCliente, estadoCliente, contagem_conta(Cliente.codCliente)
FROM Cliente WHERE codCliente = '0112';

-- <## ATVD 002 ##>

CREATE FUNCTION total_contas(cod_agencia_f CHAR(5))
RETURNS INTEGER
LANGUAGE plpgsql AS $$
	DECLARE
		totalContasAgencia INTEGER;
	BEGIN
		SELECT count(*) INTO totalContasAgencia FROM Conta
		WHERE codAgencia = cod_agencia_f;
		RETURN totalContasAgencia;
	END
$$;

-- Letter (A)

SELECT nomeAgencia, cidadeAgencia FROM Agencia
WHERE total_contas(Agencia.codAgencia) >= 2;

-- <## ATVD 003 ##>

CREATE FUNCTION saldo_total_cliente(cod_cliente_f CHAR(4))
RETURNS NUMERIC(10,2)
LANGUAGE plpgsql AS $$
	DECLARE
		somatorio NUMERIC(10,2);
	BEGIN
		SELECT SUM(saldo) INTO somatorio FROM Conta WHERE codCliente = cod_cliente_f;
		RETURN somatorio;
	END
$$;

-- Letter (A)

SELECT nomeCliente, cidadeCliente, estadoCliente, saldo_total_cliente(codCliente) AS saldo_total
FROM Cliente;

-- Letter (B)

SELECT nomeCliente, cidadeCliente, estadoCliente, saldo_total_cliente(codCliente) AS saldo_total
FROM Cliente WHERE codCliente = '0111';

-- Letter (C)

SELECT nomeCliente, cidadeCliente, estadoCliente, saldo_total_cliente(codCliente) AS saldo_total
FROM Cliente WHERE saldo_total_cliente(codCliente) > 100000;

-- <## ATVD 004 ##>

CREATE FUNCTION maximo_saldo(cod_agencia_f CHAR(5))
RETURNS INTEGER
LANGUAGE plpgsql AS
$$
	DECLARE
		maiorValor INTEGER;
	BEGIN
		SELECT MAX(saldo) INTO maiorValor FROM Conta WHERE codAgencia = '03043';
		RETURN maiorValor;
	END
$$;

-- Letter (A)

SELECT A.nomeAgencia, SUM(maximo_saldo(A.codAgencia))
FROM Agencia A NATURAL JOIN Conta Con NATURAL JOIN Cliente Cli
GROUP BY A.nomeAgencia;

SELECT nomeAgencia, maximo_saldo(A.codAgencia) FROM Agencia A;





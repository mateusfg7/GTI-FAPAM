CREATE TABLE cliente (
	cpf CHAR(11) PRIMARY KEY,
	cli_nome VARCHAR(50) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	numero INTEGER NOT NULL
);
CREATE TABLE telefone (
  cpf_cliente CHAR(11) NOT NULL,
  telefone VARCHAR(14) NOT NULL,

	PRIMARY KEY (cpf_cliente, telefone),
  FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf)
);

CREATE TABLE animal (
	ani_id INTEGER PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	especie VARCHAR(20) NOT NULL,
	cpf_cliente CHAR(11) NOT NULL,

	FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf)
);

CREATE TABLE veterinario (
	crv INTEGER PRIMARY KEY,
	vet_nome VARCHAR(50) NOT NULL,
	salario NUMERIC(6, 2) NOT NULL,
	experiencia VARCHAR(300) NOT NULL
);

CREATE TABLE enfermidade (
	enf_id INTEGER PRIMARY KEY,
	gravidade INTEGER NOT NULL,
	enfi_descricao VARCHAR(150) NOT NULL
);

CREATE TABLE consulta (
	cod INTEGER PRIMARY KEY,
	data_consulta DATE NOT NULL,
	valor NUMERIC(6, 1) NOT NULL,
    
	id_ani INTEGER NOT NULL,
	id_enf INTEGER NOT NULL,
	crv_vet INTEGER NOT NULL,

	FOREIGN KEY (id_ani) REFERENCES animal (ani_id),
	FOREIGN KEY (id_enf) REFERENCES enfermidade (enf_id),
	FOREIGN KEY (crv_vet) REFERENCES veterinario (crv)
);


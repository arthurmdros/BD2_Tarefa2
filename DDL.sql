create table cliente (
	codigo INT,
	nome VARCHAR(140),
	endereco VARCHAR(140),
	PRIMARY KEY(codigo)
) ENGINE=INNODB;

create table piloto (
	codigo INT,
	nome VARCHAR(140),
	num_voos INT default (next value for n_voo),
	PRIMARY KEY(codigo)
) ENGINE=INNODB;

create table voo (
	codigo INT,
	tipo VARCHAR(140),
	num_passageiros INT,
	distancia DOUBLE,
	piloto_cod INT,
  	FOREIGN KEY (piloto_cod)
   REFERENCES piloto(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   PRIMARY KEY(codigo)
) ENGINE=INNODB;

create table milhas (
	cliente_cod INT,
	quantidade INT,
	FOREIGN KEY (cliente_cod) 
	REFERENCES cliente (codigo)
	ON UPDATE CASCADE ON DELETE RESTRICT,
	PRIMARY KEY(cliente_cod)
) ENGINE=INNODB;

CREATE TABLE cliente_voo (
	cliente_cod INT NOT NULL, 
	voo_cod INT NOT NULL,
   classe VARCHAR(140),
  	FOREIGN KEY (cliente_cod)
   REFERENCES cliente(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   FOREIGN KEY (voo_cod)
   REFERENCES voo(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   PRIMARY KEY(cliente_cod, voo_cod)
) ENGINE=INNODB;
                      

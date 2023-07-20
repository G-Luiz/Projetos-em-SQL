USE carros;

CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR (255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO clientes (nome, sobrenome, endereco)
VALUES
	('Andre','Iacono','Rua 1'),
    ('Marcos','Souza','Rua 2'),
    ('Ana', 'Silva', 'Rua 3'),
    ('Daniela','Pires','Rua 4'),
    ('Eduardo','Carvalho','Rua 5');

INSERT INTO marcas (nome_marca, origem)
VALUES
	('BMW','Alemanha'),
    ('Fiat','Italia'),
    ('Mercedes-Benz', 'Alemanha'),
    ('Renault','Franca'),
    ('Jaguar','Inglaterra');
    
INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES
	('BMW 218','Automatica','2.0','Gasolina',1),
    ('XE 2.0D','Manual','2.0','Diesel',5),
    ('EQC 400', 'Automatica','2.0','Eletrico',3),
    ('Duster', 'Manual', '1.3','Gasolina',4),
    ('Mobi','Manual','1.0','Gasolina',2);

 
    
create database auto_rental; -- Cria uma nova DB

use auto_rental; -- Usa uma DB para as Querys a baixo

-- Cria Tabelas na DB em uso
create table marcas (
	marcas_id int not null auto_increment,
    nome_marca varchar(100) not null,
    PRIMARY KEY (marcas_id) -- DEFINE A PRIMARY KEY
);

-- Altera a Tabela criada sem perder as informações ja criadas anteriomente e adiciona uma coluna
alter table marcas add origem varchar(100); -- VARCHAR é o DATATYPE da coluna

create table inventario (
	inventario_id int not null auto_increment, -- Coluna com datatype INT, valores NOT NULL e auto incrementavel
    marcas_id int not null,
    modelo varchar(255) not null,
    transmissao varchar(255) not null,
    motor varchar(255) not null,
    combustivel varchar(255) not null,
    primary key (inventario_id), -- Define a PRIMARY KEY
    foreign key (marcas_id) references marcas(marcas_id) -- DEFINE a FOREING KEY 
);

create table clientes (
	cliente_id int not null auto_increment,
    nome varchar(255) not null,
    sobre_nome varchar(255) not null,
    endereço varchar(250) not null,
    primary key (cliente_id)
);

-- Incluindo DADOS nas tabelas criadas usar INSERT INTO <tabela>() valules()
-- Ao inserir os valores nas tabelas obedecer a ordem das colunas e ter atençao com as FOREING KEYS.
insert into clientes (
	nome,
    sobre_nome,
    endereço
	)
values
	('Flavio', 'Álves', 'RUA 1'),
	('Katiane', 'Alves', 'Rua 1'),
	('Fabricio', 'Alves', 'Rua 2'),
    ('Francisco', 'Valentim', 'Rua 3'),
    ('Sonia', 'Maria', 'Rua 3');

insert into marcas (
	nome_marca,
    origem
	)
values
	("CHEVROLET", "EUA"),
    ("VOLKSWAGEN", "ALEMANHA"),
    ("RENAULT", "FRANÇA"),
    ("FIAT", "ITÁLIA"),
    ("SUBARU", "JAPÃO");
    
insert into inventario (
	marcas_id,
    modelo,
    transmissao,
    motor,
    combustivel
	)
values
	(1, 'Corsa', 'Manual', '1.0', 'Gasolina'),
	(2, 'gol', 'Manual', '1.6', 'Flex'),
    (3,  'Sandero', 'Automatico', '1.6', 'Etanol'),
    (4, 'Uno', 'Manual', '1.4', 'Flex'),
    (5, 'Forester','Automático', '4.0', 'Elétrico');
    
use db_bancoDeDadosRelacional;

create table tb_funcionarios(
    id bigint(5) auto_increment,
    nome varchar(50) not null,
    cpf varchar(11)not null,
    ideda int not null,
    cargo varchar (50)not null,
    salario decimal(60)not null,
    primary key (id)
);

SELECT * fROM  db_bancodedadosrelacional.tb_funcionarios;

SELECT * FROM db_bancodedadosrelacional.tb_funcionarios where salario < 2.000;

SELECT * FROM db_bancodedadosrelacional.tb_funcionarios where salario > 2.000;

UPDATE `db_bancodedadosrelacional`.`tb_funcionarios` SET `salario` = '10.00' WHERE (`id` = '1');
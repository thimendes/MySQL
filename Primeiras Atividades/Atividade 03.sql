/*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_rgEscola;

use db_rgEscola;

create table tb_estudantes(
id bigint(5) auto_increment,
Nome varchar(60) not null,
Sobrenome varchar(60) not null,
Idade int not null,
CPF varchar(11) not null,
Nota float not null,
primary key (id)
);

/*INSERT INTO `db_rgescola`.`tb_estudantes` (`Nome`, `Sobrenome`, `Idade`, `CPF`, `Nota`) VALUES ('Thiago', 'Mendes', '23', '12345678901', '10');
INSERT INTO `db_rgescola`.`tb_estudantes` (`Nome`, `Sobrenome`, `Idade`, `CPF`, `Nota`) VALUES ('Gabriel', 'Conceição', '20', '09876543210', '8');
INSERT INTO `db_rgescola`.`tb_estudantes` (`Nome`, `Sobrenome`, `Idade`, `CPF`, `Nota`) VALUES ('Leticia', 'Silvia', '26', '12345678999', '8');
INSERT INTO `db_rgescola`.`tb_estudantes` (`Nome`, `Sobrenome`, `Idade`, `CPF`, `Nota`) VALUES ('Regina', 'Pereira', '20', '1234467890', '6');
INSERT INTO `db_rgescola`.`tb_estudantes` (`Nome`, `Sobrenome`, `Idade`, `CPF`, `Nota`) VALUES ('Yoha', 'Boaz', '19', '09876543210', '5');*/

select * from tb_estudantes;

SELECT * FROM tb_estudantes where Nota < 7;

SELECT * FROM tb_estudantes where Nota > 7;

UPDATE `db_rgescola`.`tb_estudantes` SET `Nota` = '9' WHERE (`id` = '2');

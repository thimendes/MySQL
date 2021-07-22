/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
idRoupas bigint(8) not null auto_increment,
Tipo varchar(80) not null,
Tamanho int not null,
Cor varchar(80) not null,
Marca varchar(80) not null,
Preço float not null,
primary key (idRoupas)
);

INSERT INTO `db_ecommerce`.`tb_produtos` (`Tipo`, `Tamanho`, `Cor`, `Marca`, `Preço`) VALUES ('Camisa', '7', 'Asul', 'Nike', '100');
INSERT INTO `db_ecommerce`.`tb_produtos` (`Tipo`, `Tamanho`, `Cor`, `Marca`, `Preço`) VALUES ('Clças', '38', 'Jeans', 'Cl', '600');

select * from tb_produtos;

SELECT * FROM tb_produtos where Preço < 500;

SELECT * FROM tb_produtos where Preço > 500;

UPDATE `db_ecommerce`.`tb_produtos` SET `Preço` = '150' WHERE (`idRoupas` = '1');






/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/

create table tb_categoria(
id_categoria bigint(5) auto_increment,
Antibióticos varchar(100)not null,
Antialégicos varchar(100)not null,
Genéricos varchar(100)not null,
primary key(id_categoria)
);

#Popule esta tabela Categoria com até 5 dados.

INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`Antibióticos`, `Antialégicos`, `Genéricos`) VALUES ('Ciprofloxacino', 'Loratamed', 'Aclidínio');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`Antibióticos`, `Antialégicos`, `Genéricos`) VALUES ('Amoxicilina', 'Celestone', 'Aciclovir');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`Antibióticos`, `Antialégicos`, `Genéricos`) VALUES ('Ampicilina', 'Histamin', 'Acarbose');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`Antibióticos`, `Antialégicos`, `Genéricos`) VALUES ('Cefalexina', 'Prednisona', 'Betaxolol');
INSERT INTO `db_farmacia_do_bem`.`tb_categoria` (`Antibióticos`, `Antialégicos`, `Genéricos`) VALUES ('Tetraciclina', 'Alektos', 'Cefaclor');

select * from tb_categoria;

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/

create table tb_produto(
id_produto int auto_increment,
Tipo varchar(100)not null,
Nome varchar(100)not null,
Quantidade int not null,
Atestado enum('sim', 'nao'),
Valor float,
fk_categoria bigint,
primary key (id_produto),
foreign key(fk_categoria) references tb_categoria (id_categoria)
);

#Popule esta tabela Produto com até 8 dados.

INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Antibióticos', 'Ciprofloxacino', '2', 'sim', '30', '1');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Genéricos', 'Betaxolol', '1', 'nao', '2', '2');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Antibióticos', 'Amoxicilina', '1', 'nao', '39', '1');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Antibióticos', 'Tetraciclina', '3', 'sim', '89', '1');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Genéricos', 'Cefaclor', '5', 'nao', '20', '2');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Genéricos', 'Aclidínio', '2', 'sim', '3', '2');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Antialégicos', 'Histamin', '1', 'sim', '65', '3');
INSERT INTO `db_farmacia_do_bem`.`tb_produto` (`Tipo`, `Nome`, `Quantidade`, `Atestado`, `Valor`, `fk_categoria`) VALUES ('Antialégicos', 'Prednisona', '1', 'nao', '50', '3');

select * from tb_produto;

#Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from db_farmacia_do_bem.tb_produto where Valor > 50;

#Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

select * from db_farmacia_do_bem.tb_produto where Valor >= 3 and Valor <= 60;

#Faça um select utilizando LIKE buscando os Produtos com a letra B.

select * from db_farmacia_do_bem.tb_produto where Nome like "%B%";

#Faça um um select com Inner join entre tabela categoria e produto.

select * from db_farmacia_do_bem.tb_produto
inner join db_farmacia_do_bem.tb_categoria 
on tb_categoria.id_categoria = tb_produto.id_produto;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

select Genéricos from tb_categoria;

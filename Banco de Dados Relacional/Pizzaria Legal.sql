/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/

create table tb_categoria(
id_categoria bigint(5) auto_increment,
Categoria varchar(100) not null,
Bebidas varchar(100) not null,
Sobremesa varchar(100) not null,
primary key(id_categoria)
);

#Popule esta tabela Categoria com até 5 dados.

INSERT INTO `db_pizzaria_legal`.`tb_categoria` (`Categoria`, `Bebidas`, `Sobremesa`) VALUES ('Salgada', 'Refrigerante', 'Bolo');
INSERT INTO `db_pizzaria_legal`.`tb_categoria` (`Categoria`, `Bebidas`, `Sobremesa`) VALUES ('Doce', 'Suco ', 'Torta');
INSERT INTO `db_pizzaria_legal`.`tb_categoria` (`Categoria`, `Bebidas`, `Sobremesa`) VALUES ('Vegana', 'Vinho', 'Pudim');
INSERT INTO `db_pizzaria_legal`.`tb_categoria` (`Categoria`, `Bebidas`, `Sobremesa`) VALUES ('Frutos do mar', 'Cerveja', 'Mousse');
INSERT INTO `db_pizzaria_legal`.`tb_categoria` (`Categoria`, `Bebidas`, `Sobremesa`) VALUES ('Exotica', 'Agua', 'Sorvete');

select * from tb_categoria;

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).*/

create table tb_pizza (
    id_pizza int  auto_increment,
    Sabor varchar(100) not null,
    Tamanho varchar(100) not null,
    Borda enum('sim', 'nao'),
    Sabor_Borda varchar(100) not null,
    Valor float,
    fk_categoria bigint,
    primary key (id_pizza),
    foreign key (fk_categoria) references tb_categoria (id_categoria)
);

#Popule esta tabela pizza com até 8 dados.

INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Queijo', 'Pequeno', 'nao', 'sem borda', '20', '1');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Calabresa', 'Grande', 'sim', 'Catupiry', '40', '3');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Frango com catupiry', 'Grande', 'sim', 'Catupiry', '40', '3');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Chocolate', 'Medio', 'nao', 'sem borda', '30', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Camarão', 'Grande', 'Sim', 'Catupiry', '69', '5');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Camarão', 'Pequeno', 'nao', 'sem borda', '39', '1');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Vegana', 'Medio', 'nao', 'sem borda', '30', '2');
INSERT INTO `db_pizzaria_legal`.`tb_pizza` (`Sabor`, `Tamanho`, `Borda`, `Sabor_Borda`, `Valor`, `fk_categoria`) VALUES ('Morango com chocolate', 'Grande', 'nao', 'sem borda', '35', '3');

select * from tb_pizza;

#Faça um select que retorne os Produtos com o valor maior do que 45 reais.

select * from db_pizzaria_legal.tb_pizza where Valor > 45;

#Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

select * from db_pizzaria_legal.tb_pizza where Valor >= 29 and Valor <= 60;

#Faça um select utilizando LIKE buscando os Produtos com a letra C.

select * from db_pizzaria_legal.tb_pizza where Sabor like "%C%";

#Faça um um select com Inner join entre tabela categoria e pizza.

select * from db_pizzaria_legal.tb_pizza
inner join db_pizzaria_legal.tb_categoria 
on tb_categoria.id_categoria = tb_pizza.id_pizza;

#Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce)

select Sabor from tb_pizza;






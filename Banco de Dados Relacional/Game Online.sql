/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_generation_game_online;

use db_generation_game_online;

/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.*/

create table tb_classe(
id_classe int auto_increment,
Nome varchar(60) not null,
Nivel varchar(60) not null,
Servidor varchar(60) not null,
primary key(id_classe)
);

/*Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).*/

create table tb_personagem(
id_personagem int auto_increment,
Personagem varchar(60) not null,
Cor_Cabelo varchar(60) not null,
Arma varchar(60) not null,
Poder_Ataque float,
Poder_Defesa float,
id_classe int,
primary key(id_personagem),
FOREIGN KEY (id_classe) REFERENCES  tb_classe(id_classe)
);

#Popule esta tabela classe com até 5 dados.(No cmeu caso foi apenas três)

INSERT INTO `db_generation_game_online`.`tb_classe` (`Nome`, `Nivel`, `Servidor`) VALUES ('Ana', 'Hard', 'Publico');
INSERT INTO `db_generation_game_online`.`tb_classe` (`Nome`, `Nivel`, `Servidor`) VALUES ('Maria', 'Medio', 'Publico');
INSERT INTO `db_generation_game_online`.`tb_classe` (`Nome`, `Nivel`, `Servidor`) VALUES ('João', 'Hard', 'Publico');

select * from tb_classe;

#Popule esta tabela personagem com até 8 dados.

INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Bruxo', 'Preto', 'Varinha', '5000', '6000', '3');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Mago', 'Branco', 'Livro', '3000', '2000', '2');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Elfo ', 'Verde', 'Fertilidade', '1000', '2000', '1');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Fada', 'Rosa', 'Fertilidade', '1500', '900', '1');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Troll', 'Verde', 'Força', '4300', '3000', '3');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Fenix', 'Vermelho', 'Fogo', '8000', '6000', '3');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Cavaleiro', 'Preto', 'Espada', '1000', '1000', '1');
INSERT INTO `db_generation_game_online`.`tb_personagem` (`Personagem`, `Cor_Cabelo`, `Arma`, `Poder_Ataque`, `Poder_Defesa`, `id_classe`) VALUES ('Rainha', 'Vermelho', 'Telepatia', '6000', '6500', '3');

select * from tb_personagem;

#Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

select * from db_generation_game_online.tb_personagem WHERE Poder_Ataque > 2000;

#Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

select * from db_generation_game_online.tb_personagem WHERE Poder_Defesa <= 2000 AND Poder_Defesa >= 1000;

#Faça um select utilizando LIKE buscando os personagens com a letra C.(Não tem personagem com a letra"C", então troquei pela letra "B".)

select * from db_generation_game_online.tb_personagem WHERE Personagem LIKE "%B%"; 

#Faça um um select com Inner join entre tabela classe e personagem.

select * from db_generation_game_online.tb_personagem
inner join db_generation_game_online.tb_classe ON tb_classe.id_classe = tb_personagem.id_classe;

/*Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).*/

select tb_personagem.id_personagem, tb_personagem.Personagem, tb_classe.Nome
from tb_personagem
inner join tb_classe on tb_classe.id_classe = tb_personagem.id_classe
where tb_classe.Nome like "%João%";

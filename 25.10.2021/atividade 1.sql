/*
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
*/
CREATE DATABASE db_generation_game_online;
use db_generation_game_online;
-- TABELA CLASSE
create table tb_classe(
id bigint auto_increment,
class varchar(255) not null,
equip varchar(255) not null,
arma varchar(255) null,
primary key(id)
);
insert into tb_classe (class, equip, arma) values ("Guerreiro","Armadura leve","Espada longa");
insert into tb_classe (class, equip, arma) values ("Mago","Sobretudo leve","Livro encantado");
insert into tb_classe (class, equip, arma) values ("Ladinho","Armadura pesada","Espada de duas mãos");
insert into tb_classe (class, equip, arma) values ("Arqueiro","Armadura leve","Arco e flecha");
insert into tb_classe (class, equip, arma) values ("Ladrão","Armadura leve","Adaga");
select * from tb_classe;

-- TABELA PERSONAGEM
create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
genero varchar(255) not null,
raca varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Sauron","Masculino","Maiar",5000, 4500,1);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Bilbo","Masculino","Hobbit",1000, 3000,5);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Thorin - Escudo de carvalho","Masculino","Anão",4100, 4000,3);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Legolas","Masculino","Elfo",4000, 2500,4);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Aragorn","Masculino","Humano",5000, 3500,1);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Gandalf - O branco","Masculino","Maiar",5000, 5000,2);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Saruman - Traidor","Masculino","Maiar",4000, 2000,2);
insert into tb_personagem (nome, genero, raca, ataque, defesa, classe_id) values ("Arwen","Feminina","Maiar",3500, 3500,2);
select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque>=2000 order by nome;
-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa>=1000 and defesa<=2000 order by nome;
-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%c%" order by nome;
-- Faça um um select com Inner join entre tabela classe e personagem.
select tb_personagem.nome, tb_personagem.genero, tb_personagem.raca,tb_classe.class, tb_classe.equip,tb_classe.arma, tb_personagem.ataque, tb_personagem.defesa 
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;
-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select tb_personagem.nome, tb_personagem.genero, tb_personagem.raca,tb_classe.class, tb_classe.equip,tb_classe.arma, tb_personagem.ataque, tb_personagem.defesa 
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id where class='Mago';

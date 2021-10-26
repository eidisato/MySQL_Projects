/*
Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
*/
create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
recheio varchar(255) not null,
borda_recheada boolean not null,
primary key(id)
);
insert into tb_categoria( tipo, recheio, borda_recheada) values ("Tradicional","Vegetais", false);
insert into tb_categoria( tipo, recheio, borda_recheada) values ("Tradicional","Quejo", true);
insert into tb_categoria( tipo, recheio, borda_recheada) values ("Tradicional","Frango/Bovina&Suina", true);
insert into tb_categoria( tipo, recheio, borda_recheada) values ("Light","Integral", false);
insert into tb_categoria( tipo, recheio, borda_recheada) values ("Doce","Chocolate", false);
select*from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco_grande decimal(6,2) not null,
preco_medio decimal(6,2) not null,
preco_broto decimal (6,2)not null,
pizza_id bigint,
primary key (id),
foreign key(pizza_id) references tb_categoria(id)
);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("4 queijos", "muçarela, catupiry, provolone e parmesão", 60.00,46.90,39.90,2);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Marguerita", "muçarela, parmesão, manjericão e tomate", 55.00,42.90,35.90,2);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Frango com Catupiry", "peito de frango desfiado e catupiry", 55.99,46.90,39.90,3);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Qualidade de Vida", "massa integral, espinafre refogado, ricota especialmente temperada com azeitona preta, tomate e azeite, peito de peru picado e parmesão", 55.99,46.90,39.90,4);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Calabresa", "Calabresa e cebola", 43.90,35.90,20.90,3);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Pepperoni", "muçarela de búfala e pepperoni", 60.00,50.90,39.90,3);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Vegetariana", "brócolis, palmito, milho, cebola e muçarela", 48.90,32.90,28.90,1);
insert into tb_pizza(nome,descricao,preco_grande,preco_medio,preco_broto, pizza_id) values ("Banana com chocolate","banana, chocolate, leitecondensado, açúcar e canela", 40.90,36.90,26.00,5);
select*from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where preco_grande>45.00 or preco_medio>45.00 or preco_broto>45.00 order by tb_pizza.pizza_id;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
select*from tb_pizza where preco_medio between 29.00 and 60.00 order by preco_medio;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select*from tb_pizza where nome like "%c%" order by nome;

-- Faça um um select com Inner join entre tabela categoria e pizza.
select*
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.pizza_id order by tb_categoria.tipo;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select*
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.pizza_id where tb_categoria.tipo="Tradicional" order by nome;
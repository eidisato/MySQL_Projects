/*
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

CREATE DATABASE db_ecommerce;
use db_ecommerce;
CREATE TABLE produtos (
id bigint auto_increment,
product varchar(255) not null,
departamento varchar(255) not null,
descricao varchar(255) not null,
caracteristica varchar(255) not null,
valor decimal(10,2) not null,

CONSTRAINT id_produto_primarykey primary key (id)
);
-- Insere os dados na tabela
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Hardware", "Placa-Mãe B-450M Stell Legend", "Placa-mãe ASRock B450M Steel Legend AMD DDR4 Resistente como aço", "Marca: ASRock - Modelo: 90-MXB9Y0-A0UAYZ", 749.00);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Hardware", "Placa-Mãe Gigabyte H410M H", "Placa-mãe Gigabyte H410M H Intel DDR4 CONECTIVIDADE LAN exclusiva para jogos ", "Marca: Gigabyte - Modelo: H410M H", 599.99);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Hardware", "Memória RAM Crucial Ballistix 8GB", "Memória para Desktop Crucial Ballistix ideal para jogos com 8GB, DDR4 e 2666MHz ", " Marca: Crucial - Modelo: BL8G26C16U4B", 259.99);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Periféricos", "Mouse Gamer Redragon Cobra", "Chroma RGB, 10000DPI, 7 Botões, Preto ", "Marca: Redragon - Modelo: M711", 109.90);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Periféricos", "Headset Gamer HyperX Cloud Alpha S Blackout", "Som Surround 7.1, Drivers 50mm, Múltiplas Plataformas, USB e P3 ", "Marca: HyperX - Modelo: HX-HSCAS-BK/WW", 599.90);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("GiftCard", "Gift Card Xbox Live Gold - 12 meses", "Código Digital", "Marca: Microsoft- Xbox", 199.90);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Cadeira", "Cadeira Gamer", "Cadeira Gamer Sharkoon Elbrus 3", "Marca: Sharkoon - Modelo: Sharkoon Elbrus 3", 2049.95);
INSERT INTO produtos (departamento,product,descricao,caracteristica,valor) values ("Cadeira", "Cadeira Office", "Cadeira De Escritório Multilaser Executive Cromada", "Marca: Multilaser - Modelo: GA197", 389.95);

-- Preço menor que 500 reais
select * from produtos where valor<500;

-- Preço maior que 500 reais
select * from produtos where valor>500;

-- Atualização da tabela
UPDATE produtos SET valor = 849.99 WHERE product LIKE 'Placa-Mãe B-450M Stell Legend';

SELECT id, departamento, product, descricao, caracteristica, valor FROM produtos;

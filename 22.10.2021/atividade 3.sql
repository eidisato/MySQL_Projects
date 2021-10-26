/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
CREATE DATABASE db_escola;

use db_escola;
create table infoEstudante(
id bigint auto_increment,
nome varchar(255) not null,
email varchar(255) not null,
nasc date not null,
turma varchar(255),
nota decimal(3,1),
constraint id_infoEstudante_primarykey primary key(id)
);

insert into infoEstudante (nome, email, nasc, turma, nota) values ("Vinicius Eidi Sato", "viniciuseidi@outlook.com", "19991007", "3A", 9.9);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Leonardo Kenji Sato", "tikataka@outlook.com", "20020111", "1A", 8.8);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Clebinho Avemaria", "clebinhu@outlook.com", "19990615", "3A", 5.5);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Maria Mariana", "marimariana@outlook.com", "20001120", "3B", 10.0);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Igor Nascimento", "igao@outlook.com", "19990519", "3B", 4.5);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Mirian Cruz", "micruz@gmail.com", "20011231", "2C", 7.5);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Denilson Silva", "denilsonshow@gmail.com", "19980228", "3A", 5.0);
insert into infoEstudante (nome, email, nasc, turma, nota) values ("Léo Pelé", "naoorei@outlook.com", "19991101", "3A", 9.9);
select * from infoEstudante;
-- Nota maior que 7.0
select * from infoEstudante where nota>7.0;
-- Nota menor que 7.0
select * from infoEstudante where nota<7.0;
-- Atualizar tabela
UPDATE infoEstudante SET email = "dedeshow@gmail.com" WHERE nome LIKE 'Denilson Silva';

select * from infoEstudante;
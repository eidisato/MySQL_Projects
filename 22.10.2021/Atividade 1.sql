/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
-- Cria o Banco de Dados
create database db_RH;
-- Seleciona o Banco de Dados para uso 
use db_RH;
-- Cria tabela no banco de dados
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
sexo char not null,
cargo varchar(255) not null,
salario decimal (10,2),
horario varchar(255),
primary key (id)
);
-- Insere os dados na tabela
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Vinicius", "M", "Dev JR", 1500.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Fernando", "M", "Dev Pleno", 10000.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Maria", "F", "Diretora Executiva", 15000.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Talita", "F", "CEO", 30000.00, "DIURNO");
insert into tb_funcionarios(nome,sexo,cargo,salario,horario) values ("Diego", "M", "CEO", 30000.00, "DIURNO");

-- Visualiza os dados
select * from tb_funcionarios;
-- safe update
SET SQL_SAFE_UPDATES=0;

-- Atualizando dado da tabela
UPDATE tb_funcionarios SET salario = 1900.50 WHERE nome LIKE 'Vinicius';

-- Salarios menores que 2000 reais
select * from tb_funcionarios where salario<2000;

-- Salarios maiores que 2000 reais
select * from tb_funcionarios where salario>2000;

SELECT * FROM tb_funcionarios;


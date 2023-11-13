-- apagando banco de dados existente
drop database dbLoterica;

-- criando o banco de dados
create database dbLoterica;

-- acessando o banco de dados
use dbLoterica;

--criando tabelas
create table tbFuncionarios(
codigo int,
nome varchar(100),
email char(100),
telCel char(9),
cpf char(14),
dataEnt date,
salario decimal(9,2)	
);

create table tbUsuarios(
codigo int,
nome varchar(50),
senha varchar(30)
);

--visualizando as tabelas criadas no banco de dados
show tables;

--visualizando a estrutura da tabela criada
desc tbFuncionarios;
desc tbUsuarios; 

-- inserindo registros nas tabelas
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(1,'Armandino da Silva','armandino.silva@hotmail.com','99875-8574','157.857.897-00','2023/10/26',1500.65);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(2,'Renato Augusto','renato.reidofut@hotmail.com','97854-5632','523.542.863-00','2023/03/15',9000.75);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(3,'Yuri Alberto','yuri.naosabedominar@hotmail.com','97895-4596','654.524.639-97','2023/04/12',5000.35);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(4,'Cassio Ramos','cassio.espalmatodas@hotmail.com','99562-8751','452.236.154-78','2023/07/05',2000.50);

-- visualizando os registros/dados inseridos na tabela
select * from tbFuncionarios;
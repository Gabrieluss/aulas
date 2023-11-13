drop database dbFlora;

create database dbFlora;

use dbFlora;

-- tabalhar com a estruturadas tabelas
create table tbFuncionarios(
nome varchar(10),
cpf char(2)
);

create table tbPersons(
id int,
lastName varchar(100),
firstName varchar(100),
address varchar(100),
city varchar(100)
);

-- visualizando a estruura da tabela
desc tbFuncionarios;

-- adicionando colunas em uma tabela criada

alter table tbFuncionarios add email varchar(100);

alter table tbFuncionarios add cidade varchar (100);

alter table tbFuncionarios add cep char(9);

alter table tbFuncionarios add cnpj int(11);

alter table tbPersons add dateofbirth date;

-- alterar colunas da tabela criada

alter table tbFuncionarios modify column nome varchar(100);

alter table tbFuncionarios modify column cpf varchar(14);

alter table tbPersons modify column dateofbirth year;

-- apagar colunas da tabela criada

alter table tbFuncionarios drop column cnpj;

desc tbFuncionarios;
desc tbPersons;
 
insert into tbPersons(id,lastName,firstName,address,city,dateofbirth)
	values(1,"Hansen","Ola","Timoteivn 10","Sandnes",1995);

insert into tbPersons(id,lastName,firstName,address,city,dateofbirth)
	values(2,"Svendson","Tove","Borgvn 23","Sandnes",1986);

insert into tbPersons(id,lastName,firstName,address,city,dateofbirth)
	values(3,"Pettersen","Kari","Storgt 20","Stavanger",1975);

select * from tbPersons;
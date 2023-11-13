-- apagando banco de dados existente
drop database dbBiblioteca;

-- criando o banco de dados
create database dbBiblioteca;

-- acessando o banco de dados
use dbBiblioteca;

-- criando tabelas
create table tbautor(
idautor int,
nome varchar(45),
pais varchar(45)
);

create table tblivros(
idlivros int,
titulo varchar(45),
ano varchar(45),
autor_idautor int,
categoria_idcategoria int
);

create table tbcategoria(
idcategoria int,
nome varchar(45),
descricao varchar(45)
);

-- visualizando as tabelas
show tables;

-- visualizando a estrutura da tabela criada
desc tbautor;
desc tblivros;
desc tbcategoria;

-- inserindo os registros nas tabelas
insert into tbautor(idautor,nome,pais)
    values(536,'Fernando Duarte','Brasil');
insert into tbautor(idautor,nome,pais)
	values(458,'Luis Felipe','Brasil');
insert into tbautor(idautor,nome,pais)
	values(852,'Tiago Rodrigues','Portugal');
insert into tbautor(idautor,nome,pais)
	values(479,'Paulo Henrique','Espanha');
insert into tbautor(idautor,nome,pais)
	values(216,'Diego Souza','Brasil');

-- visualizando os registros/dados inseridos na tabela
select * from tbautor;

insert into tblivros(idlivros,titulo,ano,autor_idautor,categoria_idcategoria)
	values(2347,'Chapeuzinho vermelho','1988',85697,545);
insert into tblivros(idlivros,titulo,ano,autor_idautor,categoria_idcategoria)
	values(4236,'Pinoquio','1952',75945,145);
insert into tblivros(idlivros,titulo,ano,autor_idautor,categoria_idcategoria)
	values(7598,'Tres porquinhos','1922',65324,456);
insert into tblivros(idlivros,titulo,ano,autor_idautor,categoria_idcategoria)
	values(2646,'Bela e a fera','1893',26954,4796);
insert into tblivros(idlivros,titulo,ano,autor_idautor,categoria_idcategoria)
	values(6531,'Turma da monica','1966',55862,5364);

-- visualizando os registros/dados inseridos na tabela
select * from tblivros;

insert into tbcategoria(idcategoria,nome,descricao)
	values(65,'Infantil','Garota que leva doces');
insert into tbcategoria(idcategoria,nome,descricao)
	values(45,'Infantil','Um garoto mentiroso');
insert into tbcategoria(idcategoria,nome,descricao)
    values(89,'Infantil','Cada porco mora em uma casa diferente');
insert into tbcategoria(idcategoria,nome,descricao)
    values(78,'Infantil','Um casal esquisito');
insert into tbcategoria(idcategoria,nome,descricao)
    values(36,'Infantil','Um monte de personagem');

-- visualizando os registros/dados inseridos na tabela
select * from tbcategoria; 	



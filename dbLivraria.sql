drop database dbLivraria;

create database dbLivraria;

use dbLivraria;

create table tbCategorias(
id_Categoria smallint(6),
categoria varchar(30)
);

create table tbEditoras(
id_Editora smallint(6),
nome_Editora varchar(50)
);

create table tblivro(
id_Livro smallint(6),
nome_Livro varchar(70),
id_Categoria smallint(6),
id_Autor smallint(6),
data_Pub date,
preco_Livro decimal(6,2),
id_Editora smallint(6),
isbn13 char(13),
isbn10 char(10)
);

create table tbAutores(
id_Autor smallint(6),
nome_Autor varchar(30),
sobrenome_Autor varchar(60)
);

--visualizando as estruturas
desc tbCategorias;
desc tbEditoras;
desc tblivro;
desc tbAutores;

-- adicionando colunas em uma tabela criada
alter table tblivro add quantidade int;

alter table tbAutores add email_Autor varchar(100);

alter table tbEditoras add email varchar(100);

alter table tbEditoras add cnpj varchar(19);

alter table tbEditoras add telefone varchar(10);

alter table tblivro add data_Entrada datetime;

alter table tblivro add descricao varchar(70);

alter table tblivro add valor decimal(6.7);

-- alterar colunas da tabela criada
alter table tblivro modify column data_Pub datetime;

alter table tbAutores modify column id_Autor int;

alter table tblivro modify column id_Livro int;

alter table tbEditoras modify column id_Editora int;

alter table tbCategorias modify column id_Categoria int;

-- apagando colunas da tabela criada
alter table tblivro drop nome_Livro;

alter table tblivro drop preco_Livro;

desc tbCategorias;
desc tbEditoras;
desc tblivro;
desc tbAutores; 

insert into tbCategorias(id_Categoria,categoria)
	values(1,'Programacao');

insert into tbCategorias(id_Categoria,categoria)
	values(2,'Programacao');

insert into tbCategorias(id_Categoria,categoria)
	values(3,'Programacao');	

insert into tbCategorias(id_Categoria,categoria)
	values(4,'Programacao');

insert into tbCategorias(id_Categoria,categoria)
	values(5,'Programacao');

select * from tbCategorias;

insert into tbEditoras(id_Editora,nome_Editora,email,cnpj,telefone)
    values(10,'Companhia da letras','companhiadaletras@gmail.com','46.395.000/0001-39','94853-7123');

insert into tbEditoras(id_Editora,nome_Editora,email,cnpj,telefone)
    values(11,'Aleph','alepheditora@gmail.com','46.395.000/0001-39','91256-4913');

insert into tbEditoras(id_Editora,nome_Editora,email,cnpj,telefone)
    values(12,'Suma','editorasuma@gmail.com','46.395.000/0001-39','98631-7963');

insert into tbEditoras(id_Editora,nome_Editora,email,cnpj,telefone)
    values(13,'Editora intrinseca','editoraintrinseca@gmail.com','46.395.000/0001-39','98636-4767');

insert into tbEditoras(id_Editora,nome_Editora,email,cnpj,telefone)
    values(14,'Grupo editoral record','grupoeditoralrecord@gmail.com','46.395.000/0001-39','9472-8486');

select * from tbEditoras;

insert into tblivro(id_Livro,id_Categoria,id_Autor,data_Pub,id_Editora,isbn13,isbn10,quantidade,data_Entrada,descricao,valor)
	values(20,100,200,'2002.04.03',300,'978-85-7522-870-8','817525766-0','50','2020.02.12','A Inteligencia Artificial esta transformando o mundo em que vivemos','50.99');

insert into tblivro(id_Livro,id_Categoria,id_Autor,data_Pub,id_Editora,isbn13,isbn10,quantidade,data_Entrada,descricao,valor)
	values(21,101,201,'2001.05.12',301,'978-85-7522-870-8','817525766-0','51','2022.05.30','')

select * from tblivro;	
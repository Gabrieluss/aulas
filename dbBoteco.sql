-- apgando banco de dados
drop database dbBoteco;

-- criando banco de dados
create database dbBoteco;

-- acessando o banco de dados
use dbBoteco;

-- criando as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
fone char(10),
cpf char(14),
datanasc date,
logradouro varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(100),
siglaEst char(2)
);
insert into tbFuncionarios(codForn,nome,email,fone,cpf,datanasc,logradouro,numero,cep,bairro,cidade,siglaEst)
values(1,'Julia Melo','julli.meloo@gmail.com','97455-5573','123.456.123-19','2005/05/16','Rua Inhamus','12A','04125-000',
'Vila prudente','São Paulo','SP');

create table tbUsuarios(
codUsu int,
nome varchar(30),
senha varchar(20)
);
insert into tbUsuarios(codUsu,nome,senha)values(1,'Julia Melo','161935');

create table tbFornecedores(
codForn int,
nome varchar(100),
email varchar(100),
telCel char(10),
cnpj char(18)
);
insert into tbFornecedores(codForn,nome,email,telCel,cnpj)
	values(1,'Casa das frutas SA','sa@casadasfrutas.com.br','95246-7856','03.361.252/0001-34');

create table tbProdutos(
codProd int,
nome varchar(100),
valor decimal(9,2),
qde int,
dataEnt date,
horaEnt time
);

insert into tbProdutos(codProd,nome,valor,qtde,dataEnt,horaEnt)
	values(1,'Couve manteiga',10.50,5,'2023/10/31','09:35:02');

create table tbClientes(
codCli int,
nome varchar(100),
email varchar(100),
telCel char(10),
cpf char(14)
);

insert into tbClientes(codCli,nome,email,telCel,cpf)
values(1,'Humberto Carlos Figueira','humberto.cfigueira@hotmail.com','98547-3652','254.536.582-99');

create table tbVendas(
codVenda int,
codProd int,
codCli int,
codUsu int,
qtde int,
preco decimal(9,2),
dataVenda date,
horaVenda time
);

insert into tbVendas(codVenda,codProd,codCli,codUsu,qtde,preco,dataVenda,horaVenda)
values(1,1,1,1,3,5,'2023/10/31','09h:38:52');

-- visualizando a estrutura das tabelas

desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;
desc tbVendas;

-- inserindo os registros nas tabelas

-- visualzando os registros das tabelas
select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;


 
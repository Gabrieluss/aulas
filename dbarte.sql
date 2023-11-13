-- criando banco de dados
create database dbArte;

-- acessando o banco de dados
use dbArte;

-- criando tabelas
create table tbEmprestimo(
numFilme int,
numero int,
tipo varchar(50),
cliente int,
dataret date,
datedev date,
valor_pg float(9)
);

create table tbMidia(
numFilme int,
numero int,
tipo varchar(50)
);

create table tbFilme(
numFilme int,
titulo_original varchar(50),
titulo_pt varchar(50),
duracao int,
data_lancamento date,
direcao varchar(250),
categoria varchar(50),
classificacao int
);

create table tbAtor(
cod int,
datanasc date,
nacionalidade varchar(50),
nomereal varchar(50),
nomeartistico varchar(50)
);

create table tbCliente(
numCliente int,
nome varchar(50),
endereco varchar(50),
foneres varchar(50),
fonecel varchar(50)
);

create table tbClassificacao(
cod int,
nome varchar(50),
preco float(9)
);

create table tbEstrela(
numFilme int,
codator int
);

-- visualizando as tabelas criadas no banco de dados
show tables;

desc tbEmprestimo;
desc tbMidia;
desc tbFilme;
desc tbAtor;
desc tbCliente;
desc tbClassificacao;
desc tbEstrela;

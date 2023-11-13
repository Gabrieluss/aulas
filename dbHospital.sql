-- apagando o banco de dados
drop database dbHospital;

-- criando o banco de dados
create database dbHospital;

-- acessando o banco de dados
use dbHospital;

-- criando as tabelas
create table tbMedico(
idMedico int,
nmMedico varchar(45),
telefoneMedico varchar(9)
);
insert into tbMedico(idMedico,nmMedico,telefoneMedico)
values(1,'Samuel Duarte','91234-5678');
insert into tbMedico(idMedico,nmMedico,telefoneMedico)
values(2,'Abimael Marques','91234-9875');
insert into tbMedico(idMedico,nmMedico,telefoneMedico)
values(3,'Osvaldo Oliveira','91234-4856');
insert into tbMedico(idMedico,nmMedico,telefoneMedico)
values(4,'Talita Rodrigues','91234-3652');
insert into tbMedico(idMedico,nmMedico,telefoneMedico)
values(5,'Rosangela Ferreira','91234-4512');

create table tbConsulta(
idConsulta int,
dt_consulta datetime,
medico_idMedico int,
paciente_idPaciente int,
receitaMedica_idReceitaMedica int
);
insert into tbConsulta(idConsulta,dt_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
values(10,'2023/10/07',1,30,40);
insert into tbConsulta(idConsulta,dt_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
values(11,'2023/05/09',2,31,41);
insert into tbConsulta(idConsulta,dt_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
values(12,'2023/11/10',3,32,42);
insert into tbConsulta(idConsulta,dt_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
values(13,'2023/12/19',4,34,43);
insert into tbConsulta(idConsulta,dt_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
values(14,'2023/02/02',5,34,44);

create table tbPaciente(
idPaciente int,
nmPaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45)
);
insert into tbPaciente(idPaciente,nmPaciente,telefonePaciente,convenio)
values(30,'Josue Duarte','94563-8694','Amil');
insert into tbPaciente(idPaciente,nmPaciente,telefonePaciente,convenio)
values(31,'Henrique Silva','94963-1782','Bradesco Saude');
insert into tbPaciente(idPaciente,nmPaciente,telefonePaciente,convenio)
values(32,'Luis Felipe','91452-4891','Hapvida');
insert into tbPaciente(idPaciente,nmPaciente,telefonePaciente,convenio)
values(33,'Fernando Augusto','94784-5278','Unimed');
insert into tbPaciente(idPaciente,nmPaciente,telefonePaciente,convenio)
values(34,'Paulo Roberto','94785-5731','SulAmerica');

create table tbReceitaMedica(
idReceitaMedica int,
descricao varchar(500)
);
insert into tbReceitaMedica(idReceitaMedica,descricao)
values(100,'Virose tomar dipirona');
insert into tbReceitaMedica(idReceitaMedica,descricao)
values(101,'Dor muscular tomar dipirona');
insert into tbReceitaMedica(idReceitaMedica,descricao)
values(102,'Tomar so quando estiver com febre');
insert into tbReceitaMedica(idReceitaMedica,descricao)
values(103,'Aplicar em meia e meia hora');
insert into tbReceitaMedica(idReceitaMedica,descricao)
values(104,'Aplicar somente quando estiver com dor');

-- visualizando as tabelas
show tables;


-- visualizando as tabelas
desc tbMedico;
desc tbConsulta;
desc tbPaciente;
desc tbReceitaMedica;

-- inserindo os registros nas tabelas


-- visualizando os registros
select * from tbReceitaMedica;
select * from tbConsulta;
select * from tbPaciente;





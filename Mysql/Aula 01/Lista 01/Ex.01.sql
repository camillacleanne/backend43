create database db_rh;
use db_rh;

create table tb_funcionarios(
id bigint (5) auto_increment,
nome  varchar(30) not null,
turno enum('M','T','N'),
cargo varchar (30) not null,
salario double,
ativa boolean,
primary key(id)
);

drop table tb_funcionarios;
 truncate tb_funcionarios; /*O comando TRUNCATE remove rapidamente todas as linhas de um conjunto de tabelas. 
 Possui o mesmo efeito do comando DELETE (sem a cláusula WHERE), É mais útil em tabelas grandes.*/


insert into tb_funcionarios(nome,turno,cargo,salario,ativa)values("Ronaldo","M","Esteticista", 2000.00,true);
insert into tb_funcionarios(nome,turno,cargo,salario,ativa)values("Miriam ","N","desenvolvedora", 10000.00,true);
insert into tb_funcionarios(nome,turno,cargo,salario,ativa)values("Gustavo ","T","Analista", 1300.00,true);
insert into tb_funcionarios(nome,turno,cargo,salario,ativa)values("Amanda","N","Asssitente", 2500.00,true);
insert into tb_funcionarios(nome,turno,cargo,salario,ativa)values("Linaldo ","M","Financeiro", 4500.00,true);
insert into tb_funcionarios(nome,turno,cargo,salario,ativa)values("Carina ","T","Supervisor", 60000.00,true);

select *from tb_funcionarios;


select* from  tb_funcionarios where salario >= 2000;
select* from  tb_funcionarios where salario <= 2000;


  Update tb_funcionarios Set salario = 2900  where id = '1';
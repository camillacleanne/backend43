create database db_escola;
use db_escola;

create table tb_alune(
id_alune bigint(7) auto_increment,	
nome varchar (30) not null,
idade int,
ano int,
turno varchar (20) not null,
nota real,
primary key (id_alune)
);

select * from tb_alune;

insert into tb_alune(nome,idade,ano,turno,nota) Values ("Jessica",  17 , 8 ,"Tarde",10.0);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("Gabi",  14 , 4 ,"Tarde",4.5);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("Arnaldo",  8 , 3 ,"Manhã",9.8);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("Pamela",  6  , 2 ,"Tarde",5.0);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("Lindoval",  5 , 8 ,"Manhã",8.6);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("Kris",  13 , 8 ,"Tarde",3.3);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("Dayse",  8 , 9 ,"Tarde",9.7);
insert into tb_alune(nome,idade,ano,turno,nota) Values ("jorge",  9 , 7,"Manhã",8.2);


select * from tb_alune where nota >= 7;
select * from tb_alune where nota < 7;

update tb_alune set nome = "Luna" where id_alune = 4;
select * from tb_alune;


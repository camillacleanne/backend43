create database db_eccomercurso;
use db_eccomercurso;

create table tb_produtos(
 id_produto bigint(5) auto_increment,
 nome varchar(20) not null,
 descricao varchar(20),
 setor varchar(20),
 codigo int,
 preco double,
 primary key(id_produto)
  );
  
  select * from tb_produtos;
  
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("html","introdutorio","tecnologia", 856957412, 26.90);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("java ","avançado","tecnologia", 98745835, 500);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("Oratoria ","se comunique","comunicacao", 365417820, 400.50);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("Midias","para influencer"," midias", 45744445, 2000.30);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("videos curtos "," 50 mp","fotografia", 54781245, 888.30);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("Curso zoom ","curso pratico","apps", 54878524, 350.50);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("Como vender ","tecnicas de venda","vendas", 36878412, 368.50);
  insert into tb_produtos (nome,descricao,setor,codigo,preco)values("gerenciamento","manter organização","processo", 49875751, 49.99);
  
  
  select* from  tb_produtos where preco >= 500;
  
  select* from  tb_produtos where preco <= 500;
  
  Update tb_produtos Set preco = 999  where id_produto = '1';
  
-- Exibe todos os produtos ordenando por nome decrescente
select * from tb_produtos order by nome desc;

/*Operadores Lógicos*/

-- AND (E)
select * from tb_produtos where preco < 20.00 AND fk_id_categoria =1;

-- OR (OU)
select * from tb_produtos where preco < 50.00 OR fk_id_categoria = 6;

-- NOT (NÃO)
select * from tb_categoria where NOT ativo = 1;

/*Operadores In e Between*/

-- O preço deve ser 20, 30 ou 40 Reais
select * from tb_produtos where preco IN (20.00,30.00,40.00);

-- O preço deve estar entre 20 e 40
select * from tb_produtos where preco between 20.00 AND 40.00;

-- O preço deve estar entre 20 e 40, em Ordem crecsente por nome do produto
select * from tb_produtos where preco between 20.00 AND 40.00 order by nome;

-- A Data de Registro deve estar entre 01 e 10 de Setembro, em Ordem crecsente por Data de Registro e nome do produto
select * from tb_produtos where dataRegistro
between '2021-01-01' AND '2021-12-30' order by dataRegistro , nome;

/*Operador Like*/

-- Localiza os produtos cujo nome contenha b
select * from tb_produtos where nome Like "%b%";

-- Localiza os produtos cujo nome comece em b
select * from tb_produtos where nome Like "b%";

-- Localiza os produtos cujo nome termine em b
select * from tb_produtos where nome Like "%b";

/* Operadores Matemáticos */

-- Conte o total de produtos (Exceto os Nulos)
select count(*) from tb_produtos;

-- Conte o total de linhas da coluna fk_id_categoria (null são ignorados)
select count(fk_id_categoria) from tb_produtos;

-- Calcule a soma dos preços
SELECT SUM(preco)FROM tb_produtos ;

-- Calcule a média de preço
SELECT AVG(preco) AS media FROM tb_produtos;

 -- Exibir a Categoria_id e Calcular a média de preço, agrupando por fk_id_categoria
SELECT fk_id_categoria, AVG(preco) AS media_preco FROM tb_produtos group by fk_id_categoria;

-- Mostrar o Maior Preço
select max(preco), nome as preco_maximo from tb_produtos;

-- Mostrar o Menor Preço
select min(preco) as preco_minimo from tb_produtos;

/* Operador Join*/

-- Inner Join
select nome, preco, qtdEstoque, tb_categoria.acessorios as descricao, tb_categoria.ativo as estado 
from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.fk_id_categoria;

 -- Left Join
 select nome, preco, qtdEstoque, tb_categoria.acessorios as descricao, tb_categoria.ativo as estado 
from tb_produtos left join tb_categoria 
on  tb_categoria.id = tb_produtos.fk_id_categoria;

 -- Right Join
 select nome, preco, qtdEstoque, tb_categoria.acessorios as descricao, tb_categoria.ativo as estado 
from tb_produtos right join tb_categoria 
on  tb_categoria.id = tb_produtos.fk_id_categoria;

/*Bônus*/
-- Esqueceu de criar a chave estrangeira na tabela
ALTER TABLE tb_produtos add foreign key (fk_categoria_id) references tb_categorias (id);

-- Exibe uma lista contendo todos os Banco de Dados criados 
show databases;

-- Exibe uma lista contendo todas as tabelas do Banco de Dados selecionado (Use Database_name) 
SHOW TABLES;

-- Exibe todos os atributos de uma tabela (Dicionário de Dados Resumido)
DESCRIBE tb_categoria;

-- Exibe o código SQL usado para criar uma tabela
SHOW CREATE TABLE tb_categoria;

-- Renomeia uma tabela
rename table tb_categoria to tb_categorias;

-- Apaga uma tabela
drop table tb_categorias;

-- Apaga um Banco de dados
drop database db_cidade_das_bugiganga;

/* 1.	Crie um banco de dados para um serviço de uma quitanda, onde o sistema trabalhará 
com as informações dos produtos desta empresa. */
CREATE DATABASE db_quitanda;

/* 2.	Crie uma tabela de produtos e determine 5 atributos relevantes para se trabalhar 
com o serviço desta quitanda. */

USE db_quitanda;

CREATE TABLE tb_produtos(
codigo_de_barras bigint auto_increment primary key,
nome varchar(255),
preço decimal(62,2),
quantidade bigint,
tipo varchar(255),
id_categoria bigint,
foreign key(codigo_de_barras) references tb_categoria(id_categoria)
);

-- 3. Crie uma tabela de categorias para esses produtos.
/* 4. Faça o relacionamento de categorias na tabela de produto através da foreign key 
(id_categoria) */

CREATE TABLE tb_categoria(
id_categoria bigint auto_increment primary key,
nome_categoria varchar(100)
);

-- 5. Insira nestas tabelas no mínimo 5 dados (registros).
INSERT tb_categoria(nome_categoria)
VALUES("Hortaliça");

INSERT tb_categoria(nome_categoria)
VALUES("Fruta");

INSERT tb_categoria(nome_categoria)
VALUES("Legume");

INSERT tb_categoria(nome_categoria)
VALUES("Carne");

INSERT tb_categoria(nome_categoria)
VALUES("Outros"); 

----------------------------------------------------------------------------------------
INSERT tb_produtos(nome, preço, quantidade, tipo, id_categoria)
VALUES("Cenoura", 0.77, 50, "Legume", 1);

INSERT tb_produtos(nome, preço, quantidade, tipo, id_categoria)
VALUES("Batata", 2.50, 75, "Outro(Tuberculo)", 2);

INSERT tb_produtos(nome, preço, quantidade, tipo, id_categoria)
VALUES("Manga", 4.40, 50, "Fruta", 3);

INSERT tb_produtos(nome, valor, quantidade, tipo, id_categoria)
VALUES("Peito de Frango", 7.50, 20, "Carne", 4);

INSERT tb_produtos(nome, preço, quantidade, tipo, id_categoria)
VALUES("Feijão Verde", 7.00, 50, "Grão", 5);

-- 6. Faça um SELECT que retorne todos os produtos

SELECT * FROM tb_produtos;

-- 7 Faça um SELECT que retorne todas as categorias.

SELECT * FROM tb_categoria;

-- 8. Faça um SELECT que retorne todas as categorias com produtos de valor maior do que 50.

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON tb_categoria.id_categoria =
tb_produtos.id_categoria WHERE tb_produtos.preço > 50.00;

-- 9. Faça um SELECT que retorne todos os produtos que contém a letra %a%

SELECT * FROM tb_produtos WHERE nome LIKE "%a%";

-- 10. Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_produtos SET nome = "Coxa de Frango" WHERE codigo_de_barras = 4;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único script 
(arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados. */


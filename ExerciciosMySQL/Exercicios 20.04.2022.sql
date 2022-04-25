-- ATIVIDADE 01
-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
-- Insira nesta tabela no mínimo 5 dados (registros).
-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
-- Ao término atualize um registro desta tabela através de uma query de atualização.
-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

CREATE DATABASE db_colaboradores_rh;
USE db_colaboradores_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment primary key,
    nome varchar(255),
    idade int,
    genero varchar(255),
    salario decimal (65,5),                                  
    departamento varchar(255)
    );
    
    SELECT * FROM tb_colaboradores;
    
	INSERT INTO tb_colaboradores(nome, idade, genero, salario, departamento)
    VALUES("Rafael Balbino", 20, "hetero", 10777, "Software Engineer");
    
    INSERT INTO tb_colaboradores(nome, idade, genero, salario, departamento)
    VALUES("Fonfon Orleans", 25, "fonfon", 1790, "Estagiário");
    
    INSERT INTO tb_colaboradores(nome, idade, genero, salario, departamento)
    VALUES("Fonfon Galli", 23, "hetero", 10777, "Software Engineer");
    
    UPDATE tb_colaboradores SET salario = 1877 WHERE id = 2;
    
    SELECT * FROM tb_colaboradores WHERE salario > 2.000;
    SELECT * FROM tb_colaboradores WHERE salario < 2.000;
    
    UPDATE tb_colaboradores SET cargo = "Software Engineer Senior" WHERE id_colaborador = 1;
    UPDATE tb_colaboradores SET cargo = "Software Engineer Jr" WHERE id_colaborador = 2;
    UPDATE tb_colaboradores SET cargo = "Software Engineer Senior" WHERE id_colaborador = 3;
    
    UPDATE tb_colaboradores SET salario = 12777 WHERE id_colaborador = 1;
    UPDATE tb_colaboradores SET salario = 6777 WHERE id_colaborador = 2;
    UPDATE tb_colaboradores SET salario = 12777 WHERE id_colaborador = 3;
    

-- Atividade 2

-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 

CREATE DATABASE db_loja_ddev;
USE db_loja_ddev;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    nome VARCHAR(255),
    valor decimal (65,2),
    peso decimal (65,2),
    quantidade int,
    cor VARCHAR(255)
);

-- Insira nesta tabela no mínimo 8 dados (registros).

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 1 
VALUES("Relógio", "70", "70.7", "70", "Preto");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 2
VALUES("Celular", "1770", "177", "25", "Preto");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 3
VALUES("Multimidia", "1277", "777", "12", "Preto");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 4
VALUES("Monitor 28", "770", "1210", "20", "Preto");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 5
VALUES("PC DDev Stage 7", "4777", "3770", "10", "Preto-Arco-Íris");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 6
VALUES("Memória Ram 12GB", "1777", "125", "70", "Preto-Arco-Íris");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 7
VALUES("SSD 500GB", "770", "70", "70", "Preto-Arco-Íris");

INSERT INTO tb_produtos(nome, valor, peso, quantidade, cor) -- 8
VALUES("Kit DDev Stage 7: Headset Premium, Teclado Premium, Mouse e mousepad Premium's", "1774", "700", "12", "Preto-Arco-Íris");

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.

SELECT * FROM tb_produtos WHERE valor > 500;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

SELECT * FROM tb_produtos WHERE valor < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_produtos SET valor = 1600 WHERE id_produtos = 6;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
 
 
 
-- Atividade 3
-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 

CREATE DATABASE db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e 
-- determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

USE db_escola;
CREATE TABLE tb_estudantes(
	id_estudante int auto_increment primary key,
nome varchar(255),
idade int,
serie varchar(7),
periodo varchar(12),
nota decimal(65,2)
);

-- Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Daniel Hernan Alves Galli", "7", "7ºA", "Noturno", "fon"); -- 1

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Riqueza Hernan Alves Galli", "12", "7ºA", "Manhã", "10"); -- 2

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Perseverança Hernan Alves Galli", "9", "7ºA", "Manhã", "7"); -- 3

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Destreza Hernan Alves Galli", "7", "7ºA", "Tarde", "4"); -- 4

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Rico Hernan Alves Galli", "16", "7ºA", "Noturno", "9"); -- 5

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Vencedor Hernan Alves Galli", "15", "7ºA", "Tarde", "10"); -- 6

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Prospero Hernan Alves Galli", "17", "7ºA", "Noturno", "´10"); -- 7

INSERT INTO tb_estudantes (nome, idade, serie, periodo, nota)
VALUES("Prospera Hernan Alves Galli", "16", "7ºA", "Noturno", "10"); -- 8

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

SELECT * FROM tb_estudantes WHERE nota > 7.0; 

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

SELECT * FROM tb_estudantes WHERE nota < 7.0; 

-- Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_estudantes SET periodo = tarde WHERE id_estudante = 1;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.



-- create database -- DDL

CREATE DATABASE db_quitanda;
USE db_quitanda;
-- DROP DATABASE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL, 
quantidade INT,
validade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

DESCRIBE tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, validade, preco) VALUES 
("tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos (nome, quantidade, validade, preco) VALUES 
("maca", 20, "2023-12-15", 5.00);
INSERT INTO tb_produtos (nome, quantidade, validade, preco) VALUES 
("laranja", 50, "2023-12-15", 10.00);
INSERT INTO tb_produtos (nome, quantidade, validade, preco) VALUES 
("banana", 200, "2023-12-15", 12.00);
INSERT INTO tb_produtos (nome, quantidade, validade, preco) VALUES 
("uva", 1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos (nome, quantidade, validade, preco) VALUES 
("pera", 500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos;

-- INSERT INTO tb_produtos (nome, quantidade, validade, preco) 
-- VALUES ("tomate", 100, "2023-12-15", 8.00),
-- ("maca", 20, "2023-12-15", 5.00), 
-- ("laranja", 50, "2023-12-15", 10.00), 
-- ("banana", 200, "2023-12-15", 12.00), 
-- ("uva", 1200, "2023-12-15", 30.00), 
-- ("pera", 500, "2023-12-15", 2.99);

select nome, preco from tb_produtos;

select * from tb_produtos where id = 2;

select * from tb_produtos where preco < 5.00;

-- selecionando dados com operadores logicos

select * from tb_produtos where preco > 5 and quantidade < 100;

-- -------------------------------------------------------------------------------------------
DESCRIBE tb_produtos; 

alter table tb_produtos add descricao varchar (255); 

alter table tb_produtos drop descricao;

-- -------------------------------------------------------------------------------------------
SET SQL_SAFE_UPDATES = 1;

update tb_produtos set preco = 2.99 where id = 1;

delete from tb_produtos where id in (1, 3);

alter table tb_produtos modify preco decimal (6, 2);

select * from tb_produtos;




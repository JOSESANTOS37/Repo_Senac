USE CARAMELO;

CREATE TABLE tb_clientes (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(150),
    data_nascimento DATE,
    sexo VARCHAR(20),
    email VARCHAR(100),
    telefone VARCHAR(40),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    data_cadastro DATE);
    
LOAD DATA INFILE 'C:/Users/jose.flor/Documents/Repo_Senac/Aula 11/tb_clientes2.csv'
INTO TABLE tb_clientes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nome_cliente, data_nascimento, sexo, email, telefone, cidade, estado, data_cadastro);

SELECT * FROM tb_clientes;

#--------------------------------------------------------------------------------------------

CREATE TABLE tb_produtos (
	Id INT PRIMARY KEY AUTO_INCREMENT,
	nome_produto VARCHAR(300),
	categoria VARCHAR(100),
	subcategoria VARCHAR(100),
	marca VARCHAR(100),
preco_unitario DECIMAL(10,2));
    
LOAD DATA INFILE 'C:/Users/jose.flor/Documents/Repo_Senac/Aula 11/tb_produtos.csv'
INTO TABLE tb_produtos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nome_produto, categoria, subcategoria, marca, preco_unitario);
  
SELECT * FROM tb_produtos;
  
#--------------------------------------------------------------------------------------------
  
  
  CREATE TABLE Tb_vendas (
  
  id_venda INT PRIMARY KEY,
  data_venda DATE,
  id_clientes INT,
  id_produtos INT,
  quantidade INT,
  forma_pagamento VARCHAR(40),
  canal_venda VARCHAR(40),
  FOREIGN KEY (id_clientes) REFERENCES tb_clientes(id),
  FOREIGN KEY (id_produtos) REFERENCES tb_produtos(id));
  
LOAD DATA INFILE 'C:/Users/jose.flor/Documents/Repo_Senac/Aula 11/tb_vendas.csv'
INTO TABLE tb_vendas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\N'
IGNORE 1 ROWS;
  
SELECT * FROM Tb_vendas;

#--------------------------------------------------------------------------------------------
    
SET GLOBAL local_infile = 1;
  
     
  
  DROP TABLE tb_vendas;
  
  DROP TABLE tb_produtos;
  
  DROP TABLE tb_clientes;
  
  
  # Liste o total de vendas realizadas por cada forma de pagamento
  







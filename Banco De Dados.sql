
CREATE DATABASE  tcc ;
USE tcc;

CREATE TABLE usuario(

 id_usuario int(20) NOT NULL AUTO_INCREMENT,
 nome varchar(50) NOT NULL,
 senha varchar(25) NOT NULL,
 PRIMARY KEY(id_usuario)
 
 );
 
CREATE TABLE fornecedor(
  cnpj char(15) NOT NULL,
  nome varchar(50) NOT NULL,
  email varchar(50) NULL,
  PRIMARY KEY (cnpj)

);

 CREATE TABLE cliente(
   cpf char(11) NOT NULL,
  nome varchar(50) NOT NULL,
  email varchar(50) NULL,
  PRIMARY KEY (cpf) 

);

CREATE TABLE contato(
  id_contato int(20) NOT NULL AUTO_INCREMENT,
  ddd varchar(2) NOT NULL,
  telefone varchar(9) NOT NULL,
  cpf char(11) NULL,
  cnpj char(15) NULL,
  PRIMARY KEY (id_contato),
  FOREIGN KEY (cpf) REFERENCES cliente(cpf),
  FOREIGN KEY (cnpj) REFERENCES fornecedor(cnpj)

);

CREATE TABLE endereco(
  id_endereco int(20) NOT NULL AUTO_INCREMENT,
  rua varchar(100) NOT NULL,
  bairro varchar(50) NOT NULL,
  complemento varchar(50) NULL,
  cep varchar(8) NOT NULL,
  cidade varchar(50) NOT NULL,
  estado varchar (2) NOT NULL,
  cpf char(11) NULL,
  cnpj char(15) NULL,
  PRIMARY KEY (id_endereco),
  FOREIGN KEY (cpf) REFERENCES cliente(cpf),
  FOREIGN KEY (cnpj) REFERENCES fornecedor(cnpj)

);


CREATE TABLE produto(
  codigo_fiscal varchar(50) NOT NULL,
  nome varchar(50) NOT NULL,
  cor varchar(20) NOT NULL,
  valor float(20) NOT NULL,
  quantidade int(20) NOT NULL,
  cnpj char(15) NOT NULL,
  data_compra date NOT null,
  PRIMARY KEY (codigo_fiscal),
  FOREIGN KEY (cnpj) REFERENCES fornecedor(cnpj) 

);

CREATE TABLE venda(
id_venda int(20) NOT NULL AUTO_INCREMENT,
valor_total float(20) NOT NULL,
pagamento varchar (20) NOT NULL,
quantidade int(20) NOT NULL,
codigo_fiscal varchar(30) NOT NULL,
cpf char(11) NOT NULL,
data_venda date NOT NULL,
data_entrega date NULL,
PRIMARY KEY (id_venda),
FOREIGN KEY (codigo_fiscal) REFERENCES produto(codigo_fiscal),
FOREIGN KEY (cpf) REFERENCES cliente(cpf)
);







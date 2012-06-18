DROP DATABASE IF EXISTS pizzaria;
CREATE DATABASE pizzaria;
USE pizzaria;

CREATE TABLE endereco
(
   codigo 			INTEGER NOT NULL,
   logradouro      	VARCHAR(40),
   numero		   	INTEGER,
   complemento   	VARCHAR(40),
   bairro   		VARCHAR(40),
   cidade   		VARCHAR(40),
   uf   			VARCHAR(2),
   cep   			VARCHAR(40),
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;

CREATE TABLE usuario
(
   codigo 			INTEGER NOT NULL,
   login   			VARCHAR(40),
   senha   			VARCHAR(40),
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;

CREATE TABLE cliente
(
   codigo 			INTEGER NOT NULL,
   nome      		VARCHAR(40),
   cpf		   		VARCHAR(15),
   email   			VARCHAR(40),
   telefone   		VARCHAR(40),
   celular   		VARCHAR(40),   
   cod_usuario		INTEGER,
   cod_endereco		INTEGER,
   FOREIGN KEY(cod_usuario) REFERENCES usuario(codigo) ON DELETE CASCADE,
   FOREIGN KEY(cod_endereco) REFERENCES endereco(codigo) ON DELETE CASCADE,
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;

CREATE TABLE produto
(
   codigo 			INTEGER NOT NULL,
   descricao      	VARCHAR(40),
   preco			FLOAT,
   PRIMARY KEY(codigo)
)ENGINE = InnoDB;

INSERT INTO produto VALUES (1, 'Pizza: A Moda do Cliente', 'M.T.O, mussarela e mais três ingredientes a sua escolha', 22.90);
INSERT INTO produto VALUES (2, 'Pizza: Americana', 'M.T.O, mussarela, presunto, bacon, ovos e azeitona', 16.90);
INSERT INTO produto VALUES (3, 'Pizza: Atum', 'M.T.O, mussarela, atum ralado, cebola e azeitona', 16.90);
INSERT INTO produto VALUES (4, 'Pizza: Bacon', 'M.T.O, mussarela, tomate, bacon e azeitona', 16.90);
INSERT INTO produto VALUES (5, 'Pizza: Calabresa', 'M.T.O, mussarela, calabresa, cebola e azeitona', 14.90);
INSERT INTO produto VALUES (6, 'Pizza: Calabresa Catupiry', 'M.T.O, mussarela, calabresa, cebola, catupiry e azeitona', 17.90);
INSERT INTO produto VALUES (7, 'Pizza: Camarão', 'M.T.O, mussarela, camarão, ervilha, palmito, catupiry e azeitona', 22.90);
INSERT INTO produto VALUES (8, 'Pizza: Carne Seca com Catupiry', 'M.T.O, mussarela, carne seca, catupiry e azeitona', 21.90);
INSERT INTO produto VALUES (9, 'Pizza: Carne Seca Acebolada', 'M.T.O, mussarela, carne seca, cebola e azeitona', 20.90);
INSERT INTO produto VALUES (10, 'Pizza: Cinco Queijos', 'M.T.O, mussarela, catupiry, provolone, cheedar, parmesão e azeitona', 20.90);
INSERT INTO produto VALUES (11, 'Pizza: Dois Queijos', 'M.T.O, mussarela, catupiry e azeitona', 16.90);
INSERT INTO produto VALUES (12, 'Pizza: Filé Mignon Catupiry', 'M.T.O, mussarela, filé no molho de catupiry e azeitona', 22.90);
INSERT INTO produto VALUES (13, 'Pizza: Frango Catupiry', 'M.T.O, mussarela, frango desfiado, catupiry e azeitona', 18.90);
INSERT INTO produto VALUES (14, 'Pizza: Frango Catupiry Milho', 'M.T.O, mussarela, frango desfiado, catupiry, milho e azeitona', 20.90);
INSERT INTO produto VALUES (15, 'Pizza: Italiana', 'M.T.O, mussarela, salaminho, tomate e azeitona', 20.90);
INSERT INTO produto VALUES (16, 'Pizza: Lombinho', 'M.T.O, mussarela, lombo canadense, catupiry e azeitona', 18.90);
INSERT INTO produto VALUES (17, 'Pizza: Marguerita', 'M.T.O, mussarela, tomate, parmesão, manjericão fresco e azeitona', 16.90);
INSERT INTO produto VALUES (18, 'Pizza: Mexicana', 'M.T.O, mussarela, alho frito, bacon, tomate e azeitona', 16.90);
INSERT INTO produto VALUES (19, 'Pizza: Mussarela', 'M.T.O, mussarela, rodelas de tomate e azeitona', 14.90);
INSERT INTO produto VALUES (20, 'Pizza: Palmito', 'M.T.O, mussarela, palmito, catupiry e azeitona', 20.90);
INSERT INTO produto VALUES (21, 'Pizza: Peito de Peru', 'M.T.O, mussarela, peito de peru, catupiry e azeitona', 20.90);
INSERT INTO produto VALUES (22, 'Pizza: Portuguesa', 'M.T.O, mussarela, presunto, ovos, cebola, ervilha, palmito e azeitona', 18.90);
INSERT INTO produto VALUES (23, 'Pizza: Quatro Queijos', 'M.T.O, mussarela, catupiry, parmesão, gorgonzola e azeitona', 19.90);
INSERT INTO produto VALUES (24, 'Pizza: Quatro Queijos c/ Tomate Seco', 'M.T.O, mussarela, catupiry, parmesão, gorgonzola, tomate seco e azeitona', 21.90);
INSERT INTO produto VALUES (25, 'Pizza: Requeijão', 'M.T.O, mussarela, requeijão, bacon e azeitona', 20.90);
INSERT INTO produto VALUES (26, 'Pizza: Strogonoff de Carne', 'M.T.O, mussarela, strogonoff de carne, batata palha e azeitona', 22.90);
INSERT INTO produto VALUES (27, 'Pizza: Strogonoff de Frango', 'M.T.O, mussarela, strogonoff de frango, batata palha e azeitona', 22.90);
INSERT INTO produto VALUES (28, 'Pizza: Tomate Seco', 'M.T.O, mussarela, tomate seco e azeitona', 18.90);
INSERT INTO produto VALUES (29, 'Pizza: Tomate Seco c/ Alho', 'M.T.O, mussarela, tomate seco, alho frito e azeitona', 20.90);
INSERT INTO produto VALUES (30, 'Pizza: Três Queijos', 'M.T.O, mussarela, catupiry, provolone e azeitona', 17.90);
INSERT INTO produto VALUES (31, 'Bebida: Refrigerante', 'Lata 350 ml: Coca-cola, sprite, fanta, kuat, schweppes, pepsi, soda, guaraná', 2.50);
INSERT INTO produto VALUES (32, 'Bebida: Refrigerante 2L', 'Coca-cola, sprite, fanta, pespi, soda, guaraná', 7.00);
INSERT INTO produto VALUES (33, 'Bebida: Suco del Valle', 'Lata 335 ml', 3.00);
INSERT INTO produto VALUES (34, 'Bebida: H2OH!', 'Garrafa 500 ml', 3.50);

INSERT INTO usuario (codigo, login, senha) VALUES (1, 'admin', '123');


CREATE TABLE pedido 
(
   codigo           INTEGER NOT NULL,
   cod_cliente	    INTEGER NOT NULL,
   descricao	    VARCHAR(30),
   DATA	 DATE,
   PRIMARY KEY (codigo),
   FOREIGN KEY (cod_cliente) REFERENCES cliente(codigo) ON DELETE CASCADE
);

INSERT INTO pedido VALUES (1, 1, 'Pedido 1', '2012-06-17');


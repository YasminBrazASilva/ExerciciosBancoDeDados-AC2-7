-- Cria a tabela "marcas"
CREATE TABLE marcas (
	mrc_id INT AUTO_INCREMENT PRIMARY KEY,
    mrc_nome VARCHAR(50) NOT NULL,
    mrc_nacionalidade VARCHAR(50)
);

-- Insere valores na tabela "marcas"
INSERT INTO marcas (mrc_nome, mrc_nacionalidade)
	VALUES ('Marca A', 'Brasil'),
		   ('Marca B', 'Estados Unidos'),
		   ('Marca C', 'Itália'),
		   ('Marca D', 'Espanha'),
		   ('Marca E', 'França'),
		   ('Marca F', 'Alemanha'),
		   ('Marca G', 'Japão'),
		   ('Marca H', 'Canadá'),
		   ('Marca I', 'Austrália'),
		   ('Marca J', 'México');

-- Cria a tabela "produtos"
CREATE TABLE produtos (
	prd_id INT AUTO_INCREMENT PRIMARY KEY,
    prd_nome VARCHAR(50) NOT NULL,
    prd_qtd_estoque INT NOT NULL,
    prd_estoque_min INT NOT NULL,
    prd_data_fabricacao TIMESTAMP,
    prd_perecivel BOOLEAN,
    prd_valor DECIMAL(10, 2),
    prd_marca_id INT,
    CONSTRAINT fk_marcas FOREIGN KEY(prd_marca_id) REFERENCES marcas(mrc_id)
);

-- Insere dados na tabela "produtos"
INSERT INTO produtos (prd_nome, prd_qtd_estoque, prd_estoque_min, prd_data_fabricacao, prd_perecivel, prd_valor, prd_marca_id)
	VALUES ('Produto 1', 100, 20, '2023-01-15 08:00:00', true, 10.99, 1),
		   ('Produto 2', 75, 100, '2023-02-10 10:30:00', false, 19.99, 2),
		   ('Produto 3', 5, 10, '2023-03-05 14:15:00', true, 15.49, 3),
		   ('Produto 4', 120, 25, '2023-04-20 11:45:00', false, 25.75, 4),
		   ('Produto 5', 90, 18, '2023-05-12 09:20:00', true, 12.25, 5),
		   ('Produto 6', 8, 16, '2023-06-08 16:30:00', false, 9.99, 6),
		   ('Produto 7', 60, 12, '2023-07-25 13:10:00', true, 14.75, 7),
		   ('Produto 8', 110, 22, '2023-08-14 07:55:00', false, 21.50, 8),
		   ('Produto 9', 70, 14, '2023-09-02 18:45:00', true, 17.99, 9),
		   ('Produto 10', 105, 21, '2023-10-19 15:25:00', false, 13.25, 10),
		   ('Produto 11', 95, 19, '2023-11-04 12:40:00', true, 29.99, 1),
		   ('Produto 12', 65, 13, '2023-12-21 09:50:00', false, 8.50, 2),
		   ('Produto 13', 130, 26, '2024-01-08 17:05:00', true, 16.75, 3),
		   ('Produto 14', 85, 17, '2024-02-14 10:15:00', false, 22.99, 4),
		   ('Produto 15', 75, 15, '2024-03-27 14:55:00', true, 11.49, 5);

-- Cria a tabela "fornecedores"
CREATE TABLE fornecedores (
	frn_id INT AUTO_INCREMENT PRIMARY KEY,
    frn_nome VARCHAR(50) NOT NULL,
    frn_email VARCHAR(50)
);


-- Insere dados na tabela "fornecedores"
INSERT INTO fornecedores (frn_nome, frn_email)
	VALUES ('Fornecedor A', 'fornecedorA@email.com'),
		   ('Fornecedor B', 'fornecedorB@email.com'),
		   ('Fornecedor C', NULL);

-- Cria a tabela "produtos_fornecedores"
CREATE TABLE produtos_fornecedores (
	pf_prod_id INT REFERENCES produtos(prd_id),
    pf_forn_id INT REFERENCES fornecedores(frn_id),    
    PRIMARY KEY (pf_prod_id, pf_forn_id)
);

-- Insere valores na tabela "produtos_fornecedores"
INSERT INTO produtos_fornecedores (pf_prod_id, pf_forn_id)
	VALUES (1, 1),
	  	   (1, 2),
	 	   (2, 1),
		   (2, 3),
		   (3, 2),
		   (3, 3),
		   (4, 1),
		   (4, 3),
		   (5, 2),
		   (5, 1),
		   (6, 2),
		   (7, 1),
		   (7, 3),
		   (8, 3),
		   (8, 1),
		   (9, 2),
		   (9, 1),
		   (10, 3),
		   (11, 1),
		   (11, 2),
		   (12, 1),
		   (12, 2),
		   (13, 2),
           (14, 1),
           (15, 1);
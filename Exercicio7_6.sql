-- Cria uma nova coluna na tabela "produtos"
ALTER TABLE produtos
	ADD prd_data_validade DATE;
    
-- Adiciona a data de validade para cada linha da tabela produtos
UPDATE produtos
SET prd_data_validade = '2022-05-10'
WHERE prd_id = 1;

UPDATE produtos
SET prd_data_validade = '2023-09-22'
WHERE prd_id = 2;

UPDATE produtos
SET prd_data_validade = '2024-12-05'
WHERE prd_id = 3;

UPDATE produtos
SET prd_data_validade = '2025-07-14'
WHERE prd_id = 4;

UPDATE produtos
SET prd_data_validade = '2022-03-28'
WHERE prd_id = 5;

UPDATE produtos
SET prd_data_validade = '2023-11-19'
WHERE prd_id = 6;

UPDATE produtos
SET prd_data_validade = '2024-08-02'
WHERE prd_id = 7;

UPDATE produtos
SET prd_data_validade = '2025-01-30'
WHERE prd_id = 8;

UPDATE produtos
SET prd_data_validade = '2022-09-17'
WHERE prd_id = 9;

UPDATE produtos
SET prd_data_validade = '2023-04-07'
WHERE prd_id = 10;

UPDATE produtos
SET prd_data_validade = '2024-10-11'
WHERE prd_id = 11;

UPDATE produtos
SET prd_data_validade = '2025-06-25'
WHERE prd_id = 12;

UPDATE produtos
SET prd_data_validade = '2022-12-14'
WHERE prd_id = 13;

UPDATE produtos
SET prd_data_validade = '2023-07-01'
WHERE prd_id = 14;

UPDATE produtos
SET prd_data_validade = '2026-02-18'
WHERE prd_id = 15;

-- Adiciona novos produtos na tabela "produtos"
INSERT INTO produtos (prd_nome, prd_qtd_estoque, prd_estoque_min, prd_data_fabricacao, prd_perecivel, prd_valor, prd_marca_id, prd_data_validade)
	VALUES ('Produto 16', 50, 10, '2023-05-15 10:30:00', false, 18.99, 1, '2024-05-15'),
	       ('Produto 17', 80, 16, '2023-08-20 14:45:00', true, 12.50, 2, '2024-08-20'),
		   ('Produto 18', 65, 13, '2023-10-10 12:15:00', false, 24.75, 3, '2024-10-10');

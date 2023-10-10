-- Cria uma view que mostra somente os produtos em que o estoque está abaixo do mínimo
CREATE OR REPLACE VIEW vw_produtos_estoque_abaixo_minimo AS
	SELECT *
      FROM produtos AS p
	 WHERE p.prd_qtd_estoque < p.prd_estoque_min
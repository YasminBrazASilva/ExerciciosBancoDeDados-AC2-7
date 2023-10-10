-- Cria uma view que mostra todos os produtos com validade vencida e suas marcas
CREATE OR REPLACE VIEW vw_produtos_vencidos_marcas AS
	SELECT *
      FROM produtos AS p
		   LEFT JOIN marcas AS m
                  ON m.mrc_id = p.prd_marca_id
	 WHERE p.prd_data_validade <= NOW()
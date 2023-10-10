-- Cria a view que mostra todos os produtos e suas marcas
CREATE OR REPLACE VIEW vw_produtos_marcas AS
	SELECT *
      FROM produtos AS p
	       LEFT JOIN marcas as m
		          ON m.mrc_id = p.prd_marca_id
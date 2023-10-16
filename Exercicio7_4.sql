-- Cria uma view que mostra todos os produtos e suas marcas e fornecedores
  CREATE OR REPLACE VIEW vw_produtos_marcas_fornecedores AS 
	SELECT *
      FROM produtos AS p
           LEFT JOIN marcas AS m
                  ON m.mrc_id = p.prd_marca_id
		   LEFT JOIN produtos_fornecedores AS pf
                  ON pf.pf_prod_id = p.prd_id
		   LEFT JOIN fornecedores AS f
                  ON f.frn_id = pf.pf_forn_id
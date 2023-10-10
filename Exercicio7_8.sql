-- Seleciona os produtos com o preço acima da média
	SELECT *
      FROM produtos
	HAVING prd_valor > (SELECT AVG(prd_valor)
					      FROM produtos)
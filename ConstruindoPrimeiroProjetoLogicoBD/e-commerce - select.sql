-- Listar todos os Cliente
SELECT * FROM cliente;

-- Listar Clientes que possui forma de pagamento
SELECT * FROM cliente c
INNER JOIN forma_pagamento fp ON c.idcliente = fp.cliente_idcliente;

-- Listar produtos por Fornecedor
SELECT p.*,f.* FROM produto p
INNER JOIN disponibilizando_produto dp ON p.idproduto = dp.produto_idproduto
INNER JOIN fornecedor f ON dp.fornecedor_idfornecedor = f.idfornecedor;

-- Listar produtos por estoque
SELECT p.*,pe.quantidade FROM produto p
INNER JOIN produto_estoque pe ON p.idproduto = pe.produto_idproduto
INNER JOIN estoque e ON pe.estoque_idestoque = e.idestoque;

-- Lista pedido 
SELECT * FROM pedido;

-- Lista pedido Em Andamento
SELECT * FROM pedido WHERE status_pedido = 'Em Andamento';


-- Lista pedido Em Andamento e a forma de pagamento
SELECT 
	p.*, 
	pg.data as data_pagamento,
    pg.status as status_pagamento,
    pg.valor_pago,
    fp.tipo as tipo_pagamento,
    banco_operadora
FROM pedido p
INNER JOIN pagamento pg ON p.idpedido = pg.pedido_idpedido
INNER JOIN forma_pagamento fp ON pg.forma_pagamento_idforma_pagamento = fp.idforma_pagamento
WHERE p.status_pedido = 'Em Andamento';


-- Listar categorias que possui mais de um produto
SELECT categoria,count(*) as quantidade_categoria
FROM produto
GROUP BY categoria
HAVING count(categoria) > 1;


-- Listar Clientes que possui forma de pagamento Ordenado por tipo_pagamento
SELECT 
c.*,
fp.tipo as tipo_pagamento, 
fp.banco_operadora as operadora
FROM cliente c
INNER JOIN forma_pagamento fp ON c.idcliente = fp.cliente_idcliente
ORDER BY fp.tipo;
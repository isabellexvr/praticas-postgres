SELECT * FROM produtos WHERE id IN (SELECT id_produto FROM compras WHERE id_cliente=2);

//esse não ficou muito bom, porque eu não saberia, a princípio, qual seria o id do cliente :c
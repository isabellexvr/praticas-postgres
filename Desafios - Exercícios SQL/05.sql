SELECT * FROM produtos WHERE id IN (SELECT id FROM clientes WHERE nome='Benício Freire Sampaio');

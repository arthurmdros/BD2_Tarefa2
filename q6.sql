CREATE TRIGGER soma_milhas AFTER INSERT ON
cliente_voo
FOR EACH ROW
UPDATE milhas m
SET quantidade = quantidade + (SELECT distancia FROM voo, cliente_voo, cliente  WHERE voo = voo.codigo) / 10
WHERE m.cliente_cod = new.cliente;
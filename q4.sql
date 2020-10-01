
CREATE TRIGGER add_milhas AFTER
INSERT ON cliente
FOR EACH ROW
INSERT INTO milhas SET
cliente_cod=NEW.codigo, quantidade=0;

INSERT INTO cliente (codigo, nome, endereco)
VALUES (01, 'cliente01', 'endereço01');
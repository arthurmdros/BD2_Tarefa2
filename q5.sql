CREATE TRIGGER add_voo AFTER
INSERT on voo
FOR EACH ROW
UPDATE piloto p
SET num_voos = num_voos + 1
WHERE p.codigo = new.piloto_cod;


INSERT INTO piloto (codigo, nome, num_voos)
VALUES (01, 'piloto1');

INSERT INTO voo (codigo, tipo, num_passageiros, distancia, piloto_cod)
VALUES (01, 'Voo direto', 100, 904.09508, 01);

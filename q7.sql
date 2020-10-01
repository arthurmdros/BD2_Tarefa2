
CREATE TRIGGER add_passageiro AFTER
INSERT on cliente_voo
FOR EACH ROW
UPDATE voo v
SET num_passageiros = num_passageiros + 1
WHERE v.codigo = NEW.voo_cod;
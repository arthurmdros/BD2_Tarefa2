CREATE TRIGGER deletar_cliente AFTER DELETE on voo
FOR EACH ROW
BEGIN
DELETE FROM cliente_voo
    WHERE cliente_voo.voo_cod = voo.codigo;
END
DELIMITER //

CREATE FUNCTION SomarClientesCadastrados(dataConsulta DATE)
RETURNS INT
BEGIN
    DECLARE totalClientes INT;

    -- Soma o número de clientes cadastrados na data especificada
    SELECT COUNT(*) INTO totalClientes
    FROM clientes
    WHERE DATE(data_cadastro) = dataConsulta;

    RETURN totalClientes;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE RelatorioDiarioProdutos()
BEGIN
    -- Cria uma tabela temporária para armazenar o resultado do relatório diário
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_relatorio_diario (
        data DATE,
        quantidade_total INT
    );

    -- Insere os dados no relatório diário
    INSERT INTO temp_relatorio_diario (data, quantidade_total)
    SELECT
        DATE(data_venda) AS data,
        SUM(quantidade) AS quantidade_total
    FROM
        vendas
    GROUP BY
        DATE(data_venda);

    -- Seleciona os resultados
    SELECT * FROM temp_relatorio_diario;

    -- Limpa a tabela temporária
    DROP TEMPORARY TABLE IF EXISTS temp_relatorio_diario;
END //

DELIMITER ;
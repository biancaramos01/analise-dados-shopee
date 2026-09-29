USE shopee;

SELECT * 
FROM vendas;

SELECT COUNT(*) AS total_vendas
FROM vendas;

SHOW TABLES;


-- FATURAMENTO TOTAL
SELECT
    ROUND(SUM(valor_total), 2) AS faturamento_total
FROM vendas;

-- TOTAL DE PEDIDOS
SELECT
    COUNT(*) AS total_pedidos
FROM vendas;

-- FATURAMENTO MENSAL
SELECT
    mes,
    ROUND(SUM(valor_total), 2) AS faturamento_mensal
FROM vendas
GROUP BY mes
ORDER BY mes;


-- TICKET MÉDIO
SELECT
    ROUND(SUM(valor_total) / COUNT(*), 2) AS ticket_medio
FROM vendas;

-- CUSTOS
SELECT *
FROM custos;


-- CUSTO UNITÁRIO
-- Produto + embalagem
SELECT
    ROUND(SUM(valor_unitario), 2) AS custo_unitario_total
FROM custos;


-- CUSTO TOTAL DOS PRODUTOS VENDIDOS
-- Quantidade vendida x custo unitário
SELECT
    ROUND(SUM(v.quantidade) * (SELECT SUM(valor_unitario) FROM custos), 2) AS custo_total_produtos
FROM vendas v;


-- TAXAS TOTAIS DA SHOPEE
SELECT
    ROUND(SUM(taxa_comissao_liquida)
        + SUM(taxa_servico_liquida)
        + SUM(taxa_transacao), 2) AS taxas_totais_shopee
FROM vendas;


-- RESULDATO SEM ADS
-- Faturamento - produtos - taxas
SELECT
    ROUND(SUM(valor_total)
        - (SUM(quantidade) * (SELECT SUM(valor_unitario) FROM custos))
        - (SUM(taxa_comissao_liquida)
            + SUM(taxa_servico_liquida)
            + SUM(taxa_transacao)), 2) AS resultado_sem_ads
FROM vendas;



-- MARGEM SEM ADS
-- Resultado sem Ads / Faturamento x 100
SELECT
    ROUND((faturamento - custo_produtos - taxas_shopee) / faturamento * 100, 2) AS margem_sem_ads
FROM (
    SELECT SUM(valor_total) AS faturamento,
        SUM(quantidade) * (SELECT SUM(valor_unitario) FROM custos) AS custo_produtos,
        SUM(taxa_comissao_liquida)
        + SUM(taxa_servico_liquida)
        + SUM(taxa_transacao) AS taxas_shopee
    FROM vendas) AS calculos;



-- INVESTIMENTO TOTAL EM ADS
SELECT
    ROUND(SUM(despesas), 2) AS investimento_total_ads
FROM anuncios;



-- GMV TOTAL ATRIBUÍDO AOS ADS
SELECT
    ROUND(SUM(gmv), 2) AS gmv_total_ads
FROM anuncios;



-- ROAS GERAL
-- GMV dos Ads / Investimento em Ads
SELECT
    ROUND(
        SUM(gmv) / SUM(despesas),
        2
    ) AS roas_geral
FROM anuncios;



-- ACOS GERAL
-- Investimento em Ads / GMV dos Ads x 100
SELECT
    ROUND(
        SUM(despesas) / SUM(gmv) * 100,
        2
    ) AS acos_geral
FROM anuncios;



-- RESULTADO COM ADS
-- Faturamento - produtos - taxas - Ads
SELECT
    ROUND(SUM(valor_total)
        - (SUM(quantidade) * (SELECT SUM(valor_unitario) FROM custos))
        - SUM(taxa_comissao_liquida)
        - SUM(taxa_servico_liquida)
        - SUM(taxa_transacao)
        - (SELECT SUM(despesas) FROM anuncios), 2) AS resultado_com_ads
FROM vendas;



-- MARGEM COM ADS
-- Resultado com Ads / Faturamento x 100

SELECT
    ROUND((SUM(valor_total)
            - (SUM(quantidade) * (SELECT SUM(valor_unitario) FROM custos))
            - SUM(taxa_comissao_liquida)
            - SUM(taxa_servico_liquida)
            - SUM(taxa_transacao)
            - (SELECT SUM(despesas) FROM anuncios)) / SUM(valor_total) * 100, 2) AS margem_com_ads
FROM vendas;



-- FATURAMENTO DO MÊS ATUAL X MÊS ANTERIOR
WITH faturamento_mensal AS (
    SELECT mes, SUM(valor_total) AS faturamento
    FROM vendas
    GROUP BY mes)
SELECT mes, ROUND(faturamento, 2) AS faturamento, 
		ROUND(LAG(faturamento) OVER (ORDER BY mes), 2) AS faturamento_mes_anterior
FROM faturamento_mensal
ORDER BY mes;




-- CRESCIMENTO MENSAL DO FATURAMENTO (%)
WITH faturamento_mensal AS (SELECT mes, SUM(valor_total) AS faturamento
    FROM vendas
    GROUP BY mes),

comparacao_mensal AS (SELECT mes, faturamento, LAG(faturamento) OVER (ORDER BY mes) AS faturamento_anterior
    FROM faturamento_mensal)
SELECT mes, ROUND(faturamento, 2) AS faturamento,
    ROUND((faturamento - faturamento_anterior) / faturamento_anterior * 100, 2) AS crescimento_percentual
FROM comparacao_mensal
ORDER BY mes;







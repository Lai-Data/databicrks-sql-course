-- Databricks notebook source
SELECT 
    COUNT(*) AS nrLinhasNaoNulas -- linhas não nulas

FROM silver_olist.cliente

-- COMMAND ----------

SELECT
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes nao nulos
    COUNT(distinct idCliente) AS nrIdClienteDistintos, -- id de clientes distintos
    
    COUNT(idclienteunico) AS nrClienteUnico,
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos
    
 FROM silver_olist.cliente   

-- COMMAND ----------

SELECT 
    count(*) as qtLinhas,
    count(distinct idCLiente) AS qtClientes,
    count(distinct idClienteUnico) as qtClientesUnicos
    
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba') 

-- COMMAND ----------

SELECT *
  
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 
  AVG(vlPreco)
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT
    AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco (preço médio dos produtos)
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete(preço médio dos fretes)
    MAX(vlFrete) AS maxFrete,
    Min(vlFrete) AS minFrete    
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT
    AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco(preço médio dos produtos)
    
    PERCENTILE(vlPreco, 0.5) AS medianPreco, -- preco mediano dos produtos     
     
    AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco (preço médio dos produtos)
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete(preço médio dos fretes)
    MAX(vlFrete) AS maxFrete,
    Min(vlFrete) AS minFrete    
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT
    ROUND( AVG(vlPreco), 2)  AS avgPreco, -- media da coluna vlPreco(preço médio dos produtos)
    
    INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco, -- preco mediano dos produtos     
     
    AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco (preço médio dos produtos)
    MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
    AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete(preço médio dos fretes)
    MAX(vlFrete) AS maxFrete,
    Min(vlFrete) AS minFrete    
    
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SC'

-- Databricks notebook source
 -- Qual categoria tem mais produtos vendidos?
 
 SELECT 
        COUNT(*)   -- contagem de linhas do produto
 
 FROM silver_olist.item_pedido AS T1  -- tabela de Vendas
 
 LEFT JOIN silver_olist.produto AS T2
 ON T1.idProduto = T2.idProduto
 
 GROUP BY T1.idProduto             -- group do produto
 ORDER BY COUNT(*) DESC

-- COMMAND ----------

 -- Qual categoria tem mais produtos vendidos?
 
 SELECT T2.descCategoria,
        COUNT(*)
         
 FROM silver_olist.item_pedido AS T1  -- tabela de Vendas
 
 LEFT JOIN silver_olist.produto AS T2
 ON T1.idProduto = T2.idProduto
 
 GROUP BY T2.descCategoria             
 ORDER BY COUNT(*) DESC
 
 LIMIT 1      -- Qual categoria tem mais produto

-- COMMAND ----------

 SELECT T2.descCategoria,
        COUNT(T1.idPedido)
         
 FROM silver_olist.item_pedido AS T1  -- tabela de Vendas
 
 LEFT JOIN silver_olist.produto AS T2
 ON T1.idProduto = T2.idProduto
 
 GROUP BY T2.descCategoria             
 ORDER BY COUNT(T1.idPedido) DESC
 
 

-- COMMAND ----------

 -- Qual categoria tem produtos mais caros, em média? 
 
 SELECT T1.idPedido,
        T1.idProduto,
        T1.vlPreco,
        T2.descCategoria
 
 FROM silver_olist.item_pedido AS T1
 
 LEFT JOIN silver_olist.produto AS T2
 ON T1.idProduto = T2.idProduto

-- COMMAND ----------

-- Qual categoria tem produtos mais caros, em média? 
 
 SELECT T2.descCategoria,
       ROUND (AVG(T1.vlPreco)),
       ROUND (MAX(T1.vlPreco))
 
 FROM silver_olist.item_pedido AS T1
 
 LEFT JOIN silver_olist.produto AS T2
 ON T1.idProduto = T2.idProduto
 
 GROUP BY T2.descCategoria
 ORDER BY MAX(T1.vlPreco) DESC

-- COMMAND ----------

-- Os clientes de qual estado pagam mais frete?

SELECT 
       T3.descUF,
       AVG(T1.vlFrete) AS avgFrete

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF

HAVING AVG(T1.vlFrete) > 40  -- pode usar o apelido criado também de avgFrete no lugar de "AVG(T1.vlFrete)"

ORDER BY avgFrete DESC

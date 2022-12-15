-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 Selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- 03 Selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 04
 -- 4 Selecione produtos de perfumaria e bebes com altura maior que 5cm
 
 SELECT *
 
 FROM silver_olist.produto
 
 WHERE descCategoria IN ( 'perfumaria', 'bebes')
 AND vlAlturaCM > 5

-- COMMAND ----------

-- DBTITLE 1,Exercício 05 
 -- 5 Lista de pedidos com mais de um item
 
 SELECT *
 FROM silver_olist.pedido
 

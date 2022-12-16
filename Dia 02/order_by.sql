-- Databricks notebook source
SELECT 
    descUF,
    COUNT(DISTINCT idCLienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY descUF

-- COMMAND ----------

SELECT 
    descUF,
    COUNT(DISTINCT idCLienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY 2

-- COMMAND ----------

SELECT 
    descUF,
    COUNT(DISTINCT idCLienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado

-- COMMAND ----------

SELECT 
    descUF,
    COUNT(DISTINCT idCLienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY COUNT(DISTINCT idCLienteUnico)

-- COMMAND ----------

SELECT 
    descUF,
    COUNT(DISTINCT idCLienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado DESC 

-- COMMAND ----------

SELECT 
    descUF,
    COUNT(DISTINCT idCLienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado DESC

LIMIT 1

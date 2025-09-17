{{ config(materialized='table') }} -- this is make dbt sure that is table not view

WITH users AS (
    SELECT * FROM {{ref('userdim')}}
),
products AS (
    SELECT * FROM {{ref('productsdim')}}
),
categories AS(
    SELECT * FROM {{ref('categorydim')}}
)
SELECT * 
FROM products p
CROSS JOIN users
INNER JOIN categories c
ON p.category_id = c.id_category
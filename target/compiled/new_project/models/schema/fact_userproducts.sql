 -- this is make dbt sure that is table not view

WITH users AS (
    SELECT * FROM "dev"."main"."userdim"
),
products AS (
    SELECT * FROM "dev"."main"."productsdim"
),
categories AS(
    SELECT * FROM "dev"."main"."categorydim"
)
SELECT * 
FROM products p
CROSS JOIN users
INNER JOIN categories c
ON p.category_id = c.id_category
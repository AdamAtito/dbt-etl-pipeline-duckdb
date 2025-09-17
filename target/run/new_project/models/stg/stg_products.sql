
  
  create view "dev"."main"."stg_products__dbt_tmp" as (
    WITH raw_products AS (
    SELECT * FROM "dev"."main"."products"
)
SELECT CAST(product_id AS INTEGER) AS product_id, product_title, product_price, category_id
FROM raw_products
  );

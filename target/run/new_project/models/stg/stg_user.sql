
  
  create view "dev"."main"."stg_user__dbt_tmp" as (
    WITH raw_users AS (
    SELECT * FROM "dev"."main"."users"
)
SELECT CAST(product_id AS INTEGER) AS product_id, product_title, product_price, category_id
FROM raw_users
  );

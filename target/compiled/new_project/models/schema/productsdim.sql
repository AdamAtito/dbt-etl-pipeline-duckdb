WITH productsdim AS (
    SELECT * FROM "dev"."main"."stg_products"
)
SELECT product_id, product_title, product_price, category_id
FROM productsdim
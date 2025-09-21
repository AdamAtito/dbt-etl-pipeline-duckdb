WITH productsdim AS (
    SELECT * FROM {{ref('stg_products')}}
)
SELECT product_id, product_price, category_id
FROM productsdim
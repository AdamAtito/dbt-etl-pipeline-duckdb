WITH raw_products AS (
    SELECT * FROM {{ source('raw', 'products') }}
)
SELECT CAST(product_id AS INTEGER) AS product_id, product_title, product_price, category_id
FROM raw_products

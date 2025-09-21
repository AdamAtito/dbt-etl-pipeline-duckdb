WITH categorydim AS (
    SELECT * FROM {{ref('stg_category')}}
)
SELECT id_category, createdAt AS CategoryCreatedAt FROM categorydim
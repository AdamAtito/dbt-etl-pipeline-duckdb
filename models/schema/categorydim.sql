WITH categorydim AS (
    SELECT * FROM {{ref('stg_category')}}
)
SELECT id_category, name_of_category, createdAt AS CategoryCreatedAt FROM categorydim
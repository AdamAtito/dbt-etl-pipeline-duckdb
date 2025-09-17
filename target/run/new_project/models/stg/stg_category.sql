
  
  create view "dev"."main"."stg_category__dbt_tmp" as (
    WITH raw_catogries AS (
    SELECT * FROM "dev"."main"."category"
)
SELECT CAST(id_category AS INTEGER) AS id_category, CAST(name_of_category AS VARCHAR(500)) AS name_of_category, 
CAST(createdAt AS DATETIME) AS createdAt, CAST(updatedAt AS DATETIME) AS updatedAt
FROM raw_catogries
  );

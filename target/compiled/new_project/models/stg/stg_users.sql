WITH raw_users AS (
    SELECT * FROM "dev"."main"."users"
)
SELECT CAST(id_user AS INTEGER) AS id_user, CAST(name_user AS VARCHAR(500)) AS name_user, CAST(email AS VARCHAR(500)) AS email,
CAST(password AS VARCHAR(500)) AS password, CAST(role AS VARCHAR(500)) AS role, CAST(created_at AS DATETIME) AS createdAt
FROM raw_users
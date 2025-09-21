WITH userdim AS (
    SELECT * FROM {{ ref('stg_users') }}
)

SELECT id_user FROM userdim

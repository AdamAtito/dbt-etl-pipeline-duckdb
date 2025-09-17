WITH userdim AS (
    SELECT * FROM {{ ref('stg_users') }}
)

SELECT id_user , name_user, email, role FROM userdim

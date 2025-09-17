WITH userdim AS (
    SELECT * FROM "dev"."main"."stg_users"
)

SELECT id_user , name_user, email, role FROM userdim
SELECT
    grantee,
    table_name,
    privilege_type
FROM information_schema.role_table_grants
WHERE grantee IN ('app_read', 'app_write')
ORDER BY grantee, table_name;
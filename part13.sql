SELECT
    tbl,
    op,
    old_row,
    new_row,
    changed_by,
    at
FROM audit_log
ORDER BY id;
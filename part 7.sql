CREATE FUNCTION audit() 
RETURNS TRIGGER 
AS $$
BEGIN
    INSERT INTO audit_log (
        tbl,
        op,
        old_row,
        new_row
    )
    VALUES (
        TG_TABLE_NAME,
        TG_OP,
        to_jsonb(OLD),
        to_jsonb(NEW)
    );

    RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;
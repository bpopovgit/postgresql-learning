CREATE OR REPLACE FUNCTION fn_full_name(varchar, varchar)
RETURNS varchar AS
$$

    BEGIN
        RETURN concat($1, ' ', $2);
    END;

$$
LANGUAGE plpgsql
;

SELECT * FROM fn_full_name('First', 'Last')
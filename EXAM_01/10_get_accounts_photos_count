CREATE OR REPLACE FUNCTION udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INTEGER AS
$$
DECLARE
    photos_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO photos_count
    FROM photos p
    JOIN accounts a ON p.id= a.id
    WHERE a.username = account_username;

    RETURN photos_count;
END;
$$
LANGUAGE plpgsql;


SELECT udf_accounts_photos_count('ssantryd') AS photos_count;
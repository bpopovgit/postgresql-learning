CREATE OR REPLACE PROCEDURE udp_modify_account(address_street VARCHAR(30), address_town VARCHAR(30))
AS 
$$
BEGIN
    UPDATE accounts
    SET job_title = '(Remote) ' || job_title
    WHERE id = (
        SELECT
			a.id
        FROM
			accounts a
        JOIN
			addresses ad
		ON
			a.id = ad.account_id
        WHERE ad.street = address_street AND ad.town = address_town
        LIMIT 1
    );
END;
$$
LANGUAGE plpgsql;

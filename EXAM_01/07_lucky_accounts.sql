SELECT
	CONCAT(ap.account_id, ' ', a.username) AS id_username,
    a.email
FROM accounts_photos AS ap
JOIN accounts AS a
ON ap.account_id = a.id
WHERE account_id = photo_id
ORDER BY id_username ASC;
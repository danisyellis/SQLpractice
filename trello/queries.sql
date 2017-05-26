INSERT INTO users ("username", "password") VALUES ("dani", "password1");
UPDATE users SET password="password2" WHERE username = "dani";
DELETE FROM users WHERE id=3;

SELECT content FROM cards_in_column WHERE column_id = 3;
SELECT content FROM cards_in_column WHERE column_id = 1 LIMIT 1;

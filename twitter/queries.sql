INSERT INTO tweets ("user_id", "content") VALUES (20, "My tweet is less than 140 characters, yay!");
UPDATE tweets SET content="I hated that last tweet" WHERE id = 100;
DELETE FROM users WHERE user_name = "stupid name";

SELECT content FROM tweets WHERE user_id = 3;
SELECT content FROM tweets WHERE user_id = 1 LIMIT 1;

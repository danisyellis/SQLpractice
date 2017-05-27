CREATE TABLE bossggle_scores (id SERIAL PRIMARY KEY, name TEXT, score INTEGER);

INSERT INTO bossggle_scores (name, score)
    VALUES ('Dani Gee', 100);
INSERT INTO bossggle_scores (name, score)
    VALUES ('Steve WroteCode', 200);
INSERT INTO bossggle_scores (name, score)
    VALUES ('Lion-o', 150);
INSERT INTO bossggle_scores (name, score)
    VALUES ('Cheetara', 180);

UPDATE bossggle_scores SET name='Steve McDonald' WHERE  name = 'Steve WroteCode';

DELETE FROM bossggle_scores WHERE name = 'Lion-o';

CREATE TABLE artStore (id INTEGER PRIMARY KEY, itemName TEXT, category TEXT, quantity INTEGER,  price INTEGER
);

INSERT INTO artStore VALUES (1, "paintbrush", "painting", 20, 3);
INSERT INTO artStore VALUES (2, "red paint", "painting", 7, 5);
INSERT INTO  artStore VALUES(3, "purple paint", "painting", 6, 5);
INSERT INTO artStore VALUES (4, "orange paint", "painting", 5, 5);
INSERT INTO artStore VALUES(5, "stickers", "misc", 100, 3);
INSERT INTO artStore VALUES (6, "construction paper", "paper", 50, 3);
INSERT INTO artStore VALUES(7, "marker set", "paper", 10, 4);
INSERT INTO artStore VALUES (8, "scissors", "paper", 5, 4);
INSERT INTO artStore VALUES(9, "canvas", "painting", 15, 12);
INSERT INTO artStore VALUES(10, "clay", "pottery", 7, 15);
INSERT INTO  artStore VALUES (11, "potter's wheel", "pottery", 2, 300);
INSERT INTO artStore VALUES(12, "sculpting tool", "pottery", 5, 9);
INSERT INTO artStore VALUES(13, "mosaic stones", "misc", 3, 22);
INSERT INTO artStore VALUES(14, "charcoals", "paper", 5, 14);
INSERT INTO artStore VALUES(15, "blue paint", "painting", 10, 5);

SELECT itemName, price FROM artStore ORDER BY price;
SELECT category, SUM(quantity) FROM artStore GROUP BY category;

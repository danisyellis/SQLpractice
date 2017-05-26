CREATE TABLE tableName (id INTEGER PRIMARY KEY AUTOINCREMENT, anotherProp TEXT or INTEGER etc);

INSERT INTO tableName VALUES (1, “bananas”, 4);
different way to do this:
 INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);

SELECT propertyName(or *) FROM tableName WHERE column name something like aisle>5  ORDER BY propertyName
	Aggregate function  SELECT SUM(columnName) FROM tableName      there are other aggregate functions too
		MAX – what's the largest number
		MIN
		AVG - average
		can give the new column that's aggregated a different name by using AS ex. AS column_name
	GROUP BY goes near the end of a query
		HAVING total_calories > 150    (after the group by- it's like WHERE but for the group)
			HAVING is after GROUP BY
		example SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle; gives me the aisle number and sum of quantity for each aisle    be sure to SELECT by what your GROUPING BY so that the it's the correct label
can use AND and OR after WHERE     ex. SELECT * FROM books WHERE author = “Dahl” OR author = “yay”
use IN to check if many things are there  ex. SELECT type FROM exercises_logs WHERE type IN (“biking”, “hiking”, “etc.”);
	can also put another SQL query after the in, instead of listing all the things
LIKE  ex. WHERE reason LIKE “%cardiovascular%”
COUNT

SELECT author FROM books GROUP BY author HAVING SUM(words) > 1000000;   gives me the name of the author who's written more than 1 million words in total
SELECT author,SUM(words) AS total_words FROM books GROUP BY author HAVING SUM(words) > 1000000;
	same as above, but adds a column called total_words that shows the total word count

SELECT COUNT(*),
	CASE
		WHEN heart_rate > 190 THEN “above max”
		WHEN heart_rate < 100 THEN “something”
		ELSE “below target”
	END as “hr_zone”
FROM exercise_logs GROUP BY hr_zone



Cross Join
SELECT * FROM table1, table2    – creates a whole bunch of rows because each row gets all the rows from the other tables
	easiest join, but also least useful
Implicit Inner Join (don't do this) use an Explicit
SELECT* FROM table1, table2
	WHERE table1.one_id = table2.id;
Explicit Inner Join
SELECT*FROM table1
	JOIN table2
	ON table1.one_id = table2.id
	WHERE property > 90;
Outer Join
a LEFT OUTER JOIN will allow you to keep all rows from the table on the left (after the FROM) even if it doesn't match anything in the other table. It just fills that part in with NULL

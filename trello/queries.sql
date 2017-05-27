INSERT INTO users ("username", "password") VALUES ("dani", "password1");
UPDATE users SET password="password2" WHERE username = "dani";
DELETE FROM users WHERE id=3;

order by, join
SELECT content FROM cards_in_column WHERE column_id = 3;
SELECT content FROM cards_in_column WHERE column_id = 1 LIMIT 1;


--grab content of all cards in a specific board and order by column id
SELECT content FROM cards_in_column
  JOIN columns_in_board
  ON cards_in_column.column_id = columns_in_board.id
  WHERE columns_in_board.board_id = 1
  ORDER BY column_id;
  --not totally sure the order by will give me all of them i

--grab name of board that card is in
  --card has a column_id, column_id has a board_id
SELECT board_name FROM boards

--get the cards in that column- order them by column?
SELECT content FROM cards_in_column ORDER BY column_id;


--how would I use the join table to order it by playlist_id?
SELECT title FROM playlists WHERE name LIKE "hamilton";
SELECT title FROM albums WHERE artist_id = 1 AND year >2000;
SELECT name FROM artists GROUP BY name HAVING genre = "folk";
SELECT name FROM artists WHERE genre IN ("rock", "hip-hop", "classical");
SELECT name FROM artists
  JOIN albums
  ON artists.id = albums.artist_id;

CREATE TABLE "artists" (
"id"  SERIAL ,
"name" TEXT ,
"genre" TEXT ,
PRIMARY KEY ("id")
);

CREATE TABLE "albums" (
"id"  SERIAL ,
"artist_id" INTEGER ,
"title" TEXT ,
"year" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "songs" (
"id"  SERIAL ,
"title" TEXT ,
"album_id" INTEGER ,
"length" INTEGER ,
"track_no" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "Playlists" (
"id"  SERIAL ,
"name" TEXT ,
PRIMARY KEY ("id")
);

CREATE TABLE "playlist_songs" (
"song_id" INTEGER NOT NULL ,
"playlist_id" INTEGER NOT NULL 
);

ALTER TABLE "playlist_songs" ADD FOREIGN KEY ("song_id") REFERENCES "songs" ("id");
ALTER TABLE "playlist_songs" ADD FOREIGN KEY ("playlist_id") REFERENCES "Playlists" ("id");

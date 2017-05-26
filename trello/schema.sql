CREATE TABLE "boards" (
"id"  SERIAL ,
"board_name" TEXT ,
PRIMARY KEY ("id")
);

CREATE TABLE "users" (
"id"  SERIAL ,
"username" TEXT ,
"password" VARCHAR ,
PRIMARY KEY ("id")
);

CREATE TABLE "users_boards" (
"user_id" INTEGER NOT NULL ,
"board_id" INTEGER ,
);

CREATE TABLE "orgs" (
"id"  SERIAL ,
"org_name" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "org_boards" (
"org_id" INTEGER ,
"board_id" INTEGER ,
);

CREATE TABLE "org_users" (
"org_id" INTEGER ,
"user_id" INTEGER ,
);

CREATE TABLE "columns_in_board" (
"id"  SERIAL ,
"title" VARCHAR ,
"board_id" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "cards_in_column" (
"id"  SERIAL ,
"content" VARCHAR ,
"author" INTEGER ,
"column_id" INTEGER ,
PRIMARY KEY ("id")
);

ALTER TABLE "users_boards" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "users_boards" ADD FOREIGN KEY ("board_id") REFERENCES "boards" ("id");
ALTER TABLE "org_boards" ADD FOREIGN KEY ("org_id") REFERENCES "orgs" ("id");
ALTER TABLE "org_boards" ADD FOREIGN KEY ("board_id") REFERENCES "boards" ("id");
ALTER TABLE "org_users" ADD FOREIGN KEY ("org_id") REFERENCES "orgs" ("id");
ALTER TABLE "org_users" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "columns_in_board" ADD FOREIGN KEY ("board_id") REFERENCES "boards" ("id");
ALTER TABLE "cards_in_column" ADD FOREIGN KEY ("author") REFERENCES "users" ("id");
ALTER TABLE "cards_in_column" ADD FOREIGN KEY ("column_id") REFERENCES "columns_in_board" ("id");

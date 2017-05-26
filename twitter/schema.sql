CREATE TABLE "user" (
"id"  SERIAL ,
"user_name" VARCHAR ,
"about" VARCHAR ,
"picture" BIT ,
PRIMARY KEY ("id")
);

CREATE TABLE "tweets" (
"id"  SERIAL ,
"user_id" INTEGER ,
"content" VARCHAR ,
"fave_id" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "faves" (
"id"  SERIAL ,
"favoriter_user_id" INTEGER ,
"author_user_id" INTEGER ,
"tweet_id" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "retweets" (
"id"  SERIAL ,
"retweeter_id" INTEGER ,
"author_user_id" INTEGER ,
"tweet_id" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "follows" (
"follower_user_id" INTEGER ,
"followed_user_id" INTEGER ,
);

ALTER TABLE "tweets" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");
ALTER TABLE "faves" ADD FOREIGN KEY ("favoriter_user_id") REFERENCES "user" ("id");
ALTER TABLE "faves" ADD FOREIGN KEY ("author_user_id") REFERENCES "user" ("id");
ALTER TABLE "faves" ADD FOREIGN KEY ("tweet_id") REFERENCES "tweets" ("id");
ALTER TABLE "retweets" ADD FOREIGN KEY ("retweeter_id") REFERENCES "user" ("id");
ALTER TABLE "retweets" ADD FOREIGN KEY ("author_user_id") REFERENCES "user" ("id");
ALTER TABLE "retweets" ADD FOREIGN KEY ("tweet_id") REFERENCES "tweets" ("id");
ALTER TABLE "follows" ADD FOREIGN KEY ("follower_user_id") REFERENCES "user" ("id");
ALTER TABLE "follows" ADD FOREIGN KEY ("followed_user_id") REFERENCES "user" ("id");

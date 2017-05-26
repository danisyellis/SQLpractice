CREATE TABLE "words" (
"id"  SERIAL ,
"word" TEXT ,
"score" INTEGER DEFAULT 0 ,
"correct?" BOOLEAN ,
PRIMARY KEY ("id")
);

CREATE TABLE "bikes" (
"id"  SERIAL ,
"name" VARCHAR ,
"price" DECIMAL ,
"frame_id" INTEGER ,
"rings_front" INTEGER ,
"rings_back" INTEGER ,
"brakes_front" BOOLEAN ,
"brakes_back" BOOLEAN ,
PRIMARY KEY ("id")
);

CREATE TABLE "frames" (
"id"  SERIAL ,
"color" VARCHAR ,
"size" INTEGER ,
"style" VARCHAR ,
PRIMARY KEY ("id")
);

CREATE TABLE "tires" (
"id"  SERIAL ,
"diameter" INTEGER ,
"type" VARCHAR ,
PRIMARY KEY ("id")
);

CREATE TABLE "bike_frame" (
"id"  SERIAL ,
"bike_id" INTEGER ,
"frame_id" INTEGER ,
PRIMARY KEY ("id")
);

CREATE TABLE "bike_tires" (
"id"  SERIAL ,
"bike_id" INTEGER ,
"front_tire_id" INTEGER ,
"back_tire_id" INTEGER ,
PRIMARY KEY ("id")
);

ALTER TABLE "bikes" ADD FOREIGN KEY ("frame_id") REFERENCES "frames" ("id");
ALTER TABLE "bike_frame" ADD FOREIGN KEY ("bike_id") REFERENCES "bikes" ("id");
ALTER TABLE "bike_frame" ADD FOREIGN KEY ("frame_id") REFERENCES "frames" ("id");
ALTER TABLE "bike_tires" ADD FOREIGN KEY ("bike_id") REFERENCES "bikes" ("id");
ALTER TABLE "bike_tires" ADD FOREIGN KEY ("front_tire_id") REFERENCES "tires" ("id");
ALTER TABLE "bike_tires" ADD FOREIGN KEY ("back_tire_id") REFERENCES "tires" ("id");

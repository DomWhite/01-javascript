CREATE TABLE dishes (
	id SERIAL4 PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	image_url VARCHAR(100)
);

INSERT INTO dishes (name, image_url)
VALUES ('Burger', 'http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg');



/*
-- CONSOLE TO LINK A DATABASE USING PG
[1] pry(main)> require 'pg'
=> true
[2] pry(main)> PG
=> PG
[3] pry(main)> PG.connect
=> #<PG::Connection:0x007fad0bbbe260>
[4] pry(main)> PG.connect :dbname => 'goodfoodhunting'
=> #<PG::Connection:0x007fad0bb7dd00>
[5] pry(main)> db = PG.connect :dbname => 'goodfoodhunting'
=> #<PG::Connection:0x007fad0bb1c028>
[6] pry(main)> rows = db.exec('select * from dishes')
=> #<PG::Result:0x007fad0babc920 status=PGRES_TUPLES_OK ntuples=1 nfields=3 cmd_tuples=1>
[7] pry(main)> rows[0]
=> {"id"=>"1",
 "name"=>"Burger",
 "image_url"=>
  "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg"}

*/
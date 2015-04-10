[1] pry(main)> Dish
=> Dish (call 'Dish.connection' to establish a connection)

[2] pry(main)> Dish.count
=> 2

[3] pry(main)> Dish.methods.count
=> 585

[4] pry(main)> Dish.all
=> [#<Dish:0x007f9123c24bb8
  id: 1,
  name: "Shitty burger",
  image_url:
   "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">,
 #<Dish:0x007f9123c24a50
  id: 4,
  name: "Pizza",
  image_url: "http://i.imgur.com/HoDFLEj.jpg">]

[5] pry(main)> Dish.all.to_sql
=> "SELECT \"dishes\".* FROM \"dishes\""

[6] pry(main)> Dish.create name: 'cake pudding'
=> #<Dish:0x007f9124b2b6e8 id: 5, name: "cake pudding", image_url: nil>

[7] pry(main)> Dish.first
=> #<Dish:0x007f9123c84950
 id: 1,
 name: "Shitty burger",
 image_url:
  "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">

[8] pry(main)> dish = Dish.first
=> #<Dish:0x007f9124ebb1f0
 id: 1,
 name: "Shitty burger",
 image_url:
  "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">

[9] pry(main)> dish = Dish.name
=> "Dish"

[10] pry(main)> dish = Dish.first
=> #<Dish:0x007f9123c9c050
 id: 1,
 name: "Shitty burger",
 image_url:
  "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">

[11] pry(main)> dish.name
=> "Shitty burger"

[12] pry(main)> list = Dish.all
=> [#<Dish:0x007f9123cbd3b8
  id: 1,
  name: "Shitty burger",
  image_url:
   "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">,
 #<Dish:0x007f9123cbd250
  id: 4,
  name: "Pizza",
  image_url: "http://i.imgur.com/HoDFLEj.jpg">,
 #<Dish:0x007f9123cbd0e8 id: 5, name: "cake pudding", image_url: nil>]

[13] pry(main)> list
=> [#<Dish:0x007f9123cbd3b8
  id: 1,
  name: "Shitty burger",
  image_url:
   "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">,
 #<Dish:0x007f9123cbd250
  id: 4,
  name: "Pizza",
  image_url: "http://i.imgur.com/HoDFLEj.jpg">,
 #<Dish:0x007f9123cbd0e8 id: 5, name: "cake pudding", image_url: nil>]

[14] pry(main)> list[0]
=> #<Dish:0x007f9123cbd3b8
 id: 1,
 name: "Shitty burger",
 image_url:
  "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">

[17] pry(main)> Dish.all
=> [#<Dish:0x007f91249547c0
  id: 1,
  name: "Shitty burger",
  image_url:
   "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">,
 #<Dish:0x007f91249540b8
  id: 4,
  name: "Pizza",
  image_url: "http://i.imgur.com/HoDFLEj.jpg">,
 #<Dish:0x007f9123dbfec8 id: 5, name: "cake pudding", image_url: nil>]

[18] pry(main)> Dish.find 4
=> #<Dish:0x007f9123e0eb18
 id: 4,
 name: "Pizza",
 image_url: "http://i.imgur.com/HoDFLEj.jpg">

[19] pry(main)> Dish.where name: "cake pudding"
=> [#<Dish:0x007f91248cf660 id: 5, name: "cake pudding", image_url: nil>]
[20] pry(main)> Dish.where :name => "cake pudding"
=> [#<Dish:0x007f9124f02118 id: 5, name: "cake pudding", image_url: nil>]
[21] pry(main)> Dish.where(name: "cake pudding")
=> [#<Dish:0x007f9123dc7df8 id: 5, name: "cake pudding", image_url: nil>]

[22] pry(main)> Dish.where(name: "cake pudding").count
=> 1


## CREATE OR NEW
[23] pry(main)> Dish.create(name: 'birthday cake')
=> #<Dish:0x007f912587d030 id: 6, name: "birthday cake", image_url: nil>
[24] pry(main)> Dish.count
=> 4

## UPDATE EXISTING RECORD
[26] pry(main)> dish = Dish.find(6)
=> #<Dish:0x007f9125844b68 id: 6, name: "birthday cake", image_url: nil>
[27] pry(main)> dish.name
=> "birthday cake"
[28] pry(main)> dish.name = 'hello world'
=> "hello world"
[29] pry(main)> dish.save
=> true
[30] pry(main)> Dish.all
=> [#<Dish:0x007f9123c2cf48
  id: 1,
  name: "Shitty burger",
  image_url: "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">,
 #<Dish:0x007f9123c2cde0 id: 4, name: "Pizza", image_url: "http://i.imgur.com/HoDFLEj.jpg">,
 #<Dish:0x007f9123c2cc28 id: 5, name: "cake pudding", image_url: nil>,
 #<Dish:0x007f9123c2cac0 id: 6, name: "hello world", image_url: nil>]

 ## DELETE OR DESTROY
[31] pry(main)> unwanted_dish = Dish.find(6)
=> #<Dish:0x007f9124dfa5e0 id: 6, name: "hello world", image_url: nil>
[32] pry(main)> unwanted_dish.destroy
=> #<Dish:0x007f9124dfa5e0 id: 6, name: "hello world", image_url: nil>
[33] pry(main)> Dish.all
=> [#<Dish:0x007f9123b150d8
  id: 1,
  name: "Shitty burger",
  image_url: "http://imworld.aufeminin.com/story/20130223/hamburger-2643_w1000.jpg">,
 #<Dish:0x007f9123b14f70 id: 4, name: "Pizza", image_url: "http://i.imgur.com/HoDFLEj.jpg">,
 #<Dish:0x007f9123b14de0 id: 5, name: "cake pudding", image_url: nil>]


Dish.create name: 'cake pudding'
Dish.create name: 'Birthday cake'
Dish.find 6
Dish.all
Dish.where name: "cake pudding"
Dish.where name => "cake pudding"
Dish.where(name => "cake pudding")
Dish.where(name => "cake pudding").count

dish = Dish.find(7)
dish.name
dish.name = "hello world"
dish.save

unwanted_dish = Dish.find(7)
unwanted_dish.delete
Dish.all
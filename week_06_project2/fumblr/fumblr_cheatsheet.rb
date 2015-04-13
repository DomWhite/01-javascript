[1] pry(main)> Post.create title: 'wdi2 wants more homework'
=> #<Post:0x007fbbdc8e5a40 id: 1, title: "wdi2 wants more homework", body: nil>
[3] pry(main)> Post.create title: 'peeps complain project 2 too easy'
=> #<Post:0x007fbbdc904b70
 id: 2,
 title: "peeps complain project 2 too easy",
 body: nil>
[4] pry(main)> Post.count
=> 2
[5] pry(main)> Post.all
=> [#<Post:0x007fbbdc38dd90 id: 1, title: "wdi2 wants more homework", body: nil>,
 #<Post:0x007fbbdc38dc28
  id: 2,
  title: "peeps complain project 2 too easy",
  body: nil>]




   pry(main)> Post.all
=> [#<Post:0x007fd6ab280030
  id: 1,
  title: "wdi2 wants more homework",
  body: nil,
  category: nil>,
 #<Post:0x007fd6ab313e70
  id: 2,
  title: "peeps complain project 2 too easy",
  body: nil,
  category: nil>,
 #<Post:0x007fd6ab313d08
  id: 3,
  title: "No more homework!",
  body: nil,
  category: nil>,
 #<Post:0x007fd6ab313ba0
  id: 4,
  title: "Validation check",
  body: nil,
  category: nil>,
 #<Post:0x007fd6ab313a38
  id: 8,
  title: "magic moment",
[3] pry(main)> p = Post.find(6)
ActiveRecord::RecordNotFound: Couldn't find Post with 'id'=6
from /Users/dominicwhite/.rvm/gems/ruby-2.2.1/gems/activerecord-4.2.0/lib/active_record/core.rb:154:in `find'
[4] pry(main)> p = Post.find(8)
=> #<Post:0x007fd6ad0670a8 id: 8, title: "magic moment", body: nil, category: nil>
[5] pry(main)> p
=> #<Post:0x007fd6ad0670a8 id: 8, title: "magic moment", body: nil, category: nil>
[6] pry(main)> p.category = 'javascript'
=> "javascript"
[7] pry(main)> p = Post.find(1)
=> #<Post:0x007fd6ab11ad08
 id: 1,
 title: "wdi2 wants more homework",
 body: nil,
 category: nil>
[8] pry(main)> p.category = 'javascript'
=> "javascript"
[9] pry(main)> Post.all
=> [#<Post:0x007fd6abf17b68
  id: 1,
  title: "wdi2 wants more homework",
  body: nil,
  category: nil>,
 #<Post:0x007fd6abf17a00
  id: 2,
  title: "peeps complain project 2 too easy",
  body: nil,
  category: nil>,
 #<Post:0x007fd6abf17898
  id: 3,
  title: "No more homework!",
  body: nil,
  category: nil>,
 #<Post:0x007fd6abf17730
  id: 4,
  title: "Validation check",
  body: nil,
  category: nil>,
 #<Post:0x007fd6abf175c8
  id: 8,
  title: "magic moment",
[10] pry(main)> p = Post.find(3)
=> #<Post:0x007fd6ab3b8600
 id: 3,
 title: "No more homework!",
 body: nil,
 category: nil>
[11] pry(main)> p.category = 'ruby'
=> "ruby"
[12] pry(main)> p.save
=> true
[13] pry(main)> p = Post.find(1)
=> #<Post:0x007fd6ab3e3b48
 id: 1,
 title: "wdi2 wants more homework",
 body: nil,
 category: nil>
[14] pry(main)> p.category = 'javascript'
=> "javascript"
[15] pry(main)> p.save
=> true
[16] pry(main)> p = Post.find(8)
=> #<Post:0x007fd6ab463ed8 id: 8, title: "magic moment", body: nil, category: nil>
[17] pry(main)> p.category = 'javascript'
=> "javascript"
[18] pry(main)> p.save
=> true
[19] pry(main)> Post.all
=> [#<Post:0x007fd6ab491b58
  id: 2,
  title: "peeps complain project 2 too easy",
  body: nil,
  category: nil>,
 #<Post:0x007fd6ab4919f0
  id: 4,
  title: "Validation check",
  body: nil,
  category: nil>,
 #<Post:0x007fd6ab491888 id: 9, title: "test", body: nil, category: nil>,
 #<Post:0x007fd6ab491720
  id: 3,
  title: "No more homework!",
  body: nil,
  category: "ruby">,
 #<Post:0x007fd6ab4915b8
  id: 1,
  title: "wdi2 wants more homework",
  body: nil,
  category: "javascript">,
 #<Post:0x007fd6ab491450
  id: 8,








[1] pry(main)> Post.find(1).category_id
=> nil
[2] pry(main)> Post.find(1).category_id = 2
=> 2
[3] pry(main)> Post.find(1).category_id
=> nil
[4] pry(main)> p = Post.find(1).category_id
=> nil
[5] pry(main)> p
=> nil
[6] pry(main)> p = Post.find(1)
=> #<Post:0x007fb32b854f18
 id: 1,
 title: "wdi2 wants more homework",
 body: nil,
 category_id: nil>
[7] pry(main)> p.category_id
=> nil
[8] pry(main)> p.category_id = 2
=> 2
[9] pry(main)> p.save
=> true
[10] pry(main)> p.category_id
=> 2
[11] pry(main)> p = Post.find(2)
=> #<Post:0x007fb32accc290
 id: 2,
 title: "peeps complain project 2 too easy",
 body: nil,
 category_id: nil>
[12] pry(main)> p.category_id = 1
=> 1
[13] pry(main)> p.save
=> true
[14] pry(main)> p = Post.find(3)
=> #<Post:0x007fb329951530
 id: 3,
 title: "No more homework!",
 body: nil,
 category_id: nil>
[15] pry(main)> p.category_id = 1
=> 1
[16] pry(main)> p.save
=> true
[17] pry(main)> p = Post.find(4)
=> #<Post:0x007fb32ad65d78
 id: 4,
 title: "Validation check",
 body: nil,
 category_id: nil>
[18] pry(main)> p.category_id = 2
=> 2
[19] pry(main)> p.save
=> true
[20] pry(main)> p = Post.find(9)
=> #<Post:0x007fb32addf790 id: 9, title: "test", body: nil, category_id: nil>
[21] pry(main)> p.category_id = 2
=> 2
[22] pry(main)> p.save
=> true

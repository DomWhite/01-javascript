# require './example' only loads once
# load 'example.rb' will load on every entry into pry

# convention is one class one file so DON'T follow this:

class User

attr_accessor :firstname, :lastname

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def full_name
    "#{firstname} #{lastname}" #no instance variable needed because of attr_accessor
  end

  def role
    "user"
  end

end

class Admin < User

attr_accessor :firstname, :lastname

  def role
    "admin"
  end

  ### methods specific to Admin
end


class Speaker < User

  def role
    "speaker"
  end

  ### methods specific to Speaker
end


=begin
[1] pry(main)> require './example'
=> true
[2] pry(main)> u = User.new('cody', 'perry')
=> #<User:0x007fec33862ca8 @firstname="cody", @lastname="perry">
[3] pry(main)> u.full_name
NameError: undefined local variable or method `fullname' for #<User:0x007fec33862ca8 @firstname="cody", @lastname="perry">
from /Users/dominicwhite/wdi/class_notes/10_nodejs/inheritance/example.rb:14:in `full_name'
[4] pry(main)> load 'example.rb'
=> true
[5] pry(main)> user = User.new('cody', 'perry')
=> #<User:0x007fec3233bc58 @firstname="cody", @lastname="perry">
[6] pry(main)> user.class
=> User
[7] pry(main)> a1 = Admin.new('perry', 'cody')
=> #<Admin:0x007fec3257bd10 @firstname="perry", @lastname="cody">
[8] pry(main)> a1.full_name
=> "perry cody"
[9] pry(main)> a1.class
=> Admin
[10] pry(main)> s1 = Speaker.new('perry', 'cody')
=> #<Speaker:0x007fec32533790 @firstname="perry", @lastname="cody">
[11] pry(main)> s1.role
=> "speaker"
=end

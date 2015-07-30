# Optional block

def test
  puts "header"
  yield if block_given?
  puts "footer"
end


# Passing in a block

def test(&callback) #this takes a block |a method that can be passed around| 
  puts "header"
  callback.call 
  puts "footer"
end

# making a proc

my_proc = Proc.new{ SuperMario.new.cook } #this is now an object

class SuperMario
  def cook
    # start_time = Time.now

    pizza_count = 500_000 #still considered 50000

    pizza_count.times do |index|
      "bake pizza for the #{index} time"
    end

    # finish_time = Time.now
    # puts "took: #{finish_time - start_time}"
  end
end

def benchmark.
  start_time = Time.now

  yield if block_given?

  finish_time = Time.now
  puts "took: #{finish_time - start_time}"
end

benchmark do
  my_proc.call
end 

require 'benchmark'

iterations = 100_000

Benchmark.bmbm(8) do |bm|

  bm.report('phil') do
    iterations.times do
      [1,2,3].dup.reverse
    end
  end

  bm.report('lui') do
    iterations.times do
      [1,2,3].dup.reverse!
    end
  end

end

show-source SuperMario.new.cook
#red ---> green ---> refactor (repeat)

require_relative 'sum'

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe Dim do

	it 'works' do
		skip
		@dim = Dim.new
		@dim.sum.must_equal 23
	end

	it 'work out sum of 3 under 10' do
		@dim = Dim.new([3])
		@dim.sum.must_equal 18

	end

	it 'work out sum of 5 up to and including 10' do
		@dim = Dim.new([5])
		@dim.sum.must_equal 15
	end

	it 'work out sum of 3 and 5 up to and including 10' do
		@dim = Dim.new([3,5])
		@dim.sum.must_equal 33
	end

	it 'work out sum of 3 even if 2 exact numbers' do
		@dim = Dim.new([3,3])
		@dim.sum.must_equal 18
	end

	it 'work out sum of 3 for numbers up to 30' do
		@dim = Dim.new([3], 29)
		@dim.sum.must_equal 135
	end

	# bonus

	it 'work out the sum of any number of numbers eg 3,4,5,6 up to 10' do
		@dim = Dim.new([3,4,5,6], 9)
		@dim.sum.must_equal 35
	end 

end
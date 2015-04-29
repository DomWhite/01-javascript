require 'minitest/autorun'
require 'minitest/reporters' #optional for pretty output

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new #optional

require_relative 'leap'

# spec style

describe LeapYear do
	#before block - setup for each test case
	before do
		@leap = LeapYear.new
	end

	it "returns true when leap year" do
		#commented out code is used for instances of classes
		#____________________________________		
		# test_year_instance = LeapYear.new 
		# #can only be called on an instance of a class
		# test_year_instance.leap_year?(2000).must_equal true
		LeapYear.leap_year?(2000).must_equal true
	end

	it "returns false when not leap year" do
		#commented out code is used for instances of classes
		#____________________________________
		# test_year_instance = LeapYear.new
		# test_year_instance.leap_year?(1997).must_equal false
		# #test_year_instance.leap_year?(1997).wont_equal true
		LeapYear.leap_year?(1997).must_equal false
	end

	it 'hello should return hi' do
		@leap.hello.must_equal 'hi'
	end


end


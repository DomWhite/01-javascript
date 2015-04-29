# def test (message, actual, expected)
# 	if actual == expected
# 		puts "winning #{message}"
# 	else
# 		puts "losing #{message}"
# 	end
# end

# test("leap year", leap_year?(2000), true)
# test "non leap year", leap_year?(2007), false
# test "year 1", leap_year?(1), false
# test "empty string", leap_year?(""), "you're an idiot"

require 'minitest/autorun'
require 'minitest/reporters' #optional for pretty output

require_relative 'leap'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new #optional

class LeapYearTest < Minitest::Test

	def test_leap_year
		assert_equal(true, leap_year?(2000)) #use "skip" to bypass method
	end

	def test_not_leap_year
		assert_equal false, leap_year?(1997)
	end

	def test_empty_string_as_input
		assert_equal "you're an idiot", leap_year?('')
	end

end
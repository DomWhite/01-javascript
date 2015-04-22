require 'minitest/autorun'
require 'minitest/reporters' #optional for pretty output

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'phone'
 
class PhoneTest < MiniTest::Test
 
  def test_cleans_number
    # skip
    phone_number = Phone.new("(123) 456-7890").number
    assert_equal "1234567890", phone_number # assert_equal is a minitest method
  end
 
  def test_cleans_number_with_dots
    # skip
    phone_number = Phone.new("123.456.7890").number
    assert_equal "1234567890", phone_number
  end
 
  def test_valid_when_11_digits_and_first_is_1
    # skip
    phone_number = Phone.new("11234567890").number
    assert_equal "1234567890", phone_number
  end
 
  def test_invalid_when_11_digits
    # skip
    phone_number = Phone.new("21234567890").number
    assert_equal "0000000000", phone_number
  end
 
  def test_invalid_when_9_digits
    # skip
    phone_number = Phone.new("123456789").number
    assert_equal "0000000000", phone_number
  end
 
  def test_area_code
    #skip
    phone_number = Phone.new("1234567890")
    assert_equal "123", phone_number.area_code
  end
 
  def test_pretty_print
    # skip
    phone_number = Phone.new("1234567890")
    assert_equal "(123) 456-7890", phone_number.to_s
  end
 
end
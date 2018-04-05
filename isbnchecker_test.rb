require "minitest/autorun"
require_relative "isbnchecker.rb"

class TestISBN < MiniTest::Test

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end
	def test_assert_that_ten_digit_isbn_is_valid
		assert_equal(true,CheckISBNTen("0306406152"))
	end
	def test_assert_that_thirteen_digit_isbn_is_valid
		assert_equal(true,CheckISBNThirteen("9783161484100"))
	end
end
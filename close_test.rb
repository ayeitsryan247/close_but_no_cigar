require "minitest/autorun"
require_relative "close.rb"

class TestCigar < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
    def test_if_function_has_string
    	assert_equal(Integer, cigar("", "").class)
    end
    def test_if_1_match_returns_1
    	assert_equal(1, cigar("1234", "1555"))
    end
	def test_if_1_match_returns_3
    	assert_equal(3, cigar("1235", "1245"))
    end
    def test_if_mytick_equals_winning_tick
    	assert_equal([4,2,2], cigarr(["1234", "1222", "1245"], "1234"))
    end
    def test_if_moretickets_equals_winningticket
    	assert_equal([4,3], moretickets(["1234", "1233"], "1234"))
    end

end
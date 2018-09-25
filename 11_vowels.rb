# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rbrequire 'test/unit'
require_relative '../04_vowels'

class LargestNumberTest < Test::Unit::TestCase
  def test_vowels
    assert_equal(["e","u","i","o","o"], vowels("The quick brown fox"))
    assert_equal(["e","o","o"], vowels("Hello World"))
  end
  def test_vowels_casing
    assert_equal(["A","e","E"], vowels("cAse tEst"))
  end
end

#

def count_vowels
  string.scan(/[aeiou]/i)
end
  # # count_vowels = ("You are a champion")
  # count_vowels = ["o", "a", "i", "e", "u"]
  #   puts count_vowels
 # Your code here
end

gem 'minitest', '~> 5.2'
require './lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class InsertionSortTest < Minitest::Test
  def test_insertion_works_with_letters
    skip 
    sorter = InsertionSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort (["d", "b", "a", "c"])
  end
  end


end

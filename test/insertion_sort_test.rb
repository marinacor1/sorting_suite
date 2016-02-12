gem 'minitest', '~> 5.2'
require './lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class InsertionSortTest < Minitest::Test

  def test_insertion_works_with_three_item_array
    sorter = InsertionSort.new
    assert_equal ([1, 2, 3]), sorter.sort([2, 3, 1])
  end

  def test_insertion_works_with_letters
    sorter = InsertionSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end


end

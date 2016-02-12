gem 'minitest', '~> 5.2'
require './lib/merge_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class MergeSortTest < Minitest::Test
  def test_merge_sort_sorts_in_ascending_order
    skip 
    sorter = MergeSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

end

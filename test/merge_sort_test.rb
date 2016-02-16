gem 'minitest', '~> 5.2'
require './lib/merge_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require 'benchmark'

class MergeSortTest < Minitest::Test
  def test_merge_sort_creates_instance
    sorter = MergeSort.new
    sorter.instance_of? MergeSort
  end

  def test_merge_sort_sorts_empty_array
    sorter = MergeSort.new
    assert_equal [], sorter.sort([])
  end

  def test_merge_sort_sorts_with_one_element
    sorter = MergeSort.new
    assert_equal [1], sorter.sort([1])
  end

  def test_merge_sort_works_with_10
    sorter = MergeSort.new
    assert_equal [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], sorter.sort([4, 2, 8, 6, 0, 5, 1, 7, 3, 9])
  end

  def test_merge_sort_sorts_in_ascending_order
    sorter = MergeSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_merge_sort_sorts_with_an_uneven_array
    sorter = MergeSort.new
    assert_equal ["a", "b", "c", "d", "e"], sorter.sort(["d", "b", "e", "a", "c"])
  end

  def test_merge_sort_returns_same_array_if_already_sorted
    sorter = MergeSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["a", "b", "c", "d"])
  end

  def test_merge_sort_sorts_with_doubles_though_eleminating_second
   sorter = MergeSort.new
   assert_equal [1, 3, 4, 5], sorter.sort([3, 3, 4, 5, 1])
  end

  def test_merge_sort_works_with_lowest_at_end
    sorter = MergeSort.new
    assert_equal [1,3,4,5], sorter.sort([3, 4, 5, 1])
  end

  def test_merge_sort_benchmark
    start = Time.now
    100.times do
      sorter = MergeSort.new
      assert_equal ["a", "b", "c", "d"], sorter.sort(["a", "b", "c", "d"])
    end
    puts "Time for Merge Sort: #{Time.now - start}s"
  end

end

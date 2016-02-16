gem 'minitest', '~> 5.2'
require './lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class InsertionSortTest < Minitest::Test
  def test_insert_instance_created
    sorter = InsertionSort.new
    assert sorter.instance_of? InsertionSort
  end

  def test_insertion_sort_can_sort_empty_array
    sorter = InsertionSort.new
    assert_equal [nil], sorter.sort([])
  end

  def test_insertion_sorts_one_element_array
    sorter = InsertionSort.new
    assert_equal ["a"], sorter.sort(["a"])
  end

  def test_insertion_sort_sorts_two_element_array
    sorter = InsertionSort.new
    assert_equal [1, 2], sorter.sort([2, 1])
  end

  def test_insertion_works_with_three_item_array
    sorter = InsertionSort.new
    assert_equal ([1, 2, 3]), sorter.sort([2, 3, 1])
  end

  def test_insertion_works_with_letters
    sorter = InsertionSort.new
    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_insertion_sort_benchmark
    start = Time.now
    100.times do
      sorter = MergeSort.new
      assert_equal ["a", "b", "c", "d"], sorter.sort(["a", "b", "c", "d"])
    end
    puts "Time for Insertion Sort: #{Time.now - start}s"
  end


end

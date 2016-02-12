gem 'minitest', '~> 5.2'
require './lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BubbleSortTest < Minitest::Test
  def test_bubble_instance_created
    sorter = BubbleSort.new
    assert sorter.instance_of? BubbleSort
  end

  def test_empty_array_returns_empty_array_in_sort
    sorter = BubbleSort.new
    assert_equal [], sorter.sort([])
  end

  def test_if_current_num_is_less_than_previous_than_values_swapped
    sorter = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort([1, 0, 2, 3, 4, 5])
  end

  def test_sort_works_with_2_swaps
    sorter = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort([1, 0, 2, 4, 3, 5])
  end

  def test_sort_works_with_multi_step_swaps
    sorter = BubbleSort.new
    assert_equal [0, 1, 3, 4, 5], sorter.sort([4, 3, 5, 0, 1])
  end

  def test_sort_works_regardless_of_number_of_swaps
    sorter = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort([5, 4, 3, 2, 1, 0])
  end

  def test_sort_works_with_long_array
    sorter = BubbleSort.new
    array = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    assert_equal array, sorter.sort([8, 7, 6, 5, 4, 3, 2, 1, 0])
  end

  def test_results_gives_accurate_information
    sorter = BubbleSort.new
    array = sorter.sort([1, 0, 2, 3, 4, 5])
    assert_equal "Final result : [0, 1, 2, 3, 4, 5] Swaps: 1", sorter.results(array)
  end

  def test_result_works_with_more_swaps
    sorter = BubbleSort.new
    array = sorter.sort([5, 4, 3, 2, 1, 0])
    assert_equal "Final result : [0, 1, 2, 3, 4, 5] Swaps: 15", sorter.results(array)
  end

  def test_initial_clean_sort_works
    sorter = BubbleSort.new
    assert_equal [0, 1, 2], sorter.sort([1, 0, 2])
  end

  def test_sort_works_with_two_swaps
    sorter = BubbleSort.new
    assert_equal [0, 1, 2, 3, 4, 5], sorter.sort([1, 0, 2, 4, 3, 5])
  end

  def test_sort_works_with_complex_swaps
    sorter = BubbleSort.new
    assert_equal [0, 1, 3, 4, 5], sorter.sort([4, 3, 5, 0, 1])
  end

  def test_bubble_sort_works_with_letters
    sorter = BubbleSort.new
    array = ["a", "b", "c", "d"]
    assert_equal array, sorter.sort(["d", "b", "a", "c"])
  end


end

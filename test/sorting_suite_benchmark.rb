gem 'minitest', '~> 5.2'
require './lib/merge_sort'
require './lib/insertion_sort'
require './lib/bubble_sort'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require 'benchmark'

class SortingSuiteTest < Minitest::Test
  def test_merge_sort_benchmark_in_suite
    start = Time.now
    100.times do
      sorter = MergeSort.new
      assert_equal ["a", "b", "c", "d"], sorter.sort(["a", "b", "c", "d"])
    end
    puts "Time for Merge Sort: #{Time.now - start}s"
  end

  def test_insertion_sort_benchmark_in_suite
    start = Time.now
    100.times do
      sorter = MergeSort.new
      assert_equal ["a", "b", "c", "d"], sorter.sort(["a", "b", "c", "d"])
    end
    puts "Time for Insertion Sort: #{Time.now - start}s"
  end

  def test_bubble_sort_benchmark_in_suite
    start = Time.now
    100.times do
      sorter = BubbleSort.new
      assert_equal ["a", "b", "c", "d"], sorter.sort(["a", "b", "c", "d"])
    end
    puts "Time for Bubble Sort: #{Time.now - start}s"
  end

end

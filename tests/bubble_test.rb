require 'minitest/autorun'
require 'minitest/emoji'
require './lib/BubbleSort'

class BubbleSortTests < Minitest::Test

  def test_there_is_a_sorting_suite_module
    assert SortingSuite
  end

  def test_there_is_a_bubble_sort_class
    assert SortingSuite::BubbleSort
  end

  def test_the_sort_returns_an_array
    result = SortingSuite::BubbleSort.new([]).sort
    assert_equal result, []
  end

  def test_the_sort_works_for_the_first_condition
    assert_equal SortingSuite::BubbleSort.new([3,2,1]).sort, [1,2,3]
  end

  def test_the_sort_works_for_the_second_condition
    assert_equal SortingSuite::BubbleSort.new([5,4,3,2,1]).sort, [1,2,3,4,5]
  end

  def test_it_can_handle_floats
    assert_equal SortingSuite::BubbleSort.new([8.782,3.3,12.987234]).sort, [3.3, 8.782,12.987234]
  end

end

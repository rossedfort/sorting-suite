require 'minitest/autorun'
require './lib/MergeSort'

class MergeSortTests < Minitest::Test

  def test_it_exists
    assert SortingSuite::MergeSort.new([5,3,1,4,2]).sort
  end

  def test_returns_original_array_if_its_less_than_or_equal_to_one
    sorted = SortingSuite::MergeSort.new([1]).sort
    assert_equal sorted, [1]
  end

  def test_it_works
    sorted = SortingSuite::MergeSort.new([5,3,1,4,2]).sort
    assert_equal sorted, [1,2,3,4,5]
  end

  def test_it_works_for_3_numbers
    sort = SortingSuite::MergeSort.new([2,3,1]).sort
    assert_equal sort, [1,2,3]
  end

  def test_it_works_for_3_numbers_in_different_orders
    sort = SortingSuite::MergeSort.new([6,2,10]).sort
    assert_equal sort, [2,6,10]
  end

  def test_it_works_for_5_numbers
    sort = SortingSuite::MergeSort.new([2,5,4,1,3]).sort
    assert_equal sort, [1,2,3,4,5]
  end

  def test_it_works_for_5_numbers_in_a_different_order
    sort = SortingSuite::MergeSort.new([4,2,3,1,5]).sort
    assert_equal sort, [1,2,3,4,5]
  end

  def test_it_works_for_floats
    sort = SortingSuite::MergeSort.new([17.2, 3.35, 9.71263]).sort
    assert_equal sort, [3.35, 9.71263, 17.2]
  end

end

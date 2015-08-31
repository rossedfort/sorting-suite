require 'minitest/autorun'
require 'minitest/emoji'
require './lib/InsertionSort'

class InsertionSortTests < Minitest::Test

  def test_there_are_two_arrays_on_initialize
    assert SortingSuite::InsertionSort.new([3,2,1])
  end

  def test_it_works
    sorted = assert SortingSuite::InsertionSort.new([3,2,1])
    assert = sorted, [1,2,3]
  end

  def test_it_works_for_3_numbers
    sort = SortingSuite::InsertionSort.new([3,2,1]).sort
    assert_equal sort, [1,2,3]
  end

  def test_it_works_for_3_numbers_in_different_orders
    sort = SortingSuite::InsertionSort.new([2,3,1]).sort
    assert_equal sort, [1,2,3]
  end

  def test_it_works_for_5_numbers
    sort = SortingSuite::InsertionSort.new([2,5,4,1,3]).sort
    assert_equal sort, [1,2,3,4,5]
  end

  def test_it_works_for_5_numbers_in_a_different_order
    sort = SortingSuite::InsertionSort.new([4,2,3,1,5]).sort
    assert_equal sort, [1,2,3,4,5]
  end

  def test_it_handles_floats
    sort = SortingSuite::InsertionSort.new([17.2, 3.35, 9.71263]).sort
    assert_equal sort, [3.35, 9.71263, 17.2]
  end

end

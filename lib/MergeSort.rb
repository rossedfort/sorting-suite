module SortingSuite

  class MergeSort

    def initialize(numbers)
      @numbers = numbers
    end
#takes in the array
    def sort(numbers = @numbers)
#
      return numbers if numbers.count <= 1
      mid = numbers.count/2
      first_half = numbers.slice(0, mid)
      second_half =  numbers.slice(mid, numbers.count)
#recursion
      sorted_first_half = sort(first_half)
      sorted_second_half = sort(second_half)
#implements the merge method
      merge(sorted_first_half, sorted_second_half)
    end

    def merge(first_half, second_half)
      sorted = []
      while first_half.count > 0 && second_half.count > 0
        if  first_half.first < second_half.first
          sorted.push(first_half.shift)
        else
          sorted.push(second_half.shift)
        end
      end

      sorted + first_half + second_half
    end

  end

end


puts SortingSuite::MergeSort.new([3, 2, 1]).sort
puts SortingSuite::MergeSort.new([5,3,4,2,1]).sort

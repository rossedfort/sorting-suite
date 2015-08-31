module SortingSuite

  class InsertionSort

    def initialize(numbers)
      @numbers = numbers
    end

    def sort
      @numbers.each_with_index do |value, index|              #
        while index > 0 && value < @numbers[index-1]
          @numbers[index] = @numbers[index-1]
          index -= 1
        end
        @numbers[index] = value
      end
      @numbers
    end

  end

end

puts SortingSuite::InsertionSort.new([3,2,1]).sort
puts SortingSuite::InsertionSort.new([2,5,4,1,3]).sort

module SortingSuite
  class BubbleSort

    def initialize(numbers)
      @numbers = numbers
    end

    def sort
      @current_index = 0
      @next_index = 1

      until @next_index >= @numbers.count
          assign_current_and_next_numbers
        if @numbers[@next_index] < @numbers[@current_index]
          swap_numbers
        else
          increase_indices
        end
      end
      @numbers
    end

    def swap_numbers
        @numbers[@next_index] = @current_number
        @numbers[@current_index] = @next_number
        @current_index = 0
        @next_index = 1
    end

    def increase_indices
      @current_index += 1
      @next_index += 1
    end

    def assign_current_and_next_numbers
      @current_number = @numbers[@current_index]
      @next_number = @numbers[@next_index]
    end

  end
end


puts SortingSuite::BubbleSort.new([4,2,5,3,1]).sort
puts SortingSuite::BubbleSort.new([3,2,1]).sort

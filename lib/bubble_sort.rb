class BubbleSort
  attr_accessor :bubble_array

  def initialize
    @swap = 0
  end

  def results(bubble_array)
    result = bubble_array
    "Final result : #{result} Swaps: #{@swap}"
  end

  def sort(bubble_array)
   counter = 0
   while counter < (bubble_array.length ** 2)  do
      bubble_array.each_with_index do |bubble, index|
      next_index = index +1
        if bubble_array[next_index].nil?
          next_index = 0
        else
          if bubble_array[next_index] < bubble
            @swap +=1
            current = bubble
            next_num = bubble_array[next_index]
            bubble_array[index] = next_num
            bubble_array[next_index] = current
          end
        end
      end
    counter +=1
  end
  bubble_array
  end


 end

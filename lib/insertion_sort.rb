class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted) #[2, 3, 1]
    binding.pry
      unsorted.each do |element|
        if @sorted.empty?
          @sorted << unsorted.first
          unsorted.delete_at(0)
        else
          num = 0
          #go through each unsorted element and compare it to each sorted element in ascending order until you find the element that is greater than yours, insert unsorted element into the postion before that correct element

          #enumerate through unsorted
          #compare unsorted element to each element in sorted
          #ask: is ue < se?
          #if so ue goes in front of se
          #ue is deleted from unsorted
          # else compare the ue (AT SAME INDEX) to the next se
          #if none are less than add ue to the end
          #loop thru the ask portion until you've gone
          while num < @sorted.length do
            if unsorted[0] < @sorted[num] #0
              @sorted.insert(unsorted[index], index)
              unsorted.delete_at(index)
            end
            num +=1
          end
        end
      end
      @sorted
  end

end

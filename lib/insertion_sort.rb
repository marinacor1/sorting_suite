class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted) #[2, 3, 1]
    @sorted << unsorted.first
    unsorted.delete_at(0)
    # binding.pry
    #TODO theory: it exits out because unsorted has had its contents deleted
    while unsorted.length > 0 do
      unsorted.each do |element|
        index = 0
        #TODO exits out of unsorted enumerable before finishing going through the unsorted. unsorted still has one character left. maybe last num 1 doesn't fit while loop parameters
          while index <= unsorted.length && unsorted.include?(element) do
            if element < @sorted[index]#0
              @sorted.insert(index, element)
              unsorted.delete_at(index)
              #if less than
            elsif @sorted[index] == @sorted.last
              @sorted << element
              unsorted.delete_at(index)
              #what if element is higher than everything in array?
            end
        index +=1
          end
      end
    end
    @sorted
  end

end

#enumerate through unsorted
#compare unsorted element to each element in sorted
#ask: is ue < se?
#if so ue goes in front of se
#ue is deleted from unsorted
# else compare the ue (AT SAME INDEX) to the next se
#if none are less than add ue to the end
#loop thru the ask portion until you've gone

class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted) #[2, 3, 1]
    if @sorted.empty?
      @sorted << unsorted.first
      unsorted.delete_at(0)
    else
      index = 0
        while index <= unsorted.length
      # unsorted.each do |element| #3
        if unsorted[index] < @sorted[index] #0
          @sorted.insert(u[index], index)
          unsorted.delete_at(index)
        end
          index +=1
        end
      end
      @sorted
    end
      #sorted is: []

      # unsorted.first compares to each element of @sorted if bigger continues if less stop and insert before



end

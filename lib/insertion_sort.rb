class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted_input) #[2, 3, 1]
    if @sorted.empty?
      @sorted << unsorted_input.first
      #[2]
    else
      #unsorted = [, 3, 1]
      #sorted = [2]
      #ideal = [1, 2, 3]
      #does element, index keep element and go through each spot 
      unsorted_input.each_with_index do |element, index| #3
        if element < @sorted[index] #0
          @sorted.insert(element, index)
        end
      end
      #sorted is: []

      # unsorted_input.first compares to each element of @sorted if bigger continues if less stop and insert before

  end


end

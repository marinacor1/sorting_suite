class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted)
    @sorted << unsorted.first
    unsorted.delete_at(0)
    while unsorted.length > 0 do
      unsorted.each do |element|
        index = 0
          while index <= unsorted.length && unsorted.include?(element) do
            if element < @sorted[index]
              @sorted.insert(index, element)
              unsorted.delete_at(index)
            elsif @sorted[index] == @sorted.last
              @sorted << element
              unsorted.delete_at(index)
            end
        index +=1
          end
      end
    end
    @sorted
  end

end

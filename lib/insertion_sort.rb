class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted)
    @sorted << unsorted.first
    unsorted.delete_at(0)
    while unsorted.length > 0 do
        index = 0
      unsorted.each do |element|
          while index <= unsorted.length && unsorted.include?(element) do
          if element < @sorted[index]
            @sorted.insert(index, element)
            unsorted.delete_at(0)
          elsif @sorted[index] == @sorted.last
            @sorted << element
            unsorted.delete_at(0)
          end
            index += 1
          end
      end
    end
    @sorted
  end

  def insert(index, element, unsorted)

  end

end

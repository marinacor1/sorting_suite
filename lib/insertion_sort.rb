class InsertionSort

  def initialize
    @sorted = []
  end

  def sort(unsorted)
    @sorted << unsorted.first
    unsorted.delete_at(0)
    while unsorted.length > 0 do
#sometimes it'll come up to here and reset the index
        index = 0
      unsorted.each do |element|
        #why does c get skipped?
#sometimes it will stay within the iteration. why does it come out of the iteration? is it because something gets deleted?
        # binding.pry
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

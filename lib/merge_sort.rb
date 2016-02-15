class MergeSort
  def initialize
    @sorted = []
    @final_sort = []
  end

  def sort(unsorted)
    # binding.pry
    slice_into_pairs(unsorted)
    @sorted.each do |group|
      group.each do |pair|
        if pair.length == 1 || pair.nil?
        # break #how do i break from this particular enumerator but not the group one
        else
        sort_pairs(pair)
        end
      end
      @final_sort << sort_group(group.flatten)
    end
      @final_sort.each do |group|
        sort_group(group)
      end
    # binding.pry
    #[["b", "d"], ["a", "c"]]
    @final_sort = @final_sort[0].zip(@final_sort[1])
     #[["b", "a"], ["d", "c"]]
     @final_sort.each do |pair|
     sort_pairs(pair)
   end
    @final_sort = @final_sort.flatten

  end

  def slice_into_pairs(unsorted)
    unsorted.each_slice(unsorted.length/2) do |half|
      if half.length == 1
        break
      elsif half.length == 2
        @sorted << half
      else
        @sorted << half.each_slice(half.length/2).to_a
      end
    end.to_a
  end

  def sort_pairs(pair)
    # binding.pry
    pair.each_with_index do |element, index|
      next_index = index + 1
      if pair[next_index].nil?
        break
      end
      if pair[next_index] < element
        current = element
        next_element = pair[next_index]
        pair[index] = next_element
        pair[next_index] = current
      end
    end
  end

  def sort_group(group)
     counter = 0
     while counter < (group.length ** 2)  do
        group.each_with_index do |element, index|
        next_index = index + 1
          if group[next_index].nil?
            next_index = 0
          else
            if group[next_index] < element
              current = element
              next_num = group[next_index]
              group[index] = next_num
              group[next_index] = current
            end
          end
        end
      counter +=1
    end
    group
  end

end

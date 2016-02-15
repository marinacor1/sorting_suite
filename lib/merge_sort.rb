class MergeSort
  def initialize
    @sorted = []
    @middle_sort = []
    @final_sort = []
  end

  def sort(unsorted)
    if unsorted.length >= 2
      slice_into_pairs(unsorted)
    end
    if @sorted.length >= 2
      @sorted.each do |group|
        group.each do |pair|
          if pair.length == 1 || pair.nil?
          else
            sort_pairs(pair)
          end
        end
        @middle_sort << sort_group(group.flatten)
      end
    end
    if @middle_sort.length >= 2
      sort_two_halves(@middle_sort[0], @middle_sort[1])
    else
      @final_sort << unsorted
    end
      @final_sort = @final_sort.flatten.uniq.compact
  end

  def sort_two_halves(first_array, second_array)
    while first_array.length != 0  || second_array.length != 0 do
      if first_array[0].nil?
        @final_sort << second_array
        first_array = []
        second_array = []
      elsif second_array[0].nil?
        @final_sort << first_array
        second_array = []
        first_array = []
      elsif first_array[0] < second_array[0]
        @final_sort << first_array[0]
        first_array.delete_at(0)
      else
        @final_sort << second_array[0]
        second_array.delete_at(0)
      end
    end
  end

  def slice_into_pairs(unsorted)
    unsorted.each_slice((unsorted.length/2.0).round) do |half|
      if half.length == 1
        break
      elsif half.length == 2
        @sorted << half
      else
        @sorted << half.each_slice((unsorted.length/2.0).round).to_a
      end
    end.to_a
  end

  def sort_pairs(pair)
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

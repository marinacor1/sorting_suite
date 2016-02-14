class MergeSort
  def initialize
    @sorted = []
  end

  def sort(unsorted)
    binding.pry
    slice_into_pairs(unsorted)
    @sorted.each do |group| #[[1,5], [3, 7], [9]]
      #TODO after running the merged group [0,8,6] through the compare_pairs method, the numbers are reorganized to [0,6,8]. However, when coming back to the larger group the next pair is [8,6] and the group is [[2,4], [8,6], [0,[8,6]]]. Theory possibly: the pair [8,6] overrides the work done on the merged group. Is it because the small_group is not known to be a part of the @sorted array?
      group.each do |pair|
        if pair.length == 1
          break
        else
        compare_pairs(pair)
        end
        #TODO is this being called too early?
        small_group = group[-1].push(group[-2]).flatten #[0, 8, 6]
        #TODO seems to add this group, maybe this part isn't necessary or just do a uniq
       #whenver compare_pairs is called, should be a merged group (no brackets inside)
        compare_pairs(small_group)
      # group.join.chars #["2", "4", "8", "6", "0"]
      #need to join the last two and compare, switch
      #need to join the two groups and compare, switch
      end
      #[[[2,4] [6,8], [0]], [[1,5], [3,7], [9]]]

      #some how need to get the merged couples to compare with other merged couples (How does this order go?) the first of each group compares and switches.
      #go backwards: [-2] and [-3] index compare/switch
      #[-1] and [-3] index compare/ switch
      #[-3] and [-5] or mid and last compare/ switch
      #merge loner to group
    end
  end

  def slice_into_pairs(unsorted)
    unsorted.each_slice(unsorted.length/2) do |half|
      if half.length == 1 || half.length == 2
        break
      else
        @sorted << half.each_slice(half.length/2).to_a
      end
    end.to_a
  end

  def compare_pairs(pair)
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

end

#take the first pair and compare/ switch accordingly
#merge the pair
#take the second pair and compare/ switch accordingly
#merge the pair
#if there is one then leave it alone
#once each half is sorted completely, compare the first of each and merge them together
#if already sorted, it will just split and then merge

class MergeSort
  def initialize
    @sorted = []
  end

  def sort(unsorted)
    #unsorted.each_slice((unsorted.size/2.0).round).to_a
   #[d, b, c, a]
    @sorted = unsorted.each_slice((unsorted.size/2)).to_a
    #[[d,b] [c,a]]
    @sorted.each do |pair|
      #[[b,d] [a, c]]
        compare_pairs(pair)
    end
    @sorted.join.chars
    #[b,d,a,c]
    #d, a compare & switch
    #[b,a,d,c]
    #d, c compare & switch
    #[b,a,c,d]
    #middle and front
    #ac compare and switch, ba compare and switch
    #b, a compare and switch
     #sort within a group of four [b, d, a, c]
        binding.pry

  end

  def compare_pairs(pair)
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


#take unsorted array
#split ua into two (if uneven left will be less)
#take left half and split until groups of all twos (if uneven than one is allowed in addition) RECURSION
#take the first pair and compare/ switch accordingly
#merge the pair
#take the second pair and compare/ switch accordingly
#merge the pair
#if there is one then leave it alone
#[24806]
#TODO some how get the merged couples to compare with other merged couples (How does this order go?) the first of each group compares and switches.
#go backwards: [-2] and [-3] index compare/switch
#[-1] and [-3] index compare/ switch
#[-3] and [-5] or mid and last compare/ switch
#merge loner to group

#once each half is sorted completely, compare the first of each and merge them together

#if already sorted, it will just split and then merge

class MergeSort
  def initialize
    @sorted = []
  end

  def sort(unsorted)
    #unsorted.each_slice((unsorted.size/2.0).round).to_a
    # binding.pry
    @sorted = unsorted.each_slice((unsorted.size/2)).to_a
    @sorted.each do |pair|
      pair.each_with_index do |num, index|
        next_index = index + 1
        if pair[next_index].nil?
          break
        end
        if pair[next_index] < num
          current = num
          next_num = pair[next_index]
          pair[index] = next_num
          pair[next_index] = current
        end
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

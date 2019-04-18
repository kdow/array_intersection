# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n + m) where n is the number of items of one array and m is the number of items in the other
# Space complexity: O(n)
def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end
  if array1.length < array2.length
    larger = array2
    smaller = array1
  else
    larger = array1
    smaller = array2
  end
  my_hash = Hash.new()
  smaller.length.times do |num|
    my_hash[smaller[num]] = 1
  end
  common_elements = []
  larger.length.times do |num_1|
    if my_hash.include? larger[num_1]
      common_elements << larger[num_1]
    end
  end
  return common_elements
end

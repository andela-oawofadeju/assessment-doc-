# Time Complexity: worst case and average case = 0(n); best case = O(1)

def linear_search(array, number)
  x = array.length
  x.times do |i|
    return i if array[i] == number
  end
  return -1
end
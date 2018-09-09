# Time Complexity = O(logn) 
# Precondition: List should be sorted

def binary_search(array, number)
  x = array.length
  high = x-1
  low = 0
  mid = (low + high)/2
  n.times do |i|
    if array[mid] == number
      return mid
    elsif array[mid] > number
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return -1
end


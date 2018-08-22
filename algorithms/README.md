# Algorithms
An algorithm in computer science is a finite sequence of steps for solving computational tasks.

## Common search Algorithms
### Linear Search
It is a sequential search algorithm where an item is searched from the first to the last on the list or an array of items. If the item is found, the search stops else, the search continues to the end of the list. It is not an efficient search algorithm, considering an example where you search for a name in a phone book consisting of thousands of names and the particular name you are looking for is probably the last on the list.
Linear search sequentially checks each element of the list till it finds an element that matches the target value(like the phone book example above). If the algorithm reaches to the end of the list, the search terminates unsuccessfully.

#### Analysis
If element is found in the first position of the array, then only one comparison is required. Therefore in best case performance, it takes constant time 0(1)
If element is found at last position then n comparison will be done, where n is the size of the array. Therefore, in worst case performance, it takes 0(n) time.
It has an average case time complexity of 0(n)

#### Pseudo-code for Linear Search
``` 
procedure linear_search (list, value)
  for each item in the list
    if match item == value
      return the item's location
    end if
  end for
end procedure
```

#### Algorithm
```
Linear Search ( Array A, Value x)

Step 1: Set i to 1
Step 2: if i > n then go to step 7
Step 3: if A[i] = x then go to step 6
Step 4: Set i to i + 1
Step 5: Go to Step 2
Step 6: Print Element x Found at index i and go to step 8
Step 7: Print element not found
Step 8: Exit
```

### Binary Search
It is a half-interval search algorithm that overcomes the limitation of sequential search. Precondition to use binary search is that the array must be sorted. Search the sorted array by repeatedly dividing the interval into half. Approximate middle element of the array is located and its value is compared to element to be searched. If the value of middle element is greater than the element to be searched, then we would search the left portion of the array i.e from the beginning of the array to (mid-1) position of array and if the value of middle element is less than the element to be searched, then we would search element in the right position of the array i.e from mid+1 position of array to end position.

#### Analysis
Best case: Element searched is at the middle of the array to check this constant time required. Therefore best case would take 0(1) comparison
Worst case: Element may not be present in the array. This would require having half of the array as a sub-array in each iteration. Worst case would require 0(logn) comparisons.
Average case: Assuming probability of searching each element is uniform and only successful searches are made, now take the sum over all elements of the product of number of comparisons required to find each element and the probability of searching for that element which is equal to 0(logn)

#### Pseudocode
```
Procedure binary_search
  A ← sorted array
  n ← size of array
  x ← value to be searched

  Set lowerBound = 1
  Set upperBound = n 

  while x not found
    if upperBound < lowerBound 
      EXIT: x does not exists.
  
    set midPoint = lowerBound + ( upperBound - lowerBound ) / 2
    
    if A[midPoint] < x
      set lowerBound = midPoint + 1
        
    if A[midPoint] > x
      set upperBound = midPoint - 1 

    if A[midPoint] = x 
      EXIT: x found at location midPoint
  end while
   
end procedure
```

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
##### Code
https://github.com/andela-oawofadeju/assessment-doc-/blob/master/algorithms/linear_search.rb

### Binary Search
It is a half-interval search algorithm that overcomes the limitation of sequential search. Precondition to use binary search is that the array must be sorted. Search the sorted array by repeatedly dividing the interval into half. Approximate middle element of the array is located and its value is compared to element to be searched. If the value of middle element is greater than the element to be searched, then we would search the left portion of the array i.e from the beginning of the array to (mid-1) position of array and if the value of middle element is less than the element to be searched, then we would search element in the right position of the array i.e from mid+1 position of array to end position.

#### Analysis
Best case: Element searched is at the middle of the array to check this constant time required. Therefore best case would take 0(1) comparison
Worst case: Element may not be present in the array. This would require having half of the array as a sub-array in each iteration. Worst case would require 0(logn) comparisons.
Average case: Assuming probability of searching each element is uniform and only successful searches are made, now take the sum over all elements of the product of number of comparisons required to find each element and the probability of searching for that element which is equal to 0(logn)

#### Pseudocode for Binary Search
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
##### Code
https://github.com/andela-oawofadeju/assessment-doc-/blob/master/algorithms/binary_search.rb

## Common sorting Algorithms
### Bubble Sort
It is a simple sorting algorithm and sometimes referred to as sinking sort. This sorting algorithm is comparison-based algorithm in which each pair of adjacent elements is compared and the elements are swapped if they are not in order. This algorithm is not suitable for large data sets as its average and worst case complexity are of Ο(n2) where n is the number of items. Bubble sort is a pretty fun and easy sorting algorithm. For each pass through an array of values, each value is compared to its adjacent value and swapped into the correct order and so on. Bubble sort can be practical if the input is in mostly sorted order with some out-of-order elements nearly in position.

#### Analysis
Bubble sort has a worst-case and average complexity of О(n^2), where n is the number of items being sorted. Most practical sorting algorithms have substantially better worst-case or average complexity, often O(n log n). Even other О(n^2) sorting algorithms, such as insertion sort, generally run faster than bubble sort, and are no more complex. Therefore, bubble sort is not a practical sorting algorithm.

#### Pseudocode for Bubble Sort
```
procedure bubbleSort( A : list of sortable items )
  n = length(A)
  repeat
    swapped = false
    for i = 1 to n-1 inclusive do
      /* if this pair is out of order */
      if A[i-1] > A[i] then
        /* swap them and remember something changed */
        swap( A[i-1], A[i] )
        swapped = true
      end if
    end for
  until not swapped
end procedure
```
##### Code
https://github.com/andela-oawofadeju/assessment-doc-/blob/master/algorithms/bubble_sort.rb

### Insertion Sort
This is an in-place comparison-based sorting algorithm. Here, a sub-list is maintained which is always sorted. For example, the lower part of an array is maintained to be sorted. An element which is to be inserted in this sorted sub-list, has to find its appropriate place and then it has to be inserted there.

#### Algorithm
```
Step 1 − If it is the first element, it is already sorted. return 1;
Step 2 − Pick next element
Step 3 − Compare with all elements in the sorted sub-list
Step 4 − Shift all the elements in the sorted sub-list that is greater than the 
         value to be sorted
Step 5 − Insert the value
Step 6 − Repeat until list is sorted
```

#### Pseudocode for Insertion Sort
```
procedure insertionSort( A : array of items )
   int holePosition
   int valueToInsert
	
   for i = 1 to length(A) inclusive do:
	
      /* select value to be inserted */
      valueToInsert = A[i]
      holePosition = i
      
      /*locate hole position for the element to be inserted */
		
      while holePosition > 0 and A[holePosition-1] > valueToInsert do:
         A[holePosition] = A[holePosition-1]
         holePosition = holePosition -1
      end while
		
      /* insert the number at hole position */
      A[holePosition] = valueToInsert
      
   end for
	
end procedure
```
##### Code
https://github.com/andela-oawofadeju/assessment-doc-/blob/master/algorithms/insertion_sort.rb

### Merge Sort
Merge sort is s an efficient, general-purpose, comparison-based sorting algorithm based on divide and conquer technique. With worst-case time complexity being Ο(n log n), it is one of the most respected algorithms. Merge sort first divides the array into equal halves and then combines them in a sorted manner. Most implementations produce a stable sort, which means that the implementation preserves the input order of equal elements in the sorted output.

#### Analysis
In sorting n objects, merge sort has an average and worst-case complexity of of 0(n log n). If the running time of merge sort for a list of length nis T(n), then the recurrence T(n) = 2T(n/2) + n follows from the definition of the algorithm (apply the algorithm to two lists of half the size of the original list, and add the n steps taken to merge the resulting two lists).

#### Pseudocode(Parallel Merge Sort)
```
// Sort elements lo through hi (exclusive) of array A.
algorithm mergesort(A, lo, hi) is
    if lo+1 < hi then  // Two or more elements.
        mid = ⌊(lo + hi) / 2⌋
        fork mergesort(A, lo, mid)
        mergesort(A, mid, hi)
        join
        merge(A, lo, mid, hi)
```
##### Code
https://github.com/andela-oawofadeju/assessment-doc-/blob/master/algorithms/merge_sort.rb

### Selection Sort
Selection sort is a sorting algorithm specifically an in-place comparison sort in which the list is divided into two parts, the sorted part at the left end and the unsorted part at the right end. Initially, the sorted part is empty and the unsorted part is the entire list.. It has 0(n^2) time complexity, making it inefficient on large lists, and generally performs worse than the similar insertion sort. The smallest element is selected from the unsorted array and swapped with the leftmost element, and that element becomes a part of the sorted array. This process continues moving unsorted array boundary by one element to the right.

#### Algorithm
```
Step 1 − Set MIN to location 0
Step 2 − Search the minimum element in the list
Step 3 − Swap with value at location MIN
Step 4 − Increment MIN to point to next element
Step 5 − Repeat until list is sorted
```

#### Pseudocode
```
procedure selection sort 
   list  : array of items
   n     : size of list

   for i = 1 to n - 1
   /* set current element as minimum*/
      min = i    
  
      /* check the element to be minimum */

      for j = i+1 to n 
         if list[j] < list[min] then
            min = j;
         end if
      end for

      /* swap the minimum element with the current element*/
      if indexMin != i  then
         swap list[min] and list[i]
      end if
   end for
	
end procedure
```
##### Code
https://github.com/andela-oawofadeju/assessment-doc-/blob/master/algorithms/selection_sort.rb

#### Dijkstra’s Algorithm
Is an algorithm for finding the shortest path between nodes in a graph. It can also be used for finding the shortest paths from a single node to a single destination node by stopping the algorithm once the shortest path to the destination node has been determined.


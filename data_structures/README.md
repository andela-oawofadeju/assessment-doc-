# Data Structures
- They are abstract structures that organize, manage and store data in a format that enables efficient access and modification.
- They are based on the ability of a computer system to fetch and store data in any place in its memory as specified by it's pointer.
A pointer represents a memory address or points to a location stored in memory.

## Major Data Structure Classifications

### Linear Data Structures
Elements of linear data structures form a sequence. They are array, stack, queue and linked list.

#### Array
A finite ordered set of homogeneous elements stored at contiguous locations. Size of an array must be provided before storing data.

#### Stack
A LIFO(Last In First Out) with two main procedures: *Push* which adds an element to an existing collection and *Pop* which removes the last element that was added in that collection.

#### Queue
A FIFO(First In First Out) with two main procedures: *Enqueue* which adds an element to an existing collection from the rear side and *Dequeue* which removes the first element that was added.


### Hierarchical Data Structures
Elements of hierarchical data structures are arranged in tree-like manner. They are Binary Trees, Binary Search trees, Binary heaps and Hashes.

#### Tree
- an hierarchical data structure is a collection of nodes where each node consists of a value.
- It is made up of nodes or vertices and edges without having any cycle.

  ##### Binary Tree
  A binary tree is a special data structure used for data storage purposes in which each node has at most two children, which are referred to as the left child and the right child.

  ##### Binary Search Tree
  In Binary Search Tree is a Binary Tree with following additional properties:
  - The left subtree of a node contains only nodes with keys less than the node’s key.
  - The right subtree of a node contains only nodes with keys greater than the node’s key.
  - The left and right subtree each must also be a binary search tree.

#### Heap
 Also known as Binary Heap is a complete binary tree which staisfies the heap ordering property. There are two types:
  ##### Min Heap
  - is a specialized full binary tree where the value of each node is greater than or equal to the value of its parent, with the minimum-value element at the root.
  ##### Max Heap
  - is a specialized full binary tree where the value of each node is less than or equal to the value of its parent, with the maximum-value element at the root.


#### Hashes
 Hashes are data structures that store data in an associative manner. Hashing is a technique that is used to uniquely identify a specific object from a group of similar objects.
  ##### Hash function
  A hash function is any function that can be used to map a data set of an arbitrary size to a data set of a fixed size, which falls into the hash table. The values returned by a hash function are called hash values, hash codes, hash sums, or simply hashes. A good hash function should have following properties:
  - Efficiently computable
  - Should uniformly distribute the keys (Each table position equally likely for each key)

#### Graphs
A graph is a pictorial representation of a set of objects where some pairs of objects are connected by links. The interconnected objects are represented by points termed as vertices, and the links that connect the vertices are called edges.

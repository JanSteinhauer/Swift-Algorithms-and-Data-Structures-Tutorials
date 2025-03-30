### **Task Description: Merge Two Sorted Lists**

#### **Objective**  
Implement a function that merges two sorted singly linked lists into one sorted linked list. The new list should be made by splicing together the nodes of the first two lists.

#### **Function Signature**  
```swift
func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode?
```

#### **Input**  
- `list1`: The head of the first sorted linked list.
- `list2`: The head of the second sorted linked list.

#### **Output**  
- Returns the head of the new merged and sorted linked list.

#### **Constraints**  
- The input lists are sorted in non-decreasing order.
- The merged list should be built using the original nodes from `list1` and `list2`, not by creating new nodes (i.e., no allocation of new values).
- The function should work in linear time `O(n + m)` where `n` and `m` are the lengths of `list1` and `list2`.

#### **Example**  

##### **Example 1**  
Let:
- `list1` = 1 → 2 → 4  
- `list2` = 1 → 3 → 4

Calling:
```swift
let result = mergeTwoLists(list1, list2)
```

Will produce:
```
1 → 1 → 2 → 3 → 4 → 4
```

#### **Illustration**

![Merge Two Lists](mergeTwoLists.jpg)

**Explanation:**  
- The function compares values from each list node by node and adds the smaller one to the new list.
- In case of equal values (like two `1`s), the value from `list1` is chosen first, maintaining original relative order.
- The merged list contains all values from both lists in sorted order.


## Task Description: **Partitioning a String into Unique Substrings**

### **Objective**
Implement a function that partitions a given string into the minimum number of contiguous substrings such that no character appears more than once in any substring.

### **Function Signature**
```swift
func partitionString(_ s: String) -> Int
```

### **Parameters**
- `s` (**String**): A non-empty string consisting of lowercase English letters.

### **Return Value**
- (**Int**): The minimum number of substrings required to satisfy the constraint that no character appears more than once within a substring.

### **Constraints**
- \( 1 \leq s.length \leq 10^5 \)
- The string consists of only lowercase English letters (`a-z`).

### **Approach**
1. Iterate through each character of the input string while maintaining a temporary substring (`current_string`).
2. If the current character is already present in `current_string`, it means a new partition must be started. 
   - Increase the partition count (`result`).
   - Reset `current_string` to start a new substring.
3. Continue adding characters to `current_string` and repeat until the string is fully processed.
4. Return the final partition count.

### **Example Walkthrough**
#### **Example 1**
**Input:**  
```swift
let s = "abac"
print(partitionString(s))
```
**Output:**  
```swift
2
```
**Explanation:**  
- The string can be partitioned as **["ab", "ac"]**, ensuring that no duplicate characters exist within any substring.

#### **Example 2**
**Input:**  
```swift
let s = "ssssss"
print(partitionString(s))
```
**Output:**  
```swift
6
```
**Explanation:**  
- Each character needs to be its own partition as they are all the same: **["s", "s", "s", "s", "s", "s"]**.

### **Edge Cases to Consider**
- **All Unique Characters:**  
  - Example: `"abcdef"` should return `1` since no partitioning is needed.
- **All Identical Characters:**  
  - Example: `"aaaa"` should return `4`, as each character needs a new partition.
- **Longest Possible String (10⁵ characters):**  
  - Ensure the solution runs efficiently with large inputs.

### **Complexity Analysis**
- **Time Complexity:** \(O(n)\) — Since we iterate through the string once.
- **Space Complexity:** \(O(1)\) — Since `current_string` stores at most 26 unique characters.

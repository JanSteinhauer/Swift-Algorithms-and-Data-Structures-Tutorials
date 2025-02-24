### **Task: Find the Kth Factor of a Number**  

#### **Problem Statement**  
Write a function `kthFactor(_ n: Int, _ k: Int) -> Int` that finds the **kth factor** of a given integer `n`. A factor of `n` is any integer `num` such that `n % num == 0`. The function should return the **kth smallest factor** of `n`. If `n` has fewer than `k` factors, return `-1`.  

#### **Input**  
- An integer `n` (1 ≤ n ≤ 10⁴) representing the number whose factors need to be found.  
- An integer `k` (1 ≤ k ≤ 10⁴) representing the index of the factor to return.  

#### **Output**  
- An integer representing the `k`th factor of `n`, or `-1` if `n` has fewer than `k` factors.  

#### **Example Usage**  
```swift
print(kthFactor(12, 3))  // Output: 3
print(kthFactor(7, 2))   // Output: 7
print(kthFactor(4, 4))   // Output: -1
```

### **Example 1:** `kthFactor(12, 3)`
- The factors of `12` are `[1, 2, 3, 4, 6, 12]`.  
- The `3rd` factor in the list is `3`.  
- **Step 1:** Find all factors of `12`:  
  - `1` (12 ÷ 1 = 12, remainder 0)  
  - `2` (12 ÷ 2 = 6, remainder 0)  
  - `3` (12 ÷ 3 = 4, remainder 0)  
  - `4` (12 ÷ 4 = 3, remainder 0)  
  - `6` (12 ÷ 6 = 2, remainder 0)  
  - `12` (12 ÷ 12 = 1, remainder 0)  
  - **Factors in order:** `[1, 2, 3, 4, 6, 12]`  
- **Step 2:** The `3rd` factor in the list is `3`.  
- **Output:** `3`  

---

### **Example 2:** `kthFactor(7, 2)`
- **Step 1:** Find all factors of `7`:  
  - `1` (7 ÷ 1 = 7, remainder 0)  
  - `7` (7 ÷ 7 = 1, remainder 0)  
  - **Factors in order:** `[1, 7]`  
- **Step 2:** The `2nd` factor in the list is `7`.  
- **Output:** `7`  

---

### **Example 3:** `kthFactor(4, 4)`
- **Step 1:** Find all factors of `4`:  
  - `1` (4 ÷ 1 = 4, remainder 0)  
  - `2` (4 ÷ 2 = 2, remainder 0)  
  - `4` (4 ÷ 4 = 1, remainder 0)  
  - **Factors in order:** `[1, 2, 4]`  
- **Step 2:** We are asked for the `4th` factor, but there are only `3` factors.  
- **Step 3:** Since the `4th` factor does not exist, return `-1`.  
- **Output:** `-1`  


#### **Constraints & Edge Cases**  
- `n` will always be at least `1`, ensuring it has at least one factor (`1`).  
- `k` may be larger than the number of factors, in which case the function should return `-1`.  
- The function should efficiently find and return the factors in ascending order.

### **Two Sum Problem**

#### **Problem Statement**
You are given an array of integers `nums` and an integer `target`. Your task is to find two distinct indices `i` and `j` in the array such that:  

\[
nums[i] + nums[j] = target
\]

Return these indices as a list `[i, j]`. The order of indices in the output should match their appearance in the input array. If no such pair exists, return an empty list `[]`.

#### **Constraints**
- Each input will have **exactly one solution** (i.e., there will be a valid pair).
- The same element **cannot be used twice** (e.g., `nums[i]` and `nums[j]` must be different elements).
- The solution must run in **O(n) time complexity**.
- Assume there will always be at least **two elements** in the array.

#### **Input Format**
- An integer array `nums` of length `n` where `n ≥ 2`.
- An integer `target` representing the desired sum.

#### **Output Format**
- A list containing two integers `[i, j]`, representing the indices of the two numbers that sum up to `target`.
- If no valid pair exists, return `[]`.

#### **Example Cases**

##### **Example 1**
**Input:**
```swift
nums = [2, 7, 11, 15]
target = 9
```
**Output:**
```swift
[0, 1]
```
**Explanation:** `nums[0] + nums[1] = 2 + 7 = 9`

---

##### **Example 2**
**Input:**
```swift
nums = [3, 2, 4]
target = 6
```
**Output:**
```swift
[1, 2]
```
**Explanation:** `nums[1] + nums[2] = 2 + 4 = 6`

---

##### **Example 3**
**Input:**
```swift
nums = [-1, -2, -3, -4, -5]
target = -8
```
**Output:**
```swift
[2, 4]
```
**Explanation:** `nums[2] + nums[4] = -3 + (-5) = -8`

---

##### **Example 4**
**Input:**
```swift
nums = [1, 4, 5, 6, 9]
target = 10
```
**Output:**
```swift
[0, 4]
```
**Explanation:** `nums[0] + nums[4] = 1 + 9 = 10`

---

##### **Example 5**
**Input:**
```swift
nums = [1000000, 500, 500000, 1000000]
target = 1500000
```
**Output:**
```swift
[2, 3]
```
**Explanation:** `nums[2] + nums[3] = 500000 + 1000000 = 1500000`


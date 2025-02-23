### **Task Description: Palindrome Number Checker**

#### **Objective**  
Implement a function that determines whether a given integer is a palindrome. A palindrome is a number that reads the same forward and backward.

#### **Function Signature**  
```swift
func isPalindrome(_ x: Int) -> Bool
```

#### **Input**  
- A single integer `x` where `-2³¹ ≤ x ≤ 2³¹ - 1`.

#### **Output**  
- Return `true` if `x` is a palindrome.  
- Return `false` otherwise.

#### **Constraints**  
- You **cannot** convert the integer to a string or use any string-based methods to determine if it's a palindrome.
- You must implement the solution using **mathematical operations only**.

#### **Examples**  

##### **Example 1**  
```swift
print(isPalindrome(121))   // Output: true
```
**Explanation:**  
- When reading `121` from left to right, it remains `121`.  
- The first and last digits are the same (`1` and `1`), and the middle digit is the same when reversed.  
- Since the number is identical when reversed, it is a **palindrome**.

##### **Example 2**  
```swift
print(isPalindrome(-121))  // Output: false
```
**Explanation:**  
- The number `-121` appears as `121-` when reversed.  
- The negative sign `-` makes it impossible to be symmetric.  
- Since the number does not read the same forward and backward, it is **not a palindrome**.

##### **Example 3**  
```swift
print(isPalindrome(10))    // Output: false
```
**Explanation:**  
- The number `10` becomes `01` when reversed, which is not the same.  
- Since the digits are not identical in reverse order, `10` is **not a palindrome**.

##### **Example 4**  
```swift
print(isPalindrome(0))    // Output: true
```
**Explanation:**  
- The number `0` reads the same forward and backward.  
- Since it remains unchanged, it is a **palindrome**.

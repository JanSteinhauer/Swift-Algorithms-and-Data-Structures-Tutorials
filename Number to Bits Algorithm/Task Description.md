### **Number to Bits**

#### 📝 Task Description:

Write a function that converts a non-negative integer into its binary representation as an array of bits.

The binary representation should:

* Be in **most significant bit (MSB) first** order.
* Contain only the digits `0` and `1` as integers (`Int`).
* Return `[0]` for the input `0`.
* Return an empty array `[]` for any **negative number**.

#### ✍️ Function Signature:

```swift
func numberToBits(_ number: Int) -> [Int]
```

#### ✅ Examples:

```swift
numberToBits(0)      // ➞ [0]
numberToBits(1)      // ➞ [1]
numberToBits(2)      // ➞ [1, 0]
numberToBits(5)      // ➞ [1, 0, 1]
numberToBits(15)     // ➞ [1, 1, 1, 1]
numberToBits(-3)     // ➞ []
```

#### 📌 Constraints:

* The input number will be a 32-bit signed integer.
* You do **not** need to handle binary representation of negative numbers (e.g., no two’s complement).
* The result must be a list of integers, not a string.

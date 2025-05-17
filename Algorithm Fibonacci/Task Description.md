# 🧮 Fibonacci Sequence - Recursive Implementation

## 📌 Problem Description

The **Fibonacci sequence** is a famous sequence in mathematics where each number is the sum of the two preceding ones.

The sequence starts as:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, ...
```

Formally:

* `F(0) = 0`
* `F(1) = 1`
* `F(n) = F(n - 1) + F(n - 2)` for `n ≥ 2`

---

## 🎯 Task

Implement a function in Swift that calculates the **n-th Fibonacci number** using **recursion**.

### ✅ Function Signature

```swift
func fibonacci(_ n: Int) -> Int
```

### 🧪 Examples

```swift
fibonacci(0)  // ➝ 0
fibonacci(1)  // ➝ 1
fibonacci(5)  // ➝ 5
fibonacci(10) // ➝ 55
```

---

## ⚙️ How It Works (Recursive Logic)

```swift
func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}
```

* Base case: if `n` is 0 or 1, return `n`.
* Recursive case: sum the results of `fibonacci(n - 1)` and `fibonacci(n - 2)`.

---

## 🕒 Time and Space Complexity

| Complexity    | Value    | Explanation                                         |
| ------------- | -------- | --------------------------------------------------- |
| Time          | `O(2^n)` | Each call spawns two more calls, exponential growth |
| Space (stack) | `O(n)`   | Max recursion depth is `n`                          |

> ⚠️ This recursive method is **not efficient** for large `n`. It recalculates the same values many times.

---

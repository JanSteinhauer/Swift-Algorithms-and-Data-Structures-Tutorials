### **Problem Statement: Rearranging Digits in Descending Order**

**Objective:**
Write a function that takes a **non-negative integer** as input, rearranges its digits in **descending order**, and returns the resulting integer.

---

### **Function Signature**
```swift
func descendingOrder(of number: Int) -> Int
```

---

### **Input**
- A **non-negative integer** (`Int`).
- Example inputs: `42145`, `145263`, `123456789`.

---

### **Output**
- An integer where the digits are **sorted in descending order**.
- Example outputs:
  - `42145` → `54421`
  - `145263` → `654321`
  - `123456789` → `987654321`

---

### **Requirements**
1. Convert the integer into a list of its **digits**.
2. Sort the digits **in descending order**.
3. Convert the sorted digits back into an integer.
4. Return the final integer.

---

### **Constraints**
- The input will always be a **non-negative integer** (`0` or greater).
- If the input is `0`, the output should be `0`.

---
### **Example Cases**
| Input  | Expected Output |
|--------|---------------|
| `42145`  | `54421`  |
| `145263` | `654321` |
| `123456789` | `987654321` |
| `0` | `0` |

---

### **Edge Cases**
- If the input is a **single-digit number**, it remains unchanged (e.g., `7 → 7`).
- If all digits are the same, the output remains unchanged (e.g., `111 → 111`).
- If the input is `0`, return `0`.

---

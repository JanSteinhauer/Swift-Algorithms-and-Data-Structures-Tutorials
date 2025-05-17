# Bubble Sort Algorithm in Swift

## 📝 Task Description

This project implements the **Bubble Sort** algorithm in Swift as a generic standalone function and provides test cases to validate its correctness. The goal is to sort arrays containing comparable elements using a simple comparison-based technique.

## 📌 What is Bubble Sort?

**Bubble Sort** is one of the simplest sorting algorithms. It works by repeatedly stepping through the list, comparing adjacent elements and swapping them if they are in the wrong order. This process is repeated until the list is sorted.

Despite its simplicity, Bubble Sort is generally inefficient for large datasets and is mostly used for educational purposes or when performance is not critical.

### 🔁 Algorithm Steps:
1. Compare each pair of adjacent items.
2. Swap them if they are in the wrong order.
3. Repeat the process for all elements until no swaps are needed.

## 💻 Example Usage

```swift
let numbers = [5, 3, 8, 1, 2]
let sorted = bubbleSort(numbers)
print(sorted)  // Output: [1, 2, 3, 5, 8]
````

## 📊 Complexity

| Type           | Complexity |
| -------------- | ---------- |
| Time (Best)    | O(n)       |
| Time (Average) | O(n²)      |
| Time (Worst)   | O(n²)      |
| Space          | O(1)       |

* **Best case** occurs when the array is already sorted. With optimization (not included here), it can finish early.
* **Worst case** occurs when the array is sorted in reverse.
* **Space complexity** is O(1) because it sorts in-place (if implemented that way), but in this implementation a copy is returned.

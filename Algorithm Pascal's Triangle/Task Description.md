# Pascal's Triangle

## Problem Description

Given an integer `numRows`, generate the first `numRows` of **Pascal's Triangle**.

In **Pascal's Triangle**, each number is the sum of the two numbers directly above it. The triangle starts with a single `1` at the top.

## Example

### Example 1

**Input:**  
`numRows = 5`

**Output:**  
```
[
  [1],
  [1,1],
  [1,2,1],
  [1,3,3,1],
  [1,4,6,4,1]
]
```

### Example 2

**Input:**  
`numRows = 1`

**Output:**  
```
[
  [1]
]
```

## Constraints

- `1 <= numRows <= 30`

## Notes

- Each row starts and ends with `1`.
- Each interior number is the sum of the two numbers above it.
- The triangle grows in size with each additional row.

## Swift Function Signature

```swift
func generate(_ numRows: Int) -> [[Int]]
```

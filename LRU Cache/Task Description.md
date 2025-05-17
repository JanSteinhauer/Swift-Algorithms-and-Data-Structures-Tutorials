# 🧠 LRU Cache - Task Description

## 📌 Problem Statement

Design and implement a **Least Recently Used (LRU) Cache**. The cache should support two operations:

* `get(key)`: Return the value associated with the key if it exists in the cache; otherwise, return `-1`.
* `put(key, value)`: Insert or update the key-value pair. If the cache exceeds its capacity, it should **evict the least recently used item**.

Your goal is to ensure that both operations run efficiently, while maintaining the **order of usage**.

---

## 🗂 Use Case

LRU Caches are commonly used in:

* **Memory management** (e.g., page replacement algorithms in operating systems),
* **Web caching** (to store recent pages for faster access),
* **CPU cache replacement policies**, and
* **Database systems** for caching query results.

---

## 🧮 Time and Space Complexity

| Operation         | Time Complexity | Explanation                                                                                  |
| ----------------- | --------------- | -------------------------------------------------------------------------------------------- |
| `get(key)`        | O(n)            | Linear time to remove key from array and reappend it (can be O(1) with a doubly linked list) |
| `put(key, value)` | O(n)            | May remove from array and reappend (can also be O(1) with a doubly linked list)              |

> Note: This implementation uses a dictionary and an array. While dictionary access is `O(1)`, maintaining the array for usage order costs `O(n)` due to removal.

| Resource      | Space Complexity |
| ------------- | ---------------- |
| Cache Storage | O(capacity)      |
| Keys Array    | O(capacity)      |

---

## 📦 Example

```swift
let cache = LRUCache(2)
cache.put(1, 1)        // Cache: [1]
cache.put(2, 2)        // Cache: [1, 2]
print(cache.get(1))    // returns 1 → Cache becomes: [2, 1]
cache.put(3, 3)        // Evicts key 2 → Cache: [1, 3]
print(cache.get(2))    // returns -1 (not found)
```

---

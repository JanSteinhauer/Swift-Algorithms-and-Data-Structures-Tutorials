//
//  Dict.swift
//  Dict
//
//  Created by Steinhauer, Jan on 2/13/25.
//

import Foundation

// A dictionary (hash map) is a data structure that stores key-value pairs.
// - Keys are unique and map to specific values.
// - It provides efficient lookup, insertion, and deletion.
// - Common operations include:
//   - Insert: Adding a key-value pair.
//   - Retrieve: Getting the value associated with a key.
//   - Delete: Removing a key-value pair.
//

class DictionaryMap<K: Hashable, V> {
    private var elements: [K: V] = [:]
    
    // Check if the dictionary is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    // Insert or update a key-value pair
    func insert(key: K, value: V) {
        elements[key] = value
    }
    
    // Retrieve a value for a given key
    func getValue(forKey key: K) -> V? {
        return elements[key]
    }
    
    // Remove a key-value pair
    func remove(key: K) -> V? {
        return elements.removeValue(forKey: key)
    }
    
    // Return the count of key-value pairs
    var count: Int {
        return elements.count
    }
    
    // Check if a key exists
    func containsKey(_ key: K) -> Bool {
        return elements[key] != nil
    }
}

// Extension to demonstrate Swift's built-in support for key-value removal
extension Dictionary {
    mutating func removeFirstKeyValue() -> (Key, Value)? {
        guard let firstKey = keys.first else { return nil }
        return (firstKey, removeValue(forKey: firstKey)!)
    }
}

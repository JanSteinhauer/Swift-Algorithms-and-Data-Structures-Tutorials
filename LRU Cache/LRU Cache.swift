//
//  LRU Cache.swift
//  LRU Cache Test
//
//  Created by Steinhauer, Jan on 17.05.25.
//

import SwiftUI

class LRUCache {
    var cache = [Int: Int]()
    var keys = [Int]()
    let capacity: Int

    init(_ capacity: Int) {
        self.capacity = capacity
    }

    func get(_ key: Int) -> Int {
        if let value = cache[key] {
            keys.removeAll { $0 == key }
            keys.append(key)
            return value
        }
        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if cache[key] == nil && keys.count == capacity {
            let oldest = keys.removeFirst()
            cache.removeValue(forKey: oldest)
        }
        cache[key] = value
        keys.removeAll { $0 == key }
        keys.append(key)
    }
}

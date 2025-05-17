//
//  LRU_Cache_Test.swift
//  LRU Cache Test
//
//  Created by Steinhauer, Jan on 17.05.25.
//

import Testing

struct LRU_Cache_Test {
    
    @Test func testBasicPutAndGet() async throws {
        let cache = LRUCache(2)
        cache.put(1, 1)
        cache.put(2, 2)
        
        #expect(cache.get(1) == 1) // returns 1
        #expect(cache.get(2) == 2) // returns 2
    }

    @Test func testEviction() async throws {
        let cache = LRUCache(2)
        cache.put(1, 1)
        cache.put(2, 2)
        cache.put(3, 3) // evicts key 1

        #expect(cache.get(1) == -1) // not found
        #expect(cache.get(2) == 2)  // still exists
        #expect(cache.get(3) == 3)  // just added
    }

    @Test func testUpdateValue() async throws {
        let cache = LRUCache(2)
        cache.put(1, 1)
        cache.put(1, 10) // update value

        #expect(cache.get(1) == 10)
    }

    @Test func testOrderChangeOnGet() async throws {
        let cache = LRUCache(2)
        cache.put(1, 1)
        cache.put(2, 2)
        _ = cache.get(1) // 1 becomes most recently used
        cache.put(3, 3)  // evicts key 2

        #expect(cache.get(1) == 1)
        #expect(cache.get(2) == -1)
        #expect(cache.get(3) == 3)
    }
}

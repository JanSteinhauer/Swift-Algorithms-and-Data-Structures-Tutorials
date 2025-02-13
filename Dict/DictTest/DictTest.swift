//
//  DictTest.swift
//  DictTest
//
//  Created by Steinhauer, Jan on 2/13/25.
//

import Testing

struct DictionaryTest {
    
    @Test func testDictionaryOperations() async throws {
        let dict = DictionaryMap<String, Int>()
        
        // Test initial state
        #expect(dict.isEmpty)
        #expect(dict.count == 0)
        
        // Test insert operation
        dict.insert(key: "one", value: 1)
        dict.insert(key: "two", value: 2)
        dict.insert(key: "three", value: 3)
        
        #expect(!dict.isEmpty)
        #expect(dict.count == 3)
        #expect(dict.getValue(forKey: "one") == 1)
        #expect(dict.getValue(forKey: "two") == 2)
        #expect(dict.getValue(forKey: "three") == 3)
        
        // Test remove operation
        let removedValue = dict.remove(key: "two")
        #expect(removedValue == 2)
        #expect(dict.count == 2)
        #expect(dict.getValue(forKey: "two") == nil)
        
        // Test contains key
        #expect(dict.containsKey("one"))
        #expect(!dict.containsKey("two"))
        
        // Remove all elements
        _ = dict.remove(key: "one")
        _ = dict.remove(key: "three")
        
        #expect(dict.isEmpty)
    }
    
    @Test func testGenericDictionary() async throws {
        let dict = DictionaryMap<Int, String>()
        
        dict.insert(key: 1, value: "Apple")
        dict.insert(key: 2, value: "Banana")
        
        #expect(dict.getValue(forKey: 1) == "Apple")
        #expect(dict.getValue(forKey: 2) == "Banana")
        
        let removed = dict.remove(key: 1)
        #expect(removed == "Apple")
        
        #expect(dict.getValue(forKey: 1) == nil)
        #expect(dict.getValue(forKey: 2) == "Banana")
        
        #expect(dict.count == 1)
    }
}

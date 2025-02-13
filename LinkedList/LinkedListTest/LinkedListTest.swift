//
//  LinkedListTest.swift
//  LinkedListTest
//
//  Created by Steinhauer, Jan on 2/13/25.
//

import Testing

struct LinkedListTest {
    
    @Test func testLinkedListOperations() async throws {
        let list = LinkedList<Int>()
        
        // Test initial state
        #expect(list.isEmpty)
        #expect(list.count == 0)
        #expect(list.first == nil)
        
        // Test append operation
        list.append(10)
        list.append(20)
        list.append(30)
        
        #expect(!list.isEmpty)
        #expect(list.count == 3)
        #expect(list.first == 10)
        
        // Test removeFirst operation
        let firstElement = list.removeFirst()
        #expect(firstElement == 10)
        #expect(list.count == 2)
        #expect(list.first == 20)
        
        let secondElement = list.removeFirst()
        #expect(secondElement == 20)
        #expect(list.count == 1)
        #expect(list.first == 30)
        
        let thirdElement = list.removeFirst()
        #expect(thirdElement == 30)
        #expect(list.isEmpty)
        #expect(list.count == 0)
        #expect(list.first == nil)
        
        // Test removeFirst from an empty list
        let emptyRemove = list.removeFirst()
        #expect(emptyRemove == nil)
    }
    
    @Test func testGenericLinkedList() async throws {
        let list = LinkedList<String>()
        
        list.append("Hello")
        list.append("World")
        
        #expect(list.first == "Hello")
        
        let first = list.removeFirst()
        #expect(first == "Hello")
        
        let second = list.removeFirst()
        #expect(second == "World")
        
        #expect(list.isEmpty)
    }
}

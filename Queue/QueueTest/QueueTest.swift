//
//  QueueTest.swift
//  QueueTest
//
//  Created by Steinhauer, Jan on 2/12/25.
//

import Testing

struct QueueTest {
    
    @Test func testQueueOperations() async throws {
        let queue = Queue<Int>()
        
        // Test initial state
        #expect(queue.isEmpty)
        #expect(queue.count == 0)
        #expect(queue.peek == nil)
        
        // Test enqueue operation
        queue.enqueue(10)
        queue.enqueue(20)
        queue.enqueue(30)
        
        #expect(!queue.isEmpty)
        #expect(queue.count == 3)
        #expect(queue.peek == 10)
        
        // Test dequeue operation
        let firstElement = queue.dequeue()
        #expect(firstElement == 10)
        #expect(queue.count == 2)
        #expect(queue.peek == 20)
        
        let secondElement = queue.dequeue()
        #expect(secondElement == 20)
        #expect(queue.count == 1)
        #expect(queue.peek == 30)
        
        let thirdElement = queue.dequeue()
        #expect(thirdElement == 30)
        #expect(queue.isEmpty)
        #expect(queue.count == 0)
        #expect(queue.peek == nil)
        
        // Test dequeue from empty queue
        let emptyDequeue = queue.dequeue()
        #expect(emptyDequeue == nil)
    }
    
    @Test func testGenericQueue() async throws {
        let queue = Queue<String>()
        
        queue.enqueue("Hello")
        queue.enqueue("World")
        
        #expect(queue.peek == "Hello")
        
        let first = queue.dequeue()
        #expect(first == "Hello")
        
        let second = queue.dequeue()
        #expect(second == "World")
        
        #expect(queue.isEmpty)
    }
}


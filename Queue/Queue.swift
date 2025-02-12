//
//  Queue.swift
//  Queue
//
//  Created by Steinhauer, Jan on 2/12/25.
//

import Foundation

// A queue is a linear data structure that follows the First-In-First-Out (FIFO) principle.
// - The first element added is the first one to be removed (like a line at a store).
// - It has two main operations:
//   - Enqueue: Adding an element to the back of the queue.
//   - Dequeue: Removing an element from the front of the queue.
// - A queue can be implemented using arrays or linked lists.

class Queue<T> {
    private var elements: [T] = []
    
    // Check if the queue is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    // Return the front element without removing it
    var peek: T? {
        return elements.first
    }
    
    // Enqueue an element (add to the back of the queue)
    func enqueue(_ element: T) {
        elements.append(element)
    }
    
    // Dequeue an element (remove from the front of the queue)
    func dequeue() -> T? {
        return isEmpty ? nil : elements.removeFirst()
    }
    
    // Return the size of the queue
    var count: Int {
        return elements.count
    }
}


// Extension to demonstrate Swift's built-in support for the function removeFirstElement
extension Array {
    mutating func removeFirstElement() -> Element? {
        guard !isEmpty else { return nil }
        let firstElement = self[0]
        self = Array(self[1...])
        return firstElement
    }
}

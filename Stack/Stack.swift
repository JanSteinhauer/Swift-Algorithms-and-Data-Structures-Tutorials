//
//  Stack.swift
//  Stack
//
//  Created by Steinhauer, Jan on 2/12/25.
//

import Foundation

// A stack is a linear data structure that follows the Last-In-First-Out (LIFO) principle.
// - The last element added is the first one to be removed (like a stack of plates).
// - It has two main operations:
//   - Push: Adding an element to the top of the stack.
//   - Pop: Removing an element from the top of the stack.
// - A stack can be implemented using arrays or linked lists.

class Stack<T> {
    private var elements: [T] = []
    
    // Check if the stack is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    // Return the top element without removing it
    var peek: T? {
        return elements.last
    }
    
    // Push an element (add to the top of the stack)
    func push(_ element: T) {
        elements.append(element)
    }
    
    // Pop an element (remove from the top of the stack)
    func pop() -> T? {
        return elements.popLast()
    }
    
    // Return the size of the stack
    var count: Int {
        return elements.count
    }
}

// Extension to demonstrate Swift's built-in support for the function popLastElement
extension Array {
    mutating func popLastElement() -> Element? {
        guard !isEmpty else { return nil }
        return remove(at: count - 1)
    }
}


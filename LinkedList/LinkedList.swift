//
//  LinkedList.swift
//  LinkedList
//
//  Created by Steinhauer, Jan on 2/13/25.
//

import Foundation

// A linked list is a linear data structure where elements (nodes) are connected using pointers.
// - Unlike arrays, linked lists do not have a fixed size and allow dynamic memory allocation.
// - It has two main types:
//   - Singly Linked List: Each node points to the next node.
//   - Doubly Linked List: Each node points to both the next and previous nodes.
//
// The primary operations include:
// - Insert: Adding an element at the head or tail.
// - Remove: Deleting an element from the head or tail.
// - Search: Finding an element in the list.

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode<T>?
    
    init(value: T) {
        self.value = value
        self.next = nil
    }
}

class LinkedList<T> {
    private var head: LinkedListNode<T>?
    private var tail: LinkedListNode<T>?
    private var size: Int = 0
    
    // Check if the list is empty
    var isEmpty: Bool {
        return head == nil
    }
    
    // Return the first element without removing it
    var first: T? {
        return head?.value
    }
    
    // Append an element to the end of the list
    func append(_ value: T) {
        let newNode = LinkedListNode(value: value)
        if let lastNode = tail {
            lastNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
        size += 1
    }
    
    // Remove the first element from the list
    func removeFirst() -> T? {
        guard let firstNode = head else { return nil }
        head = firstNode.next
        if head == nil {
            tail = nil
        }
        size -= 1
        return firstNode.value
    }
    
    // Return the size of the linked list
    var count: Int {
        return size
    }
}

// Extension to allow removing the first element of an array-based linked list representation
extension Array {
    mutating func removeFirstElement() -> Element? {
        guard !isEmpty else { return nil }
        let firstElement = self[0]
        self = Array(self[1...])
        return firstElement
    }
}

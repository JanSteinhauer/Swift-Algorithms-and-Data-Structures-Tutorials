//
//  StackTest.swift
//  StackTest
//
//  Created by Steinhauer, Jan on 2/12/25.
//

import Testing

struct StackTest {

    @Test
    func testStackOperations() async throws {
        var stack = Stack<Int>()

        // Test if the stack starts empty
        #expect(stack.isEmpty == true, "Stack should be empty initially")
        #expect(stack.count == 0, "Stack count should be 0 initially")

        // Push elements into the stack
        stack.push(10)
        stack.push(20)
        stack.push(30)

        #expect(stack.isEmpty == false, "Stack should not be empty after pushing elements")
        #expect(stack.count == 3, "Stack count should be 3 after pushing 3 elements")
        #expect(stack.peek == 30, "Peek should return the last pushed element (30)")

        // Pop elements and check order
        #expect(stack.pop() == 30, "Pop should return the last pushed element (30)")
        #expect(stack.pop() == 20, "Pop should return the next last element (20)")

        #expect(stack.count == 1, "Stack count should be 1 after popping twice")
        #expect(stack.peek == 10, "Peek should now return 10")

        // Pop the last element
        #expect(stack.pop() == 10, "Last pop should return 10")
        #expect(stack.isEmpty == true, "Stack should be empty after popping all elements")
        #expect(stack.pop() == nil, "Pop on an empty stack should return nil")
    }
}


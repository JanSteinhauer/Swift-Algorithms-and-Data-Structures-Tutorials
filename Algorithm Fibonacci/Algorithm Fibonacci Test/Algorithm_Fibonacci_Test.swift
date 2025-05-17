//
//  Algorithm_Fibonacci_Test.swift
//  Algorithm Fibonacci Test
//
//  Created by Steinhauer, Jan on 17.05.25.
//

import Testing

struct Algorithm_Fibonacci_Test {

    @Test func testFibonacciValues() async throws {
        #expect(fibonacci(0) == 0)
        #expect(fibonacci(1) == 1)
        #expect(fibonacci(2) == 1)
        #expect(fibonacci(3) == 2)
        #expect(fibonacci(4) == 3)
        #expect(fibonacci(5) == 5)
        #expect(fibonacci(6) == 8)
        #expect(fibonacci(10) == 55)
    }

    @Test func testFibonacciEdgeCases() async throws {
        #expect(fibonacci(-1) == -1) 
    }
}

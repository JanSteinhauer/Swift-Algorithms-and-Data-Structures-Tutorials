//
//  Number_to_Bits_Algorithm.swift
//  Number to Bits Algorithm
//
//  Created by Steinhauer, Jan on 07.05.25.
//

import Testing

struct Number_to_Bits_Algorithm {

    @Test func testZero() async throws {
        let result = numberToBits(0)
        #expect(result == [0])
    }

    @Test func testOne() async throws {
        let result = numberToBits(1)
        #expect(result == [1])
    }

    @Test func testTwo() async throws {
        let result = numberToBits(2)
        #expect(result == [1, 0])
    }

    @Test func testFifteen() async throws {
        let result = numberToBits(15)
        #expect(result == [1, 1, 1, 1])
    }

    @Test func testLargeNumber() async throws {
        let result = numberToBits(1023)
        #expect(result == Array(repeating: 1, count: 10))
    }

    @Test func testNegativeNumber() async throws {
        let result = numberToBits(-5)
        #expect(result == [])
    }
}

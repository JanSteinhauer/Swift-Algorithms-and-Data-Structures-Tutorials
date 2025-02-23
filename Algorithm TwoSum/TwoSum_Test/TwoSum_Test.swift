//
//  TwoSum_Test.swift
//  TwoSum_Test
//
//  Created by Steinhauer, Jan on 2/22/25.
//

import Testing

struct TwoSum_Test {

    @Test func testTwoSum() async throws {
        // Test Case 1: Basic Example
        #expect(twoSum([2, 7, 11, 15], 9) == [0, 1])

        // Test Case 2: Negative Numbers
        #expect(twoSum([-1, -2, -3, -4, -5], -8) == [2, 4])

        // Test Case 3: Duplicates in Array
        #expect(twoSum([3, 2, 4], 6) == [1, 2])

        // Test Case 4: Large Input
        #expect(twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 19) == [8, 9])

        // Test Case 5: No Solution
        #expect(twoSum([1, 2, 3, 4], 10) == [])

        // Test Case 6: Edge Case - Two Identical Elements
        #expect(twoSum([3, 3], 6) == [0, 1])

        // Test Case 7: All Negative Numbers
        #expect(twoSum([-10, -20, -30, -40], -50) == [1, 2])

        // Test Case 8: Array with Zero
        #expect(twoSum([0, 4, 3, 0], 0) == [0, 3])
    }
}


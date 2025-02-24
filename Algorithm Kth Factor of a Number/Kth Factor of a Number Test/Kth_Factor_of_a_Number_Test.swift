//
//  Kth_Factor_of_a_Number_Test.swift
//  Kth Factor of a Number Test
//
//  Created by Steinhauer, Jan on 2/24/25.
//

import Testing

struct Kth_Factor_of_a_Number_Test {

    @Test func example() async throws {
        // Test Case 1: Standard case
        #expect(kthFactor(12, 3) == 3) // Factors of 12: [1, 2, 3, 4, 6, 12] → 3rd factor is 3

        // Test Case 2: Prime number with only two factors
        #expect(kthFactor(7, 2) == 7) // Factors of 7: [1, 7] → 2nd factor is 7

        // Test Case 3: k is greater than the number of factors
        #expect(kthFactor(4, 4) == -1) // Factors of 4: [1, 2, 4] → No 4th factor

        // Test Case 4: Edge case with smallest n
        #expect(kthFactor(1, 1) == 1) // Factors of 1: [1] → 1st factor is 1
        #expect(kthFactor(1, 2) == -1) // No 2nd factor

       
        // Test Case 5: n is a perfect square
        #expect(kthFactor(16, 4) == 8) // Factors of 16: [1, 2, 4, 8, 16] → 4th factor is 8

        // Test Case 6: n is even, k is out of bounds
        #expect(kthFactor(10, 6) == -1) // Factors of 10: [1, 2, 5, 10] → No 6th factor
    }
}


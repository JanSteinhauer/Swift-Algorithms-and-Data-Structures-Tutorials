//
//  AlgorithmRearranging_Digits_in_Descending_Order_Test.swift
//  AlgorithmRearranging Digits in Descending Order Test
//
//  Created by Steinhauer, Jan on 2/20/25.
//

import Testing

struct AlgorithmRearranging_Digits_in_Descending_Order_Test {

    @Test func example() async throws {
        // Test Case 1: General Case
        #expect(descendingOrder(of: 42145) == 54421)
        
        // Test Case 2: Already Sorted Input
        #expect(descendingOrder(of: 987654321) == 987654321)
        
        // Test Case 3: Random Digits
        #expect(descendingOrder(of: 145263) == 654321)

        // Test Case 4: Single-digit number (should remain the same)
        #expect(descendingOrder(of: 5) == 5)

        // Test Case 5: All digits are the same
        #expect(descendingOrder(of: 111) == 111)

        // Test Case 6: Number contains a zero
        #expect(descendingOrder(of: 10234) == 43210)

        // Test Case 7: Input is zero
        #expect(descendingOrder(of: 0) == 0)
    }
}

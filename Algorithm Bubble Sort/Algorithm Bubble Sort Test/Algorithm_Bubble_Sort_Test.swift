//
//  Algorithm_Bubble_Sort_Test.swift
//  Algorithm Bubble Sort Test
//
//  Created by Steinhauer, Jan on 17.05.25.
//

import Testing

struct Algorithm_Bubble_Sort_Test {

    @Test func example() async throws {
        // Test 1: Already sorted array
        let sorted = bubbleSort([1, 2, 3, 4, 5])
        #expect(sorted == [1, 2, 3, 4, 5])

        // Test 2: Reverse sorted array
        let reversed = bubbleSort([5, 4, 3, 2, 1])
        #expect(reversed == [1, 2, 3, 4, 5])

        // Test 3: Random order
        let random = bubbleSort([3, 1, 4, 5, 2])
        #expect(random == [1, 2, 3, 4, 5])

        // Test 4: Empty array
        let empty: [Int] = bubbleSort([])
        #expect(empty == [])

        // Test 5: Array with duplicates
        let duplicates = bubbleSort([4, 2, 4, 1, 2])
        #expect(duplicates == [1, 2, 2, 4, 4])

        // Test 6: Single element
        let single = bubbleSort([42])
        #expect(single == [42])
    }
}

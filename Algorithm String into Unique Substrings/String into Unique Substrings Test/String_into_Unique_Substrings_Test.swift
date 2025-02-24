//
//  String_into_Unique_Substrings_Test.swift
//  String into Unique Substrings Test
//
//  Created by Steinhauer, Jan on 2/24/25.
//

import Testing

struct String_into_Unique_Substrings_Test {

    @Test func example() async throws {
        // Basic test case
        #expect(partitionString("abac") == 2)

        // All unique characters (should return 1)
        #expect(partitionString("abcdef") == 1)

        // All identical characters (should return length of string)
        #expect(partitionString("aaaa") == 4)

        // Alternating characters (should return 3)
        #expect(partitionString("abab") == 2)

        // Single character string (should return 1)
        #expect(partitionString("a") == 1)

        // Large input with repeating pattern (ensuring performance)
        let longString = String(repeating: "abc", count: 10000) // "abcabcabc..."
        #expect(partitionString(longString) == 10000)
    }

}


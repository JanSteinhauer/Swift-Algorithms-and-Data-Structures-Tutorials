//
//  Palindrome_Test.swift
//  Palindrome_Test
//
//  Created by Steinhauer, Jan on 2/22/25.
//

import Testing

struct Palindrome_Test {

    @Test func testPositivePalindromes() async throws {
        #expect(isPalindrome(121) == true)
        #expect(isPalindrome(1221) == true)
        #expect(isPalindrome(0) == true)
        #expect(isPalindrome(9) == true)
    }

    @Test func testNegativeNumbers() async throws {
        #expect(isPalindrome(-121) == false)
        #expect(isPalindrome(-1221) == false)
        #expect(isPalindrome(-1) == false)
    }

    @Test func testNonPalindromes() async throws {
        #expect(isPalindrome(10) == false)
        #expect(isPalindrome(123) == false)
        #expect(isPalindrome(1001) == true)
    }

    @Test func testEdgeCases() async throws {
        #expect(isPalindrome(100) == false) // Leading zero after reversal
        #expect(isPalindrome(1000021) == false) // Large non-palindrome number
        #expect(isPalindrome(1234554321) == true) // Large palindrome number
    }
}

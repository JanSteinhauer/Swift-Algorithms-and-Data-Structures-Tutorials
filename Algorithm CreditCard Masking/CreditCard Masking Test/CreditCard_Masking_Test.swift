//
//  CreditCard_Masking_Test.swift
//  CreditCard Masking Test
//
//  Created by Steinhauer, Jan on 2/20/25.
//

import Testing

struct CreditCard_Masking_Test {

    @Test func example() async throws {
        // Test cases to verify maskify function
        
        // Case 1: Standard case with more than 4 characters
        #expect(maskify("123456789") == "#####6789")
        
        // Case 2: Exactly 4 characters (should remain unchanged)
        #expect(maskify("abcd") == "abcd")
        
        // Case 3: Less than 4 characters (should remain unchanged)
        #expect(maskify("hi") == "hi")
        
        // Case 4: Empty string (should return an empty string)
        #expect(maskify("") == "")
        
        // Case 5: Single character (should remain unchanged)
        #expect(maskify("a") == "a")
        
        // Case 6: Long numeric string (e.g., credit card number)
        #expect(maskify("1234567812345678") == "############5678")
    }
}

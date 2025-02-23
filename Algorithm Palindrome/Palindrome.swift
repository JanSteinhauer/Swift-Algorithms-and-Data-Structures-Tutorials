//
//  Palindrome.swift
//  Palindrome_Test
//
//  Created by Steinhauer, Jan on 2/22/25.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    
    let target = String(x)
    
    
    // target.reversed() is returning a ReversedCollection<String> therefore we need to convert it back to a String
    let reversedTarget = String(target.reversed())
    
    return target == reversedTarget
}

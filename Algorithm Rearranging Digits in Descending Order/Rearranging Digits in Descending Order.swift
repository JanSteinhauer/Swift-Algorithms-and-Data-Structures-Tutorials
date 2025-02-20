//
//  Rearranging Digits in Descending Order.swift
//  AlgorithmRearranging Digits in Descending Order Test
//
//  Created by Steinhauer, Jan on 2/20/25.
//

import Foundation

func descendingOrder(of number: Int) -> Int {
//    map           Transforms elements and keeps nil values in the output
//    compactMap    Transforms elements and removes nil values automatically
    
    if number < 0 {
        return 0
    }
    
    // Convert number to an array of digits
    // $0 is a shorthand for the first parameter in a closure
    let digits = String(number).compactMap { $0.wholeNumberValue }
    
    let sortedNumber = digits.sorted(by: >).map(String.init).joined()
    
    return Int(sortedNumber) ?? 0
}

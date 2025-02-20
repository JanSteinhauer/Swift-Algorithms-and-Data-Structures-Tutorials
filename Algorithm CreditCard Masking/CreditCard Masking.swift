//
//  CreditCard Masking.swift
//  Algorithm CreditCard Masking
//
//  Created by Steinhauer, Jan on 2/20/25.
//

import Foundation

func maskify(_ string: String) -> String {
    let string_count = string.count

    if string_count < 5 {
        return string
    }

    var maskedString = Array(string) // other then in Python you can't iterate through a String
    
    for i in stride(from: 0, to: string_count - 4, by: 1) {
        maskedString[i] = "#"
    }
    
    return String(maskedString) 
}

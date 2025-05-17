//
//  Number to Bits.swift
//  Number to Bits Algorithm
//
//  Created by Steinhauer, Jan on 07.05.25.
//

import SwiftUI

func numberToBits(_ number: Int) -> [Int] {
    guard number >= 0 else { return []}
    let binaryString = String(number, radix: 2)
    return binaryString.compactMap { $0.wholeNumberValue}
}



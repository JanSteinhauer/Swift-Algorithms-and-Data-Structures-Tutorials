//
//  Bubble Sort.swift
//  Algorithm Bubble Sort Test
//
//  Created by Steinhauer, Jan on 17.05.25.
//

import SwiftUI

func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
    var sortedArray = array
    let count = sortedArray.count

    guard count > 1 else { return sortedArray }

    for i in 0..<count {
        for j in 0..<count - i - 1 {
            if sortedArray[j] > sortedArray[j + 1] {
                sortedArray.swapAt(j, j + 1)
            }
        }
    }

    return sortedArray
}

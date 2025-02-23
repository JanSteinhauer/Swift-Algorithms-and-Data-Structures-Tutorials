//
//  TwoSum.swift
//  Algorithm TwoSum
//
//  Created by Steinhauer, Jan on 2/22/25.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // Key is the individual num and Value is the index in the comming for loop
    var numIndexDict = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        let missingNumber = target - num
        if let missingNumberIndex = numIndexDict[missingNumber] {
            return [missingNumberIndex, i]
        }
        numIndexDict[num] = i
    }
    
    return []
}

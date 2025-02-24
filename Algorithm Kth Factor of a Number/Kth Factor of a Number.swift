//
//  Kth Factor of a Number.swift
//  Kth Factor of a Number Test
//
//  Created by Steinhauer, Jan on 2/24/25.
//

import Foundation

func kthFactor(_ n: Int, _ k: Int) -> Int {
    var kth_factor_array: [Int] = []
    
    for num in 1...n {
        if n % num == 0 {
            kth_factor_array.append(num)
            if kth_factor_array.count == k {
                return num
            }
        }
    }
    
    return -1
}

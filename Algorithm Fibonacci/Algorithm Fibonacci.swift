//
//  Algorithm Fibonacci.swift
//  Algorithm Fibonacci Test
//
//  Created by Steinhauer, Jan on 17.05.25.
//

import SwiftUI

func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

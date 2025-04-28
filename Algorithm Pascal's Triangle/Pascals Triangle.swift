//
//  Pascals Triangle.swift
//  Algorithm Pascals Triangle Test
//
//  Created by Steinhauer, Jan on 28.04.25.
//

import Foundation

class PascalsTriangle {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle: [[Int]] = []
        
        for i in 0 ..< numRows {
            var row: [Int] = Array(repeating: 1, count: i + 1)
            if i >= 2 {
                for j in 1..<i {
                    row[j] = triangle[i-1][j-1] + triangle[i-1][j]
                    
                }
            }
            triangle.append(row)
            
        }
        
        return triangle
    }
}

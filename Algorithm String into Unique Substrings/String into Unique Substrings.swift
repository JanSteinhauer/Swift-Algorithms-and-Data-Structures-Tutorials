//
//  String into Unique Substrings.swift
//  String into Unique Substrings Test
//
//  Created by Steinhauer, Jan on 2/24/25.
//

import Foundation

func partitionString(_ s: String) -> Int {
    
    var current_string = ""
    
    //result is initilized as 1 bc the last partition is alredy counted in
    var result = 1
    
    for (i, char) in s.enumerated() {
        //when the char is already in the dict so it is double
        if current_string.contains(char){
            result += 1
            current_string = ""
        }
        current_string = current_string + String(char)
    }
    return result
}

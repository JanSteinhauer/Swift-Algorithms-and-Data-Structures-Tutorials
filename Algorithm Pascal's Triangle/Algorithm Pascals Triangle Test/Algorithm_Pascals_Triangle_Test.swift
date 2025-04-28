//
//  Algorithm_Pascals_Triangle_Test.swift
//  Algorithm Pascals Triangle Test
//
//  Created by Steinhauer, Jan on 28.04.25.
//

import Testing

struct Algorithm_Pascals_Triangle_Test {

    @Test func example() async throws {
        let solution = PascalsTriangle()

        #expect(solution.generate(1) == [[1]])
        #expect(solution.generate(2) == [[1], [1, 1]])
        #expect(solution.generate(3) == [[1], [1,1], [1,2,1]])
        #expect(solution.generate(4) == [[1], [1,1], [1,2,1], [1,3,3,1]])
        #expect(solution.generate(5) == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]])
        #expect(solution.generate(6) == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1], [1,5,10,10,5,1]])
    }

}


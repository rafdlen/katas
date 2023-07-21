//
//  FibonacciSequence.swift
//  Katas
//
//  Created by Ana Nogal on 29/12/22.
//

import Foundation

func FibonacciSequence(num: Int) -> Int {
    if num == 0 {
        return 0
    }
    else if num == 1 {
        return 1
    }
    else {
        return FibonacciSequence(num: num - 1) + FibonacciSequence(num: num - 2)
    }
}

//
//  FibonacciSequence.swift
//  Katas
//
//  Created by Ana Nogal on 29/12/22.
//

import Foundation

struct Fibonacci {
    func calculate(_ position: Int) -> Int
    {
        if position == 1 {
            return 0
        }
        if position == 2 {
            return 1
        }
        if position == 3 {
            return 1
        }
        return self.calculate(position - 2) + self.calculate(position - 1)
        }
    }


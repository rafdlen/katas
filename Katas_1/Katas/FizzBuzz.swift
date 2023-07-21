//
//  FizzBuzz.swift
//  Katas
//
//  Created by Ana Nogal on 29/12/22.
//

import Foundation

func FizzBuzz() -> [Any] {
    
    let fizzBuzzArrInitial: [Int] = Array(1...100)
    var fizzBuzzArrFinal: [Any] = Array(1...100)
    
    for index in 0...99 {
        if fizzBuzzArrInitial[index] % 3 == 0 && fizzBuzzArrInitial[index] % 5 != 0 {
            fizzBuzzArrFinal[index] = "Fizz"
        }
        else if fizzBuzzArrInitial[index] % 3 != 0 && fizzBuzzArrInitial[index] % 5 == 0 {
            fizzBuzzArrFinal[index] = "Buzz"
        }
        else if fizzBuzzArrInitial[index] % 3 == 0 && fizzBuzzArrInitial[index] % 5 == 0 {
            fizzBuzzArrFinal[index] = "FizzBuzz"
        }
    }
    return fizzBuzzArrFinal
}

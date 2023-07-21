//
//  FizzBuzzTests.swift
//  KatasTests
//
//  Created by Ana Nogal on 29/12/22.
//

/*
 FizzBuzz
 
 Write a program that prints the numbers from 1 to 100.
 But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
 For numbers which are multiples of both three and five print “FizzBuzz“.
 
 Sample output:
 1
 2
 Fizz
 4
 Buzz
 Fizz
 7
 8
 Fizz
 Buzz
 11
 Fizz
 13
 14
 FizzBuzz
 16
 17
 Fizz
 19
 Buzz
 ... etc up to 100
 
 Remember:
 - Always start wih the simpliest case
 - [Apply the rule of 3](https://en.wikipedia.org/wiki/Rule_of_three_(computer_programming)):
 have at least 3x the same code so you can see a pattern emerge, then refactor
 
 Three rules of TDD:
 - Write production code only to pass a failing unit test.
 - Write no more of a unit test than sufficient to fail (compilation failures are failures).
 - Write no more production code than necessary to pass the one failing unit test.
 
 */

import XCTest
@testable import Katas

//Write the following unit tests:
final class FizzBuzzTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testShouldReturnOneWhenPassingOne() {
        let fiz = FizzBuzz()
        
        if let firstPos = fiz[0] as? Int{
            XCTAssertEqual(firstPos, 1)
        }
    }
    
    func testShouldReturnTwoWhenPassingNumberTwo() {
        let fiz = FizzBuzz()
        
        if let firstPos = fiz[1] as? Int{
            XCTAssertEqual(firstPos, 2)
        }
    }
    
    func testShouldReturnFourWhenPrintingNumberFour() {
        let fiz = FizzBuzz()
        
        if let firstPos = fiz[3] as? Int{
            XCTAssertEqual(firstPos, 4)
        }
    }
    
    func testShouldReturnFizzForMultiplesOfThree() {
        let fiz = FizzBuzz()
        for index in 0...99 {
            if (index + 1) % 5 != 0 && (index + 1) % 3 == 0 {
                if let a = fiz[index] as? String {
                    XCTAssertEqual(a, "Fizz")
                }
            }
        }
    }
        
    func testShouldReturnBuzzForMultiplesOfFive() {
        let fiz = FizzBuzz()
        for index in 0...99 {
            if (index + 1) % 5 == 0 && (index + 1) % 3 != 0 {
                if let a = fiz[index] as? String {
                XCTAssertEqual(a, "Buzz")
                }
            }
        }
    }
        
    func testShouldReturnFizzBuzzForMultiplesOfThreeAndFive() {
        let fiz = FizzBuzz()
        for index in 0...99 {
            if (index + 1) % 5 == 0 && (index + 1) % 3 == 0 {
                if let a = fiz[index] as? String {
                XCTAssertEqual(a, "FizzBuzz")
                }
            }
        }
    }
}


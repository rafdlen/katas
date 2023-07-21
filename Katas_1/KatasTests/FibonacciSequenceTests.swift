//
//  FibonacciSequenceTests.swift
//  KatasTests
//
//  Created by Ana Nogal on 29/12/22.
//

/*
 Fibonacci sequence
 
 In mathematics, the Fibonacci numbers, commonly denoted Fn , form a sequence, the Fibonacci sequence, in which each number is the sum of the two preceding ones.
 The sequence commonly starts from 0 and 1, although some authors start the sequence from 1 and 1 or sometimes (as did Fibonacci) from 1 and 2.
 Starting from 0 and 1, the first few values in the sequence are:
 
 0
 1
 1
 2
 3
 5
 8
 13
 21
 34
 55
 89
 144
 
 Write a program that given a position can tell which is the fibbunacci number
 
 Remember:
 - Always start wih the simpliest case
 - [Apply the rule of 3](https://en.wikipedia.org/wiki/Rule_of_three_(computer_programming)): have at least 3x the same code so you can see a pattern emerge, then refactor
 Three rules of TDD:
 * Write production code only to pass a failing unit test.
 * Write no more of a unit test than sufficient to fail (compilation failures are failures).
 * Write no more production code than necessary to pass the one failing unit test.
 Write the following unit tests:
 */

import XCTest
@testable import Katas

final class FibonacciSequenceTests: XCTestCase {
  
  override func setUp() {
  }
  
  override func tearDown() {
  }
  
  func testShouldReturnZeroAsTheFirstPosition() {
      let fib = FibonacciSequence(num: 0)
      
      XCTAssertEqual(fib, 0)
  }
  
  func testShouldReturnOneAsTheSecondPosition() {
      let fib = FibonacciSequence(num: 1)
      
      XCTAssertEqual(fib, 1)
  }
  
  func testShouldReturnOneAsTheThirdPosition() {
      let fib = FibonacciSequence(num: 2)
      
        XCTAssertEqual(fib, 1)
  }
  
  func testShouldReturnTwoForTheFourthPosition() {
      let fib = FibonacciSequence(num: 3)
      
        XCTAssertEqual(fib, 2)
  }
  
  func testShouldReturnTreeForTheFifthPosition() {
      let fib = FibonacciSequence(num: 4)
      
        XCTAssertEqual(fib, 3)
  }
  
  func testShouldReturnEightForTheSeventhPosition() {
      let fib = FibonacciSequence(num: 6)
      
        XCTAssertEqual(fib, 8)
  }
  
  func testShouldReturnThirtyFourForTheTenthPosition() {
      let fib = FibonacciSequence(num: 9)
      
        XCTAssertEqual(fib, 34)
  }
}


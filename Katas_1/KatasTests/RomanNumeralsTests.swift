//
//  RomanNumeralsTests.swift
//  KatasTests
//
//  Created by Ana Nogal on 4/1/23.
//
/*
 RomanNumerals
 
 Write a function that can convert Arabic numbers into Roman Numerals
 
 Acceptance Criteria:
 
 Given a positive number(for example 42), determine its Roman numeral representation as a String (XLII)
 1 - I        20 - XX       300 - CCC
 2 - II       30 - XXX      400 - CD
 3 - III      40 - XL       500 - D
 4 - IV       50 - L        600 - DC
 5 - V        60 - LX       700 - DCC
 6 - VI       70 - LXX      800 - DCCC
 7 - VII      80 - LXXX     900 - CM
 8 - VIII     90 - XC      1000 - M
 9 - IX      100 - C
 10 - X      200 - CC
 
 Examples:
 846 - DCCCXLVI
 1999 - MCMXCIX
 2008 - MMVIII
 */

import XCTest
@testable import Katas

final class RomanNumeralsTests: XCTestCase {
    override func setUp() {
    }
    
    override func tearDown() {
    }
    
    func testShouldReturnIIifNumIsTwo() {
        let roman = RomanNumerals(num: 2)
        
        XCTAssertEqual(roman, "II")
    }
    
    func testShouldReturnDCCCXLVIifNumIsEgighthundredAndSix() {
        let roman = RomanNumerals(num: 846)
        
        XCTAssertEqual(roman, "DCCCXLVI")
    }
    
    func testShouldReturnMMVIIIifNumIs2008() {
        let roman = RomanNumerals(num: 2008)
        
        XCTAssertEqual(roman, "MMVIII")
    }
    
    func testShouldReturnMCMXCIXifNumIs1999() {
        let roman = RomanNumerals(num: 1999)

        XCTAssertEqual(roman, "MCMXCIX")
    }
    
}

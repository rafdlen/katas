//
//  RomanNumerals.swift
//  Katas
//
//  Created by Ana Nogal on 4/1/23.
//

import Foundation

func RomanNumerals(num: Int) -> String {
    
    var returnNum = ""
    
    let romanNumerals: [Int: String] = [
        0: "",
        1: "I",
        2: "II",
        3: "III",
        4: "IV",
        5: "V",
        6: "VI",
        7: "VII",
        8: "VIII",
        9: "IX",
        10: "X",
        20: "XX",
        30: "XXX",
        40: "XL",
        50: "L",
        60: "LX",
        70: "LXX",
        80: "LXXX",
        90: "XC",
        100: "C",
        200: "CC",
        300: "CCC",
        400: "CD",
        500: "D",
        600: "DC",
        700: "DCC",
        800: "DCCC",
        900: "CM",
        1000: "M",
        2000: "MM"
    ]
    
    let numToString = String(num)
    let numToStringLength = numToString.count
    
    for (ke, va) in romanNumerals {
        if ke == num {
            return va
        }
    }
    
    if numToStringLength > 2 {
      var curInd = 0
        
        var rev_nums: [Int] = []
        for index in numToString {
            let numeralInt = Int(String(index))!
            rev_nums.append(numeralInt)
        }
        
        rev_nums.reverse()
        
        
        for num in rev_nums {
            
            print("num: " + String(num))
            
            if curInd == 0 {
                let n1 = num
                let key = n1
                if let val = romanNumerals[key] {
                    let pre = val
                    returnNum = pre + returnNum
                    curInd += 1
                }
            }
            
            else if curInd == 1 {
                let n2 = num * 10
                let key = n2
                let val = String(romanNumerals[key]!)
                    let pre = val
                    returnNum = pre + returnNum
                    curInd += 1
            }
            
            else if curInd == 2 {
                let n2 = num * 100
                let key = n2
                if let val = romanNumerals[key] {
                    let pre = val
                    returnNum = pre + returnNum
                    curInd += 1
                }
            }
            
            else if curInd == 3 {
                let n3 = num * 1000
                let key = n3
                if let val = romanNumerals[key] {
                    let pre = val
                    returnNum = pre + returnNum
                    curInd += 1
                }
            }
            
        }
    }
    return returnNum
}

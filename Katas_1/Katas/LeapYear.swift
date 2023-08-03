//
//  LeapYear.swift
//  Katas
//
//  Created by Ana Nogal on 29/12/22.
//

import Foundation

struct LeapYear {
    func isLeapYear(_ year: Int) -> String {
        if year % 100 == 0 && year % 400 != 0 {
            return "Not leap year."
        }
        if year % 4 == 0 && year % 100 != 0 {
            return "Leap year."
        }
        if year % 4 != 0 {
            return "Not leap year."
        }
        return "Leap year."
    }
}


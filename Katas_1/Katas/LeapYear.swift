//
//  LeapYear.swift
//  Katas
//
//  Created by Ana Nogal on 29/12/22.
//

import Foundation

func LeapYear(year: Int) -> String {
    if year % 400 == 0 {
        return "Leap year."
    }
    else if year % 400 != 0 && year % 100 == 0 {
        return "Not leap year."
    }
    else if year % 100 != 0 && year % 4 == 0 {
        return "Leap year."
    }
    else if year % 4 != 0 {
        return "Not leap year."
    }
    return "1"
}

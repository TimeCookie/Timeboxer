//
//  MonthChecker.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 09/04/22.
//

import Foundation

let month_en: [Int: String] = [
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December"
]

func monthChecker(_ month: Int) -> String {
    
    return month_en[month] ?? "Invalid month"
    
}

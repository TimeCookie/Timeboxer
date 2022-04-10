//
//  GreetingCheck.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 09/04/22.
//

import Foundation

let greetings: [String] = [
    "Good morning,",
    "Good afternoon,",
    "Good evening,"
]

func greetingCheck(_ time:Int) -> String {
    if (time > 0) && (time <= 12) {
        return greetings[0]
    }
    else if(time > 12) && (time <= 18) {
        return greetings[1]
    }
    else {
        return greetings[2]
    }
}

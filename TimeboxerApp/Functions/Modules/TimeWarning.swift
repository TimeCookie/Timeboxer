//
//  TimeWarning.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 09/04/22.
//

import Foundation
import SwiftUI

func timeWarning(_ startTime: Date, _ endTime: Date) -> Text {
    let startHour:Int = Int(extractTime(extractMode: "hh", el: startTime))!
    let endHour:Int = Int(extractTime(extractMode: "hh", el: endTime))!
    
    if(abs(startHour - endHour) > 8) {
        return Text("Timebox allocated more than 8 hours").foregroundColor(.yellow)
    }
    else {
        return Text("Good working time").foregroundColor(.green)
    }
}

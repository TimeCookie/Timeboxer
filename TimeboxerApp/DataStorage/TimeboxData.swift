//
//  TimeboxData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation

class TimeboxData: ObservableObject {
    static let shared = TimeboxData()
    
    @Published var activeTimebox: [Timebox] = [
        Timebox(activityName: "Playing game", startTime: Date(), endTime: Date(), reminder: "off", description: "This is a description", isFinished: false)
    ]
}

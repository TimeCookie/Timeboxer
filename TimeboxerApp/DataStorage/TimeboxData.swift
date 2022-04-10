//
//  TimeboxData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation

class TimeboxData: ObservableObject {
    static let shared = TimeboxData()
    public var initializing = false
    
    @Published var activeTimebox: [Timebox] = [
        Timebox(activityName: "Start adding timebox", startTime: Date(), endTime: Date(), reminder: "off", description: "This timebox cannot be deleted manually, it will remove itself once you've added at least one timebox", isFinished: false)
    ]
}

//
//  InitialLaunch.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 11/04/22.
//

import Foundation

func launch() {
    var db = UserDefaults.standard.activeTimebox
    let timeboxData = TimeboxData.shared
    
    if(db.count == 0) {
        db.append(Timebox(activityName: "Start adding timebox", startTime: Date(), endTime: Date(), reminder: "off", description: "This timebox cannot be deleted manually, it will remove itself once you've added at least one timebox", isFinished: true))
    }
    
    for i in 0..<db.count {
        timeboxData.activeTimebox.append(db[i])
    }
}

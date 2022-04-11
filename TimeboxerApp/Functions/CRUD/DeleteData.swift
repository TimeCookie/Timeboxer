//
//  DeleteData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation

func deleteData(_ tb: Timebox) {
    let timeboxId = tb.id
    let timeboxData = TimeboxData.shared
    let db = UserDefaults.standard
    
    for i in 0..<timeboxData.activeTimebox.count {
        if(timeboxData.activeTimebox.count == 1) {
            timeboxData.activeTimebox = [
                Timebox(activityName: "Start adding timebox", startTime: Date(), endTime: Date(), reminder: "off", description: "This timebox cannot be deleted manually, it will remove itself once you've added at least one timebox", isFinished: true)
            ]
            break
        }
        if(timeboxData.activeTimebox[i].id == timeboxId) {
            timeboxData.activeTimebox.remove(at: i)
            break
        }
    }
    for i in 0..<db.activeTimebox.count {
        if(db.activeTimebox[i].id == timeboxId) {
            db.activeTimebox.remove(at: i)
            break
        }
    }
    
}



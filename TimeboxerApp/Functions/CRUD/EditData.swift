//
//  EditData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation
import UserNotifications

func editData(_ tb: Timebox) {
    let timeboxId = tb.id
    let timeboxData = TimeboxData.shared
    let db = UserDefaults.standard
    
    for i in 0..<timeboxData.activeTimebox.count {
        if(timeboxData.activeTimebox[i].id == timeboxId) {
            timeboxData.activeTimebox[i] = tb
            break
        }
    }
    for i in 0..<db.activeTimebox.count {
        if(db.activeTimebox[i].id == timeboxId) {
            db.activeTimebox[i] = tb
            break
        }
    }
    
    UNUserNotificationCenter.current().getPendingNotificationRequests { (notificationRequests) in
       var identifiers: [String] = []
       for notification:UNNotificationRequest in notificationRequests {
           if notification.identifier == timeboxId?.uuidString {
               identifiers.append(notification.identifier)
               break
           }
       }
       UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: identifiers)
    }
    
    sendNotification(id: tb.id!, endTime: tb.endTime)
}

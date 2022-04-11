//
//  NotificationDelivery.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 11/04/22.
//

import Foundation
import UserNotifications
import SwiftUI

func sendNotification(id:UUID, endTime: Date) {
    //prep
    let calendar = Calendar.current
    
    // Content creation
    
    let content = UNMutableNotificationContent()
    content.title = "Take a break"
    content.body = "You have finished a task!"
    
    // trigger
    
    let trigger = UNCalendarNotificationTrigger(dateMatching: calendar.dateComponents(
        [.hour, .minute],
        from: endTime
    ),repeats: false)
    
    // deliver a request
    let deliver = UNNotificationRequest(identifier: id.uuidString, content: content, trigger: trigger)
    
    UNUserNotificationCenter.current().add(deliver)
}

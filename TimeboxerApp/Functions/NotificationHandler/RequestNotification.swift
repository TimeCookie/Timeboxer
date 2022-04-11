//
//  RequestNotification.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 10/04/22.
//

import Foundation
import UserNotifications
import SwiftUI


func requestNotification() {
    let center = UNUserNotificationCenter.current()
    center.requestAuthorization(options:[.alert, .badge, .sound])  {
        granted, error in
        if granted {
            print("Notification Allowed")
        } else if let error = error {
            print(error.localizedDescription)
        }
    }
}

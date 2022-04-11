//
//  TimeboxerAppApp.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 04/04/22.
//

import SwiftUI

@main
struct TimeboxerAppApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

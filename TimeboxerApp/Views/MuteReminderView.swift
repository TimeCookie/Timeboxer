//
//  MuteReminderView.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 05/04/22.
//

import SwiftUI

struct MuteReminderView: View {
    
    @State private var sessionReminder:Bool = true
    @State private var allReminder:Bool = true
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $sessionReminder) {
                    Text("Mute the reminders for this session")
                }
                .tint(.blue)
                Toggle(isOn: $allReminder) {
                    Text("Mute all reminders")
                }
                .tint(.blue)
                
            }
            .navigationTitle("Mute Reminders")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .onAppear{
            requestNotification()
        }
    }
}

struct MuteReminderView_Previews: PreviewProvider {

    static var previews: some View {
        MuteReminderView()
    }
}

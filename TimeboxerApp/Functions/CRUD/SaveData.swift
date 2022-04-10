//
//  SaveData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 06/04/22.
//

import Foundation


func saveData(_ tb:Timebox) {
    
    let timeboxData: TimeboxData = TimeboxData.shared

    if(timeboxData.activeTimebox.count == 1) {
        timeboxData.activeTimebox = []
    }
    
    timeboxData.activeTimebox.append(tb)
    print(timeboxData.activeTimebox)
//    UserDefaults.standard.removeObject(forKey: "USERNAME_KEY")
//    UserDefaults.standard.setValue(activeTimebox,forKey: "TIMEBOX_DATA")
}


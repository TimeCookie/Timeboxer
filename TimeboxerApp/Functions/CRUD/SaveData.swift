//
//  SaveData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 06/04/22.
//

import Foundation


func saveData(_ tb:Timebox) {
    
    let timeboxData: TimeboxData = TimeboxData.shared
    let localStorage = UserDefaults.standard

    if(timeboxData.activeTimebox[0].isFinished == true) {
        timeboxData.activeTimebox.remove(at: 0)
    }
    
    localStorage.activeTimebox.append(tb)
    timeboxData.activeTimebox.append(tb)
    
}


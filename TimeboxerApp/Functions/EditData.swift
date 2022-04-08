//
//  EditData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation

func editData(_ tb: Timebox) {
    let timeboxId = tb.id
    let timeboxData = TimeboxData.shared
    
    for i in 0..<timeboxData.activeTimebox.count {
        if(timeboxData.activeTimebox[i].id == timeboxId) {
            timeboxData.activeTimebox[i] = tb
            break
        }
    }
    // Adds UserDefault
}

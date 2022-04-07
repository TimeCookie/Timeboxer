//
//  SaveData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 06/04/22.
//

import Foundation


func saveData(_ tb:Timebox) {

    TimeboxData.shared.activeTimebox.append(tb)
//    UserDefaults.standard.setValue(activeTimebox,forKey: "TIMEBOX_DATA")
}


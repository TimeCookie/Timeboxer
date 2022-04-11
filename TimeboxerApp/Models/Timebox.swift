//
//  Timebox.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 06/04/22.
//

import Foundation

extension UserDefaults {
    var activeTimebox: [Timebox] {
        get {
            guard let data = UserDefaults.standard.data(forKey: "ACTIVE_TIMEBOX") else { return [] }
            return (try? PropertyListDecoder().decode([Timebox].self,from:data)) ?? []
        }
        set {
            UserDefaults.standard.set(try? PropertyListEncoder().encode(newValue), forKey: "ACTIVE_TIMEBOX")
        }
    }
}

struct Timebox: Identifiable, Codable {
    var id:UUID?
    var activityName: String
    var startTime: Date
    var endTime: Date
    var reminder: String
    var description: String
    var isFinished: Bool
    
}

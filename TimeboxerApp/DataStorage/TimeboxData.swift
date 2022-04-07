//
//  TimeboxData.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation

class TimeboxData: ObservableObject {
    static let shared = TimeboxData()
    
    @Published var activeTimebox: [Timebox] = []
}

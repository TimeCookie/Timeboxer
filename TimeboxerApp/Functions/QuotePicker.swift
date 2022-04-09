//
//  QuotePicker.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 08/04/22.
//

import Foundation

func quotePicker() -> String {
    let rng: Int = Int.random(in: 0..<quotes.count)
    let selectedQuote = quotes[rng]
    
    return selectedQuote
}

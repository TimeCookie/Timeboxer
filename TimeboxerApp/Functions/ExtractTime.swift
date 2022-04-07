//
//  ExtractTime.swift
//  TimeboxerApp
//
//  Created by Marvin Christian on 07/04/22.
//

import Foundation

func ExtractTime(extractMode: String, el: Date) -> String {
    var components: [Int] = []
    var extractedTime: String = ""
    
    
    let extractor = Calendar.current
    
    switch extractMode {
        case "dd":
            components.append(extractor.component(.day, from: el))
        case "MM":
            components.append(extractor.component(.month, from: el))
        case "yyyy":
            components.append(extractor.component(.year, from: el))
        case "hh":
            components.append(extractor.component(.hour, from: el))
        case "mm":
            components.append(extractor.component(.minute, from: el))
        case "ss":
            components.append(extractor.component(.second, from:el))
        case "hh:mm":
            components.append(extractor.component(.hour, from:el))
            components.append(extractor.component(.minute, from:el))
        case "hh:mm:ss":
            components.append(extractor.component(.hour, from:el))
            components.append(extractor.component(.minute, from:el))
            components.append(extractor.component(.second, from:el))
        default:
            print("")
    }
    
    if(components.count == 1) {
        extractedTime = String(components[0])
    } else {
        for i in 0..<components.count {
            extractedTime = (i == components.count-1) ? (extractedTime + "\(components[i])") : (extractedTime + "\(components[i]):")
        }
    }
    return extractedTime
}

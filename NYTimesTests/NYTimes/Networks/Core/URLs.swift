//
//  URLs.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Foundation

enum URLs: String {
    
    // MARK: Base
    case NEWS
    case KEY

    var value: String {
        return Bundle.main.infoDictionary?[self.rawValue] as? String ?? ""
    }
}

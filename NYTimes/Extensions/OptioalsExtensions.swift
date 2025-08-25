//
//  OptioalsExtensions.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//

import Foundation

//MARK: - Optional
extension Optional where Wrapped == Int {
    
    private var timestampInSeconds: Double? {
        guard let value = self else { return nil }
        // If the timestamp is too large, assume milliseconds
        return value > 1_000_000_000_000 ? Double(value) / 1000 : Double(value)
    }
    
    var timeAgo: String {
        guard let seconds = timestampInSeconds else { return "-" }
        let date = Date(timeIntervalSince1970: seconds)
        return date.timeAgo
    }
}

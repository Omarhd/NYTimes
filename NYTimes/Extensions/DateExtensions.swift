//
//  DateExtensions.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//

import Foundation

//MARK: - Date
extension Date {
    var timeAgo: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}

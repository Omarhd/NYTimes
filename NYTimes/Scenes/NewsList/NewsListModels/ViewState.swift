//
//  ViewState.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import Foundation

enum ViewState {
    case loading
    case loaded
    case error
    
    var stateDescription: String {
        switch self {
        case .loading:
            return "Loading..."
        case .loaded:
            return "Loaded"
        case .error:
            return "Error"
        }
    }
}

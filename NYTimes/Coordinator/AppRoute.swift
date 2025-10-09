//
//  AppRoute.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//

import SwiftUI

enum AppRoute: Hashable {
    case newsDetails(NewsDetailsInput)
    
    @ViewBuilder
    func destinationView(coordinator: AppCoordinator) -> some View {
        switch self {
        case .newsDetails(let input):
            NewsDetailsConfigurator.start(input: input)
        }
    }
}

extension AppRoute: Identifiable {
    var id: String {
        switch self {
        case .newsDetails(let input): return "newsDetails-\(input)"
        }
    }
}

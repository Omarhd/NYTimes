//
//  AppCoordinator.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//

import Foundation

class AppCoordinator: ObservableObject {
    
    @Published var path: [AppRoute] = []
    @Published var sheetRoute: AppRoute? = nil

    // MARK: - Navigation Methods
    func push(_ route: AppRoute) {
        path.append(route)
    }

    func pop() {
        _ = path.popLast()
    }

    func popToRoot() {
        path.removeAll()
    }

    // MARK: - Sheet Methods
    func presentSheet(_ route: AppRoute) {
        sheetRoute = route
    }

    func dismissSheet() {
        sheetRoute = nil
    }
}

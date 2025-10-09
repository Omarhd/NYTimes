//
//  TabBarModel.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

enum TabItem: CaseIterable {
    case home
    case settings
    case profile

    var title: String {
        switch self {
        case .home: return "Home"
        case .settings: return "Settings"
        case .profile: return "Profile"
        }
    }

    var iconName: String {
        switch self {
        case .home: return "house"
        case .settings: return "gear"
        case .profile: return "person"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .home: NewsListConfigurator.start(input: .init())
        case .settings: Text("Settings")
        case .profile: Text("Profile")
        }
    }
}


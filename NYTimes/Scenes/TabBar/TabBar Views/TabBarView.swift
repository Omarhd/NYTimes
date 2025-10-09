//
//  TabBarView.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

struct TabBarView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: TabBarViewModel
    
    // MARK: - Body
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            ForEach(viewModel.tabs, id: \.self) { tab in
                tab.view
                    .tabItem {
                        Image(systemName: tab.iconName)
                        Text(tab.title)
                    }
                    .tag(tab)
            }
        }
    }
}
 

//
//  NewsListView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

struct NewsListView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: NewsListViewModel
    @StateObject var coordinator: AppCoordinator
    
    // MARK: - Body
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack(spacing: 0) {
                NewsNavigationView() // : Navigation Bar View
                
                ScrollView(.vertical, showsIndicators: false) { // : Actual News Scroll View
                    ForEach(viewModel.news, id: \.hashValue) { news in
                        NewsRowView(news: news)
                            .onTapGesture {
                                let input = NewsDetailsInput(news: news)
                                coordinator.push(.newsDetails(input))
                            }
                    }
                }
            }
            .navigationDestination(for: AppRoute.self) { route in
                route.destinationView(coordinator: coordinator)
            }
        }
        .environmentObject(coordinator)
        .refreshable {
            viewModel.loadNews()
        }
    }
}

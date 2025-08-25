//
//  NewsDetailsView.swift
//  TokenExplorer
//
//  Created by Omar Abdulrahman on 04/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

struct NewsDetailsView: View {
    
    // MARK: - Properties
    @StateObject var viewModel: NewsDetailsViewModel

    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            NewsDetailsNavigationBarView(title: "Details", news: viewModel.news)
                .zIndex(1)
            
            NewsDetailsContentView(newsTitle: viewModel.news?.title,
                                   date: viewModel.news?.time,
                                   newsContent: viewModel.news?.content)
        }
        .background(Color.backgroundSecondary)
        .refreshable {
            viewModel.loadData()
        }
    }
}

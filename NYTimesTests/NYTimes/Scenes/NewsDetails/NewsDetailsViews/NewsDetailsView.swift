//
//  NewsDetailsView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

struct NewsDetailsView: View {
    
    // MARK: - Properties
    @ObservedObject var viewModel: NewsDetailsViewModel
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.vertical, showsIndicators: false) { // : Actual News Details Scroll View
                VStack(alignment: .leading, spacing: 16) {
                    if let imageUrl = viewModel.news?.newsImageURL {
                        NewsHeaderView(imageURL: imageUrl)
                    }
                    
                    NewsContentView(news: viewModel.news)
                }
            }
        }
    }
}

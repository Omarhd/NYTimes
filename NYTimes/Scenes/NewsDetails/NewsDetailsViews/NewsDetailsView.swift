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
        VStack {
            Text(viewModel.title)
            // Bind your view to the ViewModel
        }
        .onAppear {
            viewModel.loadData()
        }
    }
}

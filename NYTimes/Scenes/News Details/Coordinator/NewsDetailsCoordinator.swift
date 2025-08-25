//
//  NewsDetailsCoordinator.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import SwiftUI

class NewsDetailsCoordinator: ObservableObject {
    
    class func start(input: NewsDetailsInput) -> some View {
        let repository = NewsDetailsRepository(input: input)
        let useCase = NewsDetailsUseCase(repository: repository)
        let viewModel = NewsDetailsViewModel(useCase: useCase)
        let view = NewsDetailsView(viewModel: viewModel)
            .toolbar(.hidden, for: .tabBar)
            .toolbar(.hidden, for: .navigationBar)

        return view
    }
}
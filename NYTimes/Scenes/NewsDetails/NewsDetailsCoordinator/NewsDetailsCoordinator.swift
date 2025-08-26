//
//  NewsDetailsCoordinator.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

class NewsDetailsCoordinator: ObservableObject {
    
    class func start(input: NewsDetailsInput) -> some View {
        let repository = NewsDetailsRepository(input: input)
        let useCase = NewsDetailsUseCase(repository: repository)
        let viewModel = NewsDetailsViewModel(useCase: useCase)
        let view = NewsDetailsView(viewModel: viewModel)
        return view
    }
}

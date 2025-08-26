//
//  NewsListCoordinator.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

class NewsListCoordinator: ObservableObject {
    
    class func start(input: NewsListInput) -> some View {
        let coordinator = AppCoordinator()
        let repository = NewsListRepository(input: input)
        let useCase = NewsListUseCase(repository: repository)
        let viewModel = NewsListViewModel(useCase: useCase)
        let view = NewsListView(viewModel: viewModel, coordinator: coordinator)
            .environmentObject(coordinator)

        return view
    }
}

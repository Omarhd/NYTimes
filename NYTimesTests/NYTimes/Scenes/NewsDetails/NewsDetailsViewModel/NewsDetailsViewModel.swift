//
//  NewsDetailsViewModel.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import Combine

class NewsDetailsViewModel: ObservableObject {
   
    // MARK: - Properties
    private let useCase: NewsDetailsUseCaseProtocol
    @Published var news: News?

    // MARK: - Init
    init(useCase: NewsDetailsUseCaseProtocol) {
        self.useCase = useCase
        loadNewsDetails()
    }

    // MARK: - Methods
    private func loadNewsDetails() {
        news = useCase.execute()
    }
}



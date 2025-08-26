//
//  NewsListUseCases.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class NewsListUseCase: NewsListUseCaseProtocol {
    
    // MARK: - Properties
    private let repository: NewsListRepositoryProtocol
    private let key = URLs.KEY.value

    // MARK: - Init
    init(repository: NewsListRepositoryProtocol) {
        self.repository = repository
    }

    // MARK: - Methods
    func executeNews() async -> NewsResponse? {
        let parameters: NewsRequest = .init(apiKey: key)
        let news = try? await repository.fetchNewsData(with: parameters)
        return news
    }
}

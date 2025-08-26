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

    // MARK: - Init
    init(repository: NewsListRepositoryProtocol) {
        self.repository = repository
    }

    // MARK: - Methods
    func execute() -> [News] {
        return repository.fetchData()
    }
}

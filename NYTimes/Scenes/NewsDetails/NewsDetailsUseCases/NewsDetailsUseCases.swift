//
//  NewsDetailsUseCases.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class NewsDetailsUseCase: NewsDetailsUseCaseProtocol {
    
    // MARK: - Properties
    private let repository: NewsDetailsRepositoryProtocol

    // MARK: - Init
    init(repository: NewsDetailsRepositoryProtocol) {
        self.repository = repository
    }

    // MARK: - Methods
    func execute() -> [NewsDetailsModel] {
        return repository.fetchData()
    }
}

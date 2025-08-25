//
//  NewsDetailsUseCase.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
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
    func execute() -> News {
        return repository.fetchData()
    }
}

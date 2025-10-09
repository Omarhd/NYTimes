//
//  TabBarUseCases.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class TabBarUseCase: TabBarUseCaseProtocol {
    
    // MARK: - Properties
    private let repository: TabBarRepositoryProtocol

    // MARK: - Init
    init(repository: TabBarRepositoryProtocol) {
        self.repository = repository
    }

    // MARK: - Methods
    func execute() -> [TabItem] {
        return repository.fetchData()
    }
}

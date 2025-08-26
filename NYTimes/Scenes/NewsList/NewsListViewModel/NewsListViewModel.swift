//
//  NewsListViewModel.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import Combine

class NewsListViewModel: ObservableObject {
   
    // MARK: - Properties
    private let useCase: NewsListUseCaseProtocol
    @Published var title: String = ""

    // MARK: - Init
    init(useCase: NewsListUseCaseProtocol) {
        self.useCase = useCase
    }

    // MARK: - Methods
    func loadData() {
        _ = useCase.execute()
    }
}



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
    @Published var title: String = ""

    // MARK: - Init
    init(useCase: NewsDetailsUseCaseProtocol) {
        self.useCase = useCase
    }

    // MARK: - Methods
    func loadData() {
        let data = useCase.execute()
        title = data.first?.name ?? "No Data"
    }
}



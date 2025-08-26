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
    @Published var news: [News] = []
    @Published var state: ViewState = .loading

    // MARK: - Init
    init(useCase: NewsListUseCaseProtocol) {
        self.useCase = useCase
        loadNews()
    }

    // MARK: - Methods
    func loadNews() {
        Task {
            let newsResponse = await useCase.executeNews()
            await MainActor.run {
                state = newsResponse == nil ? .error : .loaded
                news = newsResponse?.results ?? []
            }
        }
    }
}

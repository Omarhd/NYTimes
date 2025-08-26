//
//  NewsListRepository.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class NewsListRepository: NewsListRepositoryProtocol {

    // MARK: - Properties
    let input: NewsListInput
    private let newsService: NewsService
    let newsBase = URLs.NEWS.value

    // MARK: Init
    init(input: NewsListInput, newsService: NewsService = .shared) {
        self.input = input
        self.newsService = newsService
    }
    
    func fetchNewsData(with params: NewsRequest) async throws -> NewsResponse? {
        guard let url = URL(string: newsBase) else { return nil }
        let news: NewsResponse = try await newsService.fetchWithParameters(from: url, query: params)
        return news
    }
}

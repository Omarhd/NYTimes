//
//  NewsDetailsRepository.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Foundation

class NewsDetailsRepository: NewsDetailsRepositoryProtocol {

    // MARK: - Properties
    let input: NewsDetailsInput

    // MARK: Init
    init(input: NewsDetailsInput) {
        self.input = input
    }
    
    func fetchData() -> News {
        return input.news
    }
}

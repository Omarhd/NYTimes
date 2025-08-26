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

    // MARK: Init
    init(input: NewsListInput) {
        self.input = input
    }
    
    func fetchData() -> [News] {
        return []
    }
}

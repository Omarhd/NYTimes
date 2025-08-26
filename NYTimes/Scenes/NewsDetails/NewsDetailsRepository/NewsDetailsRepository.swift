//
//  NewsDetailsRepository.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class NewsDetailsRepository: NewsDetailsRepositoryProtocol {

    // MARK: - Properties
    let input: NewsDetailsInput

    // MARK: Init
    init(input: NewsDetailsInput) {
        self.input = input
    }
    
    func fetchData() -> [NewsDetailsModel] {
        return [NewsDetailsModel(id: 1, name: "Sample Data")]
    }
}

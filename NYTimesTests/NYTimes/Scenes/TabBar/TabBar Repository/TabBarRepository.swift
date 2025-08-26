//
//  TabBarRepository.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class TabBarRepository: TabBarRepositoryProtocol {

    // MARK: - Properties
    let input: TabBarInput

    // MARK: Init
    init(input: TabBarInput) {
        self.input = input
    }
    
    func fetchData() -> [TabItem] {
        return TabItem.allCases
    }
}

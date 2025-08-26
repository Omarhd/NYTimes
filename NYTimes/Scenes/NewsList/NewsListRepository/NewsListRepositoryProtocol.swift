//
//  NewsListRepositoryProtocol.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol NewsListRepositoryProtocol {
    func fetchData() -> [News]
}

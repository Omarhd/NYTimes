//
//  NetworkRequestable.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Foundation

protocol NetworkRequestable {
    func execute<T: Decodable>(request: URLRequest) async throws -> T
}

//
//  RequestError.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Foundation

enum RequestError: Error {
    case noResponse
    case badRequest
    case unauthorized
    case notFound
    case apiError(String)
    case decode(Data)
    case unknown
}

extension RequestError: Equatable {
    static func == (lhs: RequestError, rhs: RequestError) -> Bool {
        switch (lhs, rhs) {
        case (.noResponse, .noResponse),
             (.badRequest, .badRequest),
             (.unauthorized, .unauthorized),
             (.notFound, .notFound),
             (.unknown, .unknown):
            return true
        case (.decode, .decode):
            return true // ⚠️ you may want to compare the actual `Data` if useful
        case let (.apiError(a), .apiError(b)):
            return a == b
        default:
            return false
        }
    }
}

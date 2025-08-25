//
//  NetworkService.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Foundation

class NetworkService: NetworkRequestable {
    
    private let session: URLSession
    
    init(session: URLSession = URLSession(configuration: .default)) {
        self.session = session
    }
    
    func execute<T: Decodable>(request: URLRequest) async throws -> T {
        debugPrint("request: \(request)")
        let (data, response) = try await session.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw RequestError.noResponse
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
            throw handleResponseError(data: data, statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            debugPrint("Decoding error: \(error)")
            throw error
        }
    }
    
    private func handleResponseError(data: Data, statusCode: Int) -> RequestError {
        switch statusCode {
        case 400:
            return .badRequest
        case 401:
            return .unauthorized
        case 422:
            return .decode(data)
        case 404...429:
            if let errorMessage = String(data: data, encoding: .utf8) {
                return .apiError(errorMessage)
            } else {
                return .notFound
            }
        default:
            return .unknown
        }
    }
}

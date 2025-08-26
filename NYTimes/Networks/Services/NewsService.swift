//
//  TRONSession.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Foundation

final class NewsService {
    
    private let networkService: NetworkRequestable
    static let shared = NewsService()
    
    private init(networkService: NetworkRequestable = NetworkService()) {
        self.networkService = networkService
    }
    
    // MARK: - Without Parameters
    func fetch<T: Decodable>(from url: URL) async throws -> T {
        let request: URLRequest = URLRequest(url: url)
        return try await networkService.execute(request: request)
    }
    
    // MARK: - With Parameters
    func fetchWithParameters<T: Decodable, Q: Encodable>(from url: URL, query: Q) async throws -> T {
        let request = createRequest(url: url, queryParameters: query)
        return try await networkService.execute(request: request)
    }
    
    // MARK: - Request Builder
    private func createRequest<Q: Encodable>(url: URL, queryParameters: Q) -> URLRequest {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        
        let queryItems = encodeQueryParameters(queryParameters) ?? []
        components.queryItems = queryItems
        
        guard let finalURL = components.url else {
            fatalError("Failed to create URL from components")
        }
        
        var request = URLRequest(url: finalURL)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return request
    }
    
    private func encodeQueryParameters<Q: Encodable>(_ parameters: Q) -> [URLQueryItem]? {
        do {
            let data = try JSONEncoder().encode(parameters)
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return json.map { URLQueryItem(name: $0.key, value: "\($0.value)") }
            }
        } catch {
            print("Error encoding query parameters: \(error)")
        }
        return nil
    }
}

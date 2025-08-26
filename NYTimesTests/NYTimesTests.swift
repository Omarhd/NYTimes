//
//  NYTimesTests.swift
//  NYTimesTests
//
//  Created by Omar Abdulrahman on 25/08/2025.
//

import XCTest
@testable import NYTimes

final class NYTimesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() async throws {
        // Locate the local news.json file in the test bundle
        let bundle = Bundle(for: type(of: self))
        guard let url = bundle.url(forResource: "news", withExtension: "json") else {
            XCTFail("Missing news.json file in bundle")
            return
        }
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let newsResponse = try decoder.decode(NewsResponse.self, from: data)
        // Assert that results is not nil and has at least one item
        XCTAssertNotNil(newsResponse.results, "newsResponse.results should not be nil")
        // Check first news item
        let firstItem = newsResponse.results?[0]
        if let media = firstItem?.media, !media.isEmpty {
            XCTAssertNotNil(firstItem?.newsImageURL, "newsImageURL should not be nil if media exists")
        }
    }
}

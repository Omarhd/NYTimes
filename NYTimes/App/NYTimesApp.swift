//
//  NYTimesApp.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//

import SwiftUI

@main
struct NYTimesApp: App {
    var body: some Scene {
        WindowGroup {
            let news: News = .init(id: 0, title: "", content: "", time: 0, pageID: 1, imgs: "", type: 0, newsURL: "", publisher: "")
            NewsDetailsCoordinator.start(input: .init(news: news))
        }
    }
}

//
//  NewsDetailsContentView.swift
//  TokenExplorer
//
//  Created by Omar Abdulrahman on 04/08/2025.
//

import SwiftUI

struct NewsDetailsContentView: View {
    
    // MARK: - Properties
    let newsTitle: String?
    let date: Int?
    let newsContent: String?
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 12) {
                NewsDetailsHeaderView(title: newsTitle, date: date)
                
                Text(newsContent ?? "")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.secondary)

            }
            .padding()
        }
    }
}

#Preview {
    NewsDetailsContentView(newsTitle: "", date: 0, newsContent: "")
}

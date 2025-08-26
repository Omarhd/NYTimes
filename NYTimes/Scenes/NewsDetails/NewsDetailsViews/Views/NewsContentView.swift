//
//  NewsContentView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import SwiftUI

struct NewsContentView: View {
    
    // MARK: - Properties
    var news: News?
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // : Author & Date View
            HStack {
                Text(news?.byline ?? "")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                Spacer()
                HStack(spacing: 8) {
                    Image(systemName: "calendar")
                    Text(news?.publishedDate ?? "")
                }
                .font(.caption2)
                .foregroundColor(.secondary)
            }
            
            VStack(alignment: .leading, spacing: 16) {
                Text(news?.title ?? "")
                    .font(.headline)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                
                Divider()
                
                Text(news?.abstract ?? "")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    NewsContentView()
}

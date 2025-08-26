//
//  NewsRowView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import SwiftUI

struct NewsRowView: View {
    
    // MARK: - Properties
    let news: News?
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 16) {
            AsyncImageView(urlString: news?.newsImageURL)
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(news?.title ?? "")
                    .font(.headline)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(news?.abstract ?? "")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
                
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
            }
                        
            Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .frame(height: 100)
    }
}

#Preview {
    NewsRowView(news: nil)
}

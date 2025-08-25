//
//  NewsDetailsHeaderView.swift
//  TokenExplorer
//
//  Created by Omar Abdulrahman on 04/08/2025.
//

import SwiftUI

struct NewsDetailsHeaderView: View {
    
    // MARK: - Properties
    let title: String?
    let date: Int?
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title ?? "-")
                .font(.system(size: 20, weight: .semibold))
                .lineLimit(3)

            Text(date.timeAgo)
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(.secondary)
                .lineLimit(1)

            Divider()
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    NewsDetailsHeaderView(title: "", date: 0)
}

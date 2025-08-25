//
//  NewsDetailsNavigationBarView.swift
//  TokenExplorer
//
//  Created by Omar Abdulrahman on 04/08/2025.
//

import SwiftUI

struct NewsDetailsNavigationBarView: View {
    
    // MARK: - Properties
    let title: String?
    let news: News?
    @Environment(\.dismiss) var dismiss // Access the dismiss action
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(.backButton)
                    .foregroundColor(.primary)
                    .onTapGesture {
                        dismiss()
                    }
                
                Spacer()
                
                Text(title ?? "")
                    .font(.system(size: 16, weight: .semibold))
                
                Spacer()
                
            }
            .padding(.horizontal)
            .frame(height: 48)
            
            Divider()
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    NewsDetailsNavigationBarView(title: "Details", news: nil)
}

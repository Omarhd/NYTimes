//
//  NewsNavigationView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import SwiftUI

struct NewsNavigationView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        HStack {
            HStack(spacing: 16) {
                Button(action: {}) {
                    Image(systemName: "list.bullet")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                
                Text("New York Times Popular")
            }
            .foregroundColor(.white)

            Spacer()
            
            HStack(spacing: 16) {
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
                
                Button(action: {}) {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
            }
            .foregroundColor(.white)
        }
        .padding(16)
        .background(Color.navigation)
    }
}

#Preview {
    NewsNavigationView()
}

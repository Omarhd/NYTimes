//
//  NewsHeaderView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import SwiftUI

struct NewsHeaderView: View {
    
    // MARK: - Properties
    var imageURL: String?
    @EnvironmentObject private var coordinator: AppCoordinator
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            let offsetY = geometry.frame(in: .global).minY
            let height = offsetY > 0 ? 280 + offsetY : 280
            
            ZStack(alignment: .topLeading) {
                AsyncImageView(urlString: imageURL)
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: height)
                    .clipped()
                    .overlay(Color.black.opacity(0.2)) // Optional dark overlay for contrast

                // Back Button
                Button(action: {
                    coordinator.pop()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.6))
                        .clipShape(Circle())
                        .shadow(radius: 4)
                }
                .padding(.leading, 16)
                .padding(.top, 50) // Adjust for safe area / notch
            }
            .offset(y: offsetY > 0 ? -offsetY : 0)
        }
        .frame(height: 280)
    }
}

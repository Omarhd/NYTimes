//
//  AsyncImageView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//


import SwiftUI
import Kingfisher

struct AsyncImageView: View {
    
    // MARK: - Properties
    let urlString: String?
    @State private var loadFailed = false
    
    // MARK: - Body
    var body: some View {
        if let source = urlString, let url = URL(string: source), url.scheme?.hasPrefix("http") == true {
            Group {
                if loadFailed {
                    Image(systemName: "newspaper.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                } else {
                    KFImage(url)
                        .placeholder { ProgressView() }
                        .onFailure { _ in
                            loadFailed = true
                        }
                        .resizable()
                        .scaledToFill()
                        .clipped()
                }
            }
        } else if let source = urlString {
            Image(source)
                .resizable()
                .scaledToFill()
                .clipped()
        } else {
            Image(systemName: "newspaper.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
        }
    }
}

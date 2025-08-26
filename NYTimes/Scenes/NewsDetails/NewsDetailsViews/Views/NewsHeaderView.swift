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
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            let offsetY = geometry.frame(in: .global).minY
            let height = offsetY > 0 ? 280 + offsetY : 280
            
            ZStack(alignment: .bottomLeading) {
                AsyncImageView(urlString: imageURL)
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: height)
                    .clipped()
                
                } // :- END OF ZSTACK
            .offset(y: offsetY > 0 ? -offsetY : 0)
        } // :- END OF GEOMETRY READER
        .frame(height: 280)
    } // :- END OF BODY
}

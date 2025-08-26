//
//  NavigationView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import SwiftUI

struct NavigationView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .scaledToFit()
            }
                
                Text("New York Times Popular")
                
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .scaledToFit()
            }
        }
        .background(Color.navigation)
    }
}

#Preview {
    NavigationView()
}

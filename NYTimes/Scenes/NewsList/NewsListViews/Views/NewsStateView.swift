//
//  NewsStateView.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//

import SwiftUI

struct NewsStateView: View {
    
    // MARK: - Properties
    let state: ViewState
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Text(state.stateDescription)
            Spacer()
        }
    }
}

#Preview {
    NewsStateView(state: .loading)
}

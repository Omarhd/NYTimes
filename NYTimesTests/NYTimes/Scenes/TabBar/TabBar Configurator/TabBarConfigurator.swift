//
//  TabBarConfigurator.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import SwiftUI

class TabBarConfigurator {
    
    class func start(input: TabBarInput) -> some View {
        let repository = TabBarRepository(input: input)
        let useCase = TabBarUseCase(repository: repository)
        let viewModel = TabBarViewModel(useCase: useCase)
        let view = TabBarView(viewModel: viewModel)
        return view
    }
}

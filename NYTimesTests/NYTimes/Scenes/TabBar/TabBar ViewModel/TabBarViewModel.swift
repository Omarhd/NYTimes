//
//  TabBarViewModel.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
import Combine

class TabBarViewModel: ObservableObject {
   
    // MARK: - Properties
    private let useCase: TabBarUseCaseProtocol
    @Published var tabs: [TabItem] = []
    @Published var selectedTab: TabItem = .home

    // MARK: - Init
    init(useCase: TabBarUseCaseProtocol) {
        self.useCase = useCase
        loadData()
    }

    // MARK: - Methods
    private func loadData() {
        tabs = useCase.execute()
    }
}



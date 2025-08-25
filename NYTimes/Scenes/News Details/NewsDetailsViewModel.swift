//
//  NewsDetailsViewModel.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 25/08/2025.
//


import Combine

class NewsDetailsViewModel: ObservableObject {
   
    // MARK: - Properties
    private let useCase: NewsDetailsUseCaseProtocol
    @Published var news: News?

    // MARK: - Init
    init(useCase: NewsDetailsUseCaseProtocol) {
        self.useCase = useCase
        loadData()
    }

    // MARK: - Methods
    func loadData() {
        news = useCase.execute()
    }
}

struct News: Decodable, Hashable, Identifiable {
    let id: Int?
    let title, content: String?
    let time, pageID: Int?
    let imgs: String?
    let type: Int?
    let newsURL: String?
    let publisher: String?

    enum CodingKeys: String, CodingKey {
        case id, title, content, time
        case pageID = "pageId"
        case imgs, type
        case newsURL = "newsUrl"
        case publisher
    }
}

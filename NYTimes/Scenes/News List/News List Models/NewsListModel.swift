//
//  NewsListModel.swift
//  NYTimes
//
//  Created by Omar Abdulrahman on 26/08/2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

struct NewsRequest: Encodable {
    let apiKey: String
    
    enum CodingKeys: String, CodingKey {
        case apiKey = "api-key"
    }
}

// MARK: - News
struct NewsResponse: Decodable, Hashable {
    let status, copyright: String?
    let numResults: Int?
    let results: [News]?

    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
    }
}

// MARK: - Result
struct News: Decodable, Hashable {
    let uri: String?
    let url: String?
    let id, assetID: Int?
    let source: String?
    let publishedDate, updated, section, subsection: String?
    let nytdsection, adxKeywords: String?
    let byline: String?
    let type: String?
    let title, abstract: String?
    let desFacet, orgFacet, perFacet, geoFacet: [String]?
    let media: [Media]?
    let etaID: Int?

    enum CodingKeys: String, CodingKey {
        case uri, url, id
        case assetID = "asset_id"
        case source
        case publishedDate = "published_date"
        case updated, section, subsection, nytdsection
        case adxKeywords = "adx_keywords"
        case byline, type, title, abstract
        case desFacet = "des_facet"
        case orgFacet = "org_facet"
        case perFacet = "per_facet"
        case geoFacet = "geo_facet"
        case media
        case etaID = "eta_id"
    }
    
    var newsImageURL: String? {
        guard let firstMedia = media?.first else { return nil }
        guard let firstMediaMetadata = firstMedia.mediaMetadata?.first else { return nil }
        return firstMediaMetadata.url ?? ""
    }
}

// MARK: - Media
struct Media: Decodable, Hashable {
    let type: String?
    let subtype: String?
    let caption, copyright: String?
    let approvedForSyndication: Int?
    let mediaMetadata: [MediaMetadatum]?

    enum CodingKeys: String, CodingKey {
        case type, subtype, caption, copyright
        case approvedForSyndication = "approved_for_syndication"
        case mediaMetadata = "media-metadata"
    }
}

// MARK: - MediaMetadatum
struct MediaMetadatum: Decodable, Hashable {
    let url: String?
    let format: String?
    let height, width: Int?
}

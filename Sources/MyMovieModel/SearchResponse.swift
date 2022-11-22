//
//  SearchResponse.swift
//  MyMovie
//
//  Created by Naman Sharma on 17/11/22.
//

import Foundation

// MARK: - SearchResponse
public struct SearchResponse: Codable {
    public let page: Int
    public let results: [Movie]
    public let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

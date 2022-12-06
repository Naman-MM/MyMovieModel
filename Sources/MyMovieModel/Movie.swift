//
//  Movie.swift
//  MyMovie
//
//  Created by Naman Sharma on 09/11/22.
//

import Foundation

// MARK: - MoviesResponse
public struct MoviesResponse: Codable {
    public let results: [Movie]
}

// MARK: - Movie
public struct Movie: Codable, Identifiable, Hashable {
    public let adult: Bool
    public let imagePath,backdropPath: String?
    public let genreIDS: [Int]
    public let id: Int
    public let originalTitle, overview: String
    public let popularity: Double
    public let releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case imagePath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

extension Movie {

    public static let sample = Self.init()

    public var averageRating: String {
        String(format: "%.2f", voteAverage)
    }
    
    public init? () {
        self = Movie(adult: true, imagePath: "/wRKHUqYGrp3PO91mZVQ18xlwYzW.jpg", backdropPath: "/y5Z0WesTjvn59jP6yo459eUsbli.jpg", genreIDS: [27,53], id: 100000, originalTitle: "Demo Movie", overview: "After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art's evil intent.", popularity: 4608.567, releaseDate: "2022-10-06", title: "Demo Movie", video: false, voteAverage: 9.9, voteCount: 500)
    }
}

//
//  Genre.swift
//  MyMovie
//
//  Created by Naman Sharma on 14/11/22.
//

import Foundation

// MARK: - GenreResponse
public struct GenreResponse: Codable {
    public let genres: [Genre]
}

// MARK: - Genre
public struct Genre: Codable {
    public let id: Int
    public let name: String
}

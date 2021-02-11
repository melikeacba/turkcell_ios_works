//
//  PhotosData.swift
//  12-Days
//
//  Created by Melike Açba on 28.01.2021.
//

import Foundation

// MARK: - PhotosDatum
struct PhotosDatum: Codable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}

typealias PhotosData = [PhotosDatum]


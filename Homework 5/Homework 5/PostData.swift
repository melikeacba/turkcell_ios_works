//
//  PostData.swift
//  Homework 5
//
//  Created by Melike Açba on 2.02.2021.
//

import Foundation

struct PostDatum: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias PostData = [PostDatum]

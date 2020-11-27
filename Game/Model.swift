//
//  Model.swift
//  Game
//
//  Created by Mactop78 on 17/11/20.
//

import Foundation

struct Games: Codable {
    let results: [Game]

    enum Codingkeys: String, CodingKey {
        case results
     
    }
}

struct Game: Codable,Identifiable {
    let id: Int
    let name, released: String
    let backgroundImage: String
    let rating: Double
    let ratingTop: Int

    enum CodingKeys: String, CodingKey {
        case id,name,released
        case backgroundImage = "background_image"
        case rating
        case ratingTop = "rating_top"
    }
}
struct Desc: Codable {
    let descriptionRaw: String

    enum CodingKeys: String, CodingKey{
        case descriptionRaw = "description_raw"
    }
}


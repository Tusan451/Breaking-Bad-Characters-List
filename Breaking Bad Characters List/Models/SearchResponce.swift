//
//  SearchResponce.swift
//  Breaking Bad Characters List
//
//  Created by Olegio on 09.09.2022.
//

import Foundation

struct SearchResponce: Codable {
    var name: String
    var occupation: [String]
    var img: String
    var status: String
    var nickname: String
    
    init(for characterValue: SearchResponce) {
        name = characterValue.name
        occupation = characterValue.occupation
        img = characterValue.img
        status = characterValue.status
        nickname = characterValue.nickname
    }
    
    static func getCharacters(from value: [SearchResponce]) -> [SearchResponce] {
        
//        var characters: [SearchResponce] = []
//        for character in value {
//            let character = SearchResponce(for: character)
//            characters.append(character)
//        }
//        return characters
        
        return value.compactMap { SearchResponce(for: $0) }
    }
}

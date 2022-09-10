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
}

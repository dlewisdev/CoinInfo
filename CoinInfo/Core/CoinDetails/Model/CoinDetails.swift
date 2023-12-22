//
//  CoinDetails.swift
//  NetworkingTutorial
//
//  Created by Danielle Lewis on 10/26/23.
//

import Foundation

struct CoinDetails: Codable {
    let id: String
    let symbol: String
    let name: String
    let description: Description

}

struct Description: Codable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}

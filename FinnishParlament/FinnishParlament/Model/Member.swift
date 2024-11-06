//
//  Member.swift
//  FinnishParlament
//
//  Created by Anna Lindén on 6.11.2024.
//
import Foundation
import SwiftUI

struct Member: Identifiable, Codable {
    var id: Int
    var seatNumber: Int
    var last: String
    var first: String
    var party: String
    var minister: Bool
    var twitter: String
    var bornYear: Int
    var constituency: String
    var isFavorite: Bool = false
    
    var fullName: String {
        "\(first) \(last)"
    }
    
    var partyImage: Image {
        Image(party)
    }
    
    // Map JSON keys to struct properties
    enum CodingKeys: String, CodingKey {
        case id = "personNumber"
        case seatNumber
        case last
        case first
        case party
        case minister
        case twitter
        case bornYear
        case constituency
    }
}


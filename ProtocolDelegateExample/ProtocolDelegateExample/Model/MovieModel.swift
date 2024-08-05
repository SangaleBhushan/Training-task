//
//  MovieModel.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let poster: String
    let name: String
    let releaseDate: String
    var isLiked: Bool = false
}

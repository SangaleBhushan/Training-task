//
//  MovieDelegate.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import Foundation

protocol MovieDelegate: AnyObject {
    func movieLiked(_ movie: Movie, isLiked: Bool)
}

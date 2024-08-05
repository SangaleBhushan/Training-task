//
//  MovieCoordinator.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import SwiftUI

class MovieCoordinator: MovieDelegate {
    var viewModel: MovieViewModel
    
    init(viewModel: MovieViewModel) {
        self.viewModel = viewModel
        self.viewModel.delegate = self
    }
    
    func movieLiked(_ movie: Movie, isLiked: Bool) {
        // Handle the like action, e.g., show an alert
        print("Movie \(movie.name) is \(isLiked ? "liked" : "unliked")")
    }
}

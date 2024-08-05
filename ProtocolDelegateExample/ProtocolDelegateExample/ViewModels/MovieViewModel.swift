//
//  MovieViewModel.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import SwiftUI

class MovieViewModel: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(poster: "avengers-4", name: "Avengers-4", releaseDate: "3 May 2019"),
        Movie(poster: "star-wars", name: "Star Wars: Episode IX", releaseDate: "20 December 2019"),
        Movie(poster: "wonder-woman", name: "Wonder Woman 2", releaseDate: "1 November 2019")
    ]
    
    weak var delegate: MovieDelegate?
    
    func likeMovie(_ movie: Movie) {
        if let index = movies.firstIndex(where: { $0.id == movie.id }) {
            movies[index].isLiked.toggle()
            delegate?.movieLiked(movies[index], isLiked: movies[index].isLiked)
        }
    }
}

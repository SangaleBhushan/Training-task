//
//  MovieListView.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel: MovieViewModel
    var coordinator: MovieCoordinator

    init(viewModel: MovieViewModel) {
        self.viewModel = viewModel
        self.coordinator = MovieCoordinator(viewModel: viewModel)
    }

    var body: some View {
        NavigationView {
            List {
                ForEach($viewModel.movies) { $movie in
                    MovieRow(movie: $movie) { movie in
                        viewModel.likeMovie(movie)
                    }
                }
            }
            .navigationTitle("Movies")
        }
    }
}

let viewModel = MovieViewModel()
#Preview {
    MovieListView(viewModel: viewModel)
}
//MovieListView(viewModel: viewModel)

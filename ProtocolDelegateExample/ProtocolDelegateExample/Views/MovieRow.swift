//
//  MovieRow.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import SwiftUI

struct MovieRow: View {
    @Binding var movie: Movie
    var likeAction: (Movie) -> Void

    var body: some View {
        HStack {
            Image(movie.poster)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(movie.name)
                    .font(.headline)
                Text(movie.releaseDate)
                    .font(.subheadline)
            }
            Spacer()
            Button(action: {
                likeAction(movie)
            }) {
                Image(systemName: movie.isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                    .foregroundColor(movie.isLiked ? .blue : .gray)
            }
        }
        .padding()
    }
}

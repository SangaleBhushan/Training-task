//
//  ProtocolDelegateExampleApp.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import SwiftUI

@main
struct ProtocolDelegateExampleApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = MovieViewModel()
           MovieListView(viewModel: viewModel)
        }
    }
}

//
//  SwiftUIView.swift
//  ProtocolDelegateExample
//
//  Created by siddhatech on 02/08/24.
//

import SwiftUI

struct ParentView: View {
    @State private var showChild = false

    var body: some View {
        VStack {
            Text("Parent View")
                .padding()
            
            Button("Toggle Child View") {
                showChild.toggle()
            }
            
            if showChild {
                ChildView()
            }
        }
        .onAppear {
            print("ParentView appeared")
        }
        .onDisappear {
            print("ParentView disappeared")
        }
    }
}

struct ChildView: View {
    var body: some View {
        Text("Child View")
            .padding()
            .onAppear {
                print("ChildView appeared")
            }
            .onDisappear {
                print("ChildView disappeared")
            }
    }
}
#Preview{
    ParentView()
}
@main
struct SwiftUILifecycleApp: App {
    var body: some Scene {
        WindowGroup {
            ParentView()
        }
    }
}

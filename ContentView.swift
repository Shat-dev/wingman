//
//  ContentView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .background(Color.green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

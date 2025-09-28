//
//  HomeView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "house.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)
                
                Text("Welcome Home")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("This is your home dashboard")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
} 
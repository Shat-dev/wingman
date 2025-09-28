//
//  ContentView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            CoursesView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Courses")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(.blue)
    }
}

#Preview {
    ContentView()
}

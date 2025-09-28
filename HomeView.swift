//
//  HomeView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var greetingText = ""
    
    var body: some View {
        VStack {
            Text(greetingText) // greeting sits at top
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()

            Spacer() // pushes everything else down
        }
        .onAppear {
            updateGreeting()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            updateGreeting()
        }
    }
    
    private func updateGreeting() {
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 5..<12:
            greetingText = "Good Morning"
        case 12..<17:
            greetingText = "Good Afternoon"
        default:
            greetingText = "Good Evening"
        }
    }
}

#Preview {
    ContentView()
} 

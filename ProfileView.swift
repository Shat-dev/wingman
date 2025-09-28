//
//  ProfileView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Profile Image
            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.purple)
            
            // User Info
            VStack(spacing: 8) {
                Text("Arthur Wang")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("iOS Developer")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            
            // Profile Options
            VStack(spacing: 16) {
                ProfileOption(icon: "gear", title: "Settings")
                ProfileOption(icon: "bell", title: "Notifications")
                ProfileOption(icon: "questionmark.circle", title: "Help & Support")
                ProfileOption(icon: "rectangle.portrait.and.arrow.right", title: "Sign Out")
            }
            .padding(.top, 30)
            
            Spacer()
        }
        .padding()
        .background(Color(hex: "fafafa"))
        .navigationTitle("Profile")
    }
}

struct ProfileOption: View {
    let icon: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title3)
                .foregroundColor(.blue)
                .frame(width: 24)
            
            Text(title)
                .font(.body)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
} 
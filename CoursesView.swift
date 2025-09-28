//
//  CoursesView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "book.fill")
                .font(.system(size: 60))
                .foregroundColor(.green)
            
            Text("Courses")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Explore and manage your courses")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            
            // Placeholder for course list
            VStack(alignment: .leading, spacing: 12) {
                CourseRow(title: "SwiftUI Fundamentals", progress: 0.75)
                CourseRow(title: "iOS Development", progress: 0.45)
                CourseRow(title: "Advanced Swift", progress: 0.20)
            }
            .padding(.top)
            
            Spacer()
        }
        .padding()
        .background(Color(hex: "fafafa"))
        .navigationTitle("Courses")
    }
}

struct CourseRow: View {
    let title: String
    let progress: Double
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
            
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
            
            Text("\(Int(progress * 100))% Complete")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
} 
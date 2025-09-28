//
//  HomeView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.scenePhase) private var scenePhase
    @State private var greetingText = ""
    
    // Sample course data
    let sampleCourses = [
        Course(
            imageName: "Testdata1",
            title: "Swift Programming",
            progressText: "25% Complete",
            buttonLabel: "Continue"
        ),
        Course(
            imageName: "Testdata2",
            title: "iOS Development",
            progressText: "60% Complete",
            buttonLabel: "Continue"
        ),
        Course(
            imageName: "Testdata3",
            title: "SwiftUI Basics",
            progressText: "0% Complete",
            buttonLabel: "Start"
        )
    ]
    
    var body: some View {
        VStack {
            Text(greetingText) // greeting sits at top
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()

            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 120)
                    .padding(.horizontal)
                
                Text("Streaks Section")
                    .font(.headline)
                    .foregroundColor(.black)
            }
            
            // Course carousel
            CourseCarousel(courses: sampleCourses)
            
            Spacer()
        }
        .background(Color(hex: "fafafa"))
        .onAppear {
            updateGreeting()
        }
        .onChange(of: scenePhase) {
            if scenePhase == .active {
                updateGreeting()
            }
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

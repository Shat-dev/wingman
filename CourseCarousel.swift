//
//  CourseCarousel.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//
/*
CourseCarousel.swift - The main carousel component using:
    TabView with PageTabViewStyle for horizontal swiping
    Automatic page indicators (dots)
    Section header "Your Courses"
    Sample data for testing
*/

import SwiftUI

struct CourseCarousel: View {
    let courses: [Course]
    @State private var currentPage = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Swipeable course cards
            TabView(selection: $currentPage) {
                ForEach(0..<courses.count, id: \.self) { index in
                    CourseCardView(course: courses[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: UIScreen.main.bounds.width * 1.2)
            
            // Custom page indicators below the cards
            HStack(spacing: 8) {
                ForEach(0..<courses.count, id: \.self) { index in
                    Circle()
                        .fill(index == currentPage ? Color.primary : Color.primary.opacity(0.3))
                        .frame(width: 8, height: 8)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                currentPage = index
                            }
                        }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 8)
        }
        .background(Color(hex: "fafafa"))
    }
}

// Sample data for preview
extension CourseCarousel {
    static let sampleCourses = [
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
}

#Preview {
    CourseCarousel(courses: CourseCarousel.sampleCourses)
} 
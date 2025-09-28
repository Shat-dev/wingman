//
//  CourseCardView.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//CourseCardView.swift - A reusable card component featuring:
    /*Top image loaded from Assets.xcassets/images
    White-to-transparent gradient overlay for text readability
    Bold course title
    Progress text in secondary color
    Call-to-action button with blue background
    Card styling with rounded corners and shadow
*/

import SwiftUI

struct CourseCardView: View {
    let course: Course
    
    var body: some View {
        VStack(spacing: 0) {
            // Image with gradient overlay
            ZStack(alignment: .bottom) {
                Image(course.imageName)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 16))

            }
            
            // Content section
            VStack(alignment: .center, spacing: 12) {
                // Course title
                Text(course.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Progress text
                Text(course.progressText)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Call-to-action button
                Button(action: {
                    // Button action placeholder
                    print("Tapped \(course.buttonLabel) for \(course.title)")
                }) {
                    Text(course.buttonLabel)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
        .padding(.horizontal, 20)
    }
} 
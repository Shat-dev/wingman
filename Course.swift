//
//  Course.swift
//  Wingman
//
//  Created by Arthur Wang on 28/9/2025.
//
/*Course.swift - A data model with the required fields:
    imageName: String for the image asset name
    title: Course title
    progressText: Progress information
    buttonLabel: Action button text
    */

import Foundation

struct Course: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let progressText: String
    let buttonLabel: String
} 
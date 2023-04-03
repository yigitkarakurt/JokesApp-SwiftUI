//
//  JokesData.swift
//  JokesApp-SwiftUI
//
//  Created by Yigit Karakurt on 3.04.2023.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let type, setup, punchline: String
    let id: Int
}

//https://official-joke-api.appspot.com/random_joke

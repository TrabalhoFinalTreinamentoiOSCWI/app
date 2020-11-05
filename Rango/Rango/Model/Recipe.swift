//
//  Recipe.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

public struct Recipe: Codable {
    
    let id: Int
    let userId: Int
    let name: String
    let bio: String
    let dificulty: Dificult
    let time: Int
    let rating: Double
    let image: String
    let ingredients: [String]
    let steps: [String]
    
}

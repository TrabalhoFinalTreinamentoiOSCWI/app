//
//  User.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation


public struct User: Decodable {
    
    let id: Int
    let name: String
    let email: String
    let bio: String
    let image: String
    
}

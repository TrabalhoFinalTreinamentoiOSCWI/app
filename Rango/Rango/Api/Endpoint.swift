//
//  Endpoint.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

public enum Endpoint {
    
    case salads
    case meats
    case pasta
    case snack
    case fish
    case cakes
    case users(id: Int)
    case menu
    case categories
    
    var url: String {
        switch self {
        case .users(let id):
            return "users/\(id)"
        default:
            return "\(self)"
        }
    }
    
    var categoryValue: String? {
        return "\(self)"
    }
}

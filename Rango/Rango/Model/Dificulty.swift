//
//  Dificulty.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Rswift

enum Dificult: String, Codable {
    
    case easy
    case intermediate
    case hard
    
    var text: String {
        switch self {
            case .easy:
                return "Facin"
            case .intermediate:
                return "Meh"
            case .hard:
                return "Eita"
        }
    }
    
    var color: CGColor? {
        switch self {
            case .easy:
                return Colors.easy()?.cgColor
            case .intermediate:
                return Colors.intermediate()?.cgColor
            case .hard:
                return Colors.hard()?.cgColor
        }
    }
}

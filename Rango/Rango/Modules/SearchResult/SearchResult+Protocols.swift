//
//  SearchResult+Protocols.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

protocol SearchPresenterType {
    
    var categories: [Category] { get }
    
    func loadScreen()
    
}

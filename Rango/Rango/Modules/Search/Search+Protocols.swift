//
//  Search+Protocols.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

protocol SearchViewType: LoaderViewType {
    
    func reloadCollection()
    
}

protocol SearchPresenterType {
    
    var view: SearchViewType? { get set }
    
    var api: NetworkServiceInterface { get set }
    
    var categories: [Category] { get }
    
    func loadScreen()
    
}

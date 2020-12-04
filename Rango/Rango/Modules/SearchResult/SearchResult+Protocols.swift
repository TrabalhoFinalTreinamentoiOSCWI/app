//
//  SearchResult+Protocols.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

protocol SearchResultViewType: LoaderViewType {
    
    func showCards()
    
    func navigate(to viewController: UIViewController)
    
}

protocol SearchResultPresenterType {
    
    var view: SearchResultViewType? { get set }
    
    var api: NetworkServiceInterface { get set }
    
    var recipes: [Recipe] { get }
    
    func loadScreen(path: String)
    
    func onSelect(with indexPath: IndexPath)
    
}
